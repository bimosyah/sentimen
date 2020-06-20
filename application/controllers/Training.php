<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Training extends CI_Controller
{
    public function __construct() {
        parent::__construct();
        user_allow([]);
    }


    public function index()
    {
        $data['training_data'] = $this->db->get('training')->result();
        $this->load->view('admin/training/index',$data);
    }

    public function deleteall()
    {
        $this->db->truncate('training');
        redirect("Training");
    }
    public function import()
    {
        $this->load->library('form_validation');

        $this->form_validation->set_rules('excel', 'excel', 'trim');
        if ($this->form_validation->run() == false) {
            $this->load->view('admin/training/import');
        } else {
            $config['upload_path']          = './storage/excel_tmp/';
            $config['allowed_types']        = 'xls|xlsx';
            $config['max_size']             = 2000;

            $this->load->library('upload', $config);

            if (!$this->upload->do_upload('excel')) {
                echo json_encode([
                    'type' => "error",
                    'text' => $this->upload->display_errors('', ''),
                    'title' => "Import"
                ]);
            } else {
                $file_name = $this->upload->data('file_name');

                $this->load->library('excelreader');

                //choose format
                $inputFileName = './storage/excel_tmp/' . $file_name;
                $inputFileType = 'xls';
                $is_error = false;
                try {
                    $inputFileType = PHPExcel_IOFactory::identify($inputFileName);
                    $objReader = PHPExcel_IOFactory::createReader($inputFileType);
                    $objPHPExcel = $objReader->load($inputFileName);

                    $sheet = $objPHPExcel->getSheet(0);
                    $highestRow = $sheet->getHighestRow();
                    $highestColumn = $sheet->getHighestColumn();
                    $fetch_excel = $sheet->rangeToArray('B3:' . 'C' . $highestRow, NULL, TRUE, FALSE);
    
                    $data_excel = [];
                    foreach ($fetch_excel as $key => $value) {
                        if(trim($value['0']) != "" || trim($value['1']) != ""){
                            $data_excel[] = [
                                'teks' => trim($value['0']),
                                'klasifikasi' => trim($value['1']),
                            ];
                        }
                    }
                    $data['data_excel'] = $data_excel;
    
                    $count_entered = 0;
                    foreach ($data_excel as $key => $value) {
                        $this->db->insert('training', $value);
                        $count_entered++;
                    }
                    unlink($inputFileName);
    
                    echo json_encode([
                        'type' => "success",
                        'text' => "Data count : ".$count_entered,
                        'title' => "Import Berhasil",
                        'data' => $data_excel
                    ]);
    
                } catch (Exception $e) {
                    $is_error = true;
                    $data['error_info'] = 'Error loading file "' . pathinfo($inputFileName, PATHINFO_BASENAME) . '": ' . $e->getMessage();

                    echo json_encode([
                        'type' => "error",
                        'text' => $data['error_info'],
                        'title' => "Import"
                    ]);
                }

            }
        }
    }
}