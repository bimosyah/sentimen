<?php
defined('BASEPATH') or exit('No direct script access allowed');

class SVM extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        user_allow([]);

        ini_set('max_execution_time', -1);
        set_time_limit(-1);
        ini_set('memory_limit', '-1');
    }


    public function testing()
    {
        $data['testing_data'] = $this->db->get('testing')->result();
        $this->load->view('admin/svm/testing', $data);
    }

    public function testing_deleteall()
    {
        $this->db->truncate('testing');
        redirect("SVM/testing");
    }
    public function testing_import()
    {
        $config['upload_path']          = './storage/excel_tmp/';
        $config['allowed_types']        = 'xls|xlsx';
        $config['max_size']             = 2000;

        $this->load->library('upload', $config);

        if (!$this->upload->do_upload('excel')) {
            $this->session->set_flashdata('message', $this->upload->display_errors('', ''));
            redirect("SVM/testing");
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
                    $this->db->insert('testing', $value);
                    $count_entered++;
                }
                unlink($inputFileName);

                echo json_encode([
                    'type' => "success",
                    'text' => "Data count : " . $count_entered,
                    'title' => "Import Berhasil",
                    'data' => $data_excel
                ]);

                $this->session->set_flashdata('message', "Data count : " . $count_entered);
                redirect("SVM/testing");
            } catch (Exception $e) {
                $is_error = true;
                $data['error_info'] = 'Error loading file "' . pathinfo($inputFileName, PATHINFO_BASENAME) . '": ' . $e->getMessage();

                $this->session->set_flashdata('message', $data['error_info']);
            }
            
        }
    }

    public function preprocessing()
    {
        $this->load->library('preprocessing');
        $preprocessing = [];

        foreach ($this->db->get('training')->result() as $key => $value) {

            $this->preprocessing->process($value->teks);
            $detail = $this->preprocessing->detail;
            $preprocessing[] = [
                'jenis' => "training",
                'plain' => $detail['plain'],
                'lower' => $detail['lower'],
                'filter' => $detail['filter'],
                'stem' => $detail['stem'],
                'token' => implode(', ', $detail['token']),
                'stopword' => implode(', ', $detail['stopword']),
                'kata_baku' => implode(', ', $detail['kata_baku']),
            ];
        }

        foreach ($this->db->get('testing')->result() as $key => $value) {
            $this->preprocessing->process($value->teks);
            $detail = $this->preprocessing->detail;
            $preprocessing[] = [
                'jenis' => "testing",
                'plain' => $detail['plain'],
                'lower' => $detail['lower'],
                'filter' => $detail['filter'],
                'stem' => $detail['stem'],
                'token' => implode(', ', $detail['token']),
                'stopword' => implode(', ', $detail['stopword']),
                'kata_baku' => implode(', ', $detail['kata_baku']),
            ];
        }

        $data['data'] = $preprocessing;
        $this->load->view('admin/svm/preprocessing', $data);
    }

    public function tfidf()
    {
        $this->load->library('preprocessing');

        $testing = [];


        $db_training = $this->db
            ->get('training')
            ->result();
        $db_dataset = $this->db
            ->get('testing')
            ->result();

        $list_of_document = [];
        $keyDoc = [];
        foreach ($db_training as $key => $value) {
            $list_of_document[$key] = $this->preprocessing->process($value->teks);
            $keyDoc[$key] = "tr" . ($key + 1);
        }

        $old_key = $key + 1;

        foreach ($db_dataset as $key => $value) {
            $list_of_document[$key + $old_key] = $this->preprocessing->process($value->teks);
            $keyDoc[$key + $old_key] = "te" . ($key + 1);
        }


        ###end of me
        $all_text = [];
        foreach ($list_of_document as $key => $value) {
            $all_text = array_merge($all_text, $value);
        }

        $all_text =  array_unique($all_text);
        $all_text = array_values($all_text);

        #tfidf
        $matrix_word = [];
        $matrix_tf = [];
        foreach ($all_text as $key_word => $word) {

            foreach ($list_of_document as $key_text => $value_text) {
                $count_word = 0;
                foreach ($value_text as $k => $v) {
                    if ($word == $v) {
                        $count_word++;
                    }
                }
                $matrix_word[$key_word] = $word;
                $matrix_tf[$key_word][$key_text] = $count_word;
            }
        }

        $text_df = [];
        foreach ($matrix_tf as $key => $value) {
            $df = 0;
            foreach ($value as $k => $v) {
                if ($v > 0) {
                    $df++;
                }
            }
            $text_df[$key] = $df;
        }

        $text_dperdf = [];
        $text_idf = [];
        $text_idfplus1 = [];
        $word_count = count($list_of_document);
        foreach ($text_df as $key => $value) {
            $dperdf = $word_count / $value;
            $text_dperdf[$key] = $dperdf;
            $idf = log10($dperdf);
            $text_idf[$key] = $idf;
            $text_idfplus1[$key] = $idf + 1;
        }

        $matrix_tfidf = [];
        foreach ($matrix_tf as $key => $value) {
            foreach ($value as $k => $v) {
                $matrix_tfidf[$key][$k] = $v * $text_idfplus1[$key];
            }
        }

        $data['word'] = $matrix_word;
        $data['keyDoc'] = $keyDoc;
        $data['tf'] = $matrix_tf;
        $data['df'] = $text_df;
        $data['idf'] = $text_idf;
        $data['idfplus1'] = $text_idfplus1;
        $data['tfidf'] = $matrix_tfidf;

        $this->load->view('admin/svm/tfidf', $data);
    }

    public function result()
    {
        $this->load->library('form_validation');
        $this->form_validation->set_rules('pi', "Pi", "required");
        $data = [];
        if ($this->form_validation->run() == false) {
            $data['pi'] = 1;
            $data['lamda'] = 0.5;
            $data['c'] = 1;
            $data['gamma'] = 0.01;
            $data['max_iteration'] = 2;
            $data['count_training'] = $this->db->get('training')->num_rows();
            $data['count_testing'] = $this->db->get('testing')->num_rows();

            $this->load->view('admin/svm/result', $data);
        } else {
            ini_set('memory_limit', '-1');

            #lib
            $this->load->library('preprocessing');

            #init_post
            $pi = $this->input->post('pi');
            $lamda = $this->input->post('lamda');
            $c = $this->input->post('c');
            $gamma = $this->input->post('gamma');
            $max_iteration = $this->input->post('max_iteration');

            $text_list = [];

            $db_training = $this->db
                ->get('training')
                ->result();
            $db_testing = $this->db
                ->get('testing')
                ->result();


            $label = [];
            $training = [];
            $testing = [];

            $list_of_document = [];
            foreach ($db_training as $key => $value) {
                $list_of_document[$key] = $this->preprocessing->process($value->teks, $stopword = false);
                $text_list[$key] = $value;
                $label[$key] = $value->klasifikasi;
                $training[] = $key;
            }

            $old_key = $key + 1;

            foreach ($db_testing as $key => $value) {
                $list_of_document[$key + $old_key] = $this->preprocessing->process($value->teks, $stopword = false);
                $text_list[$key + $old_key] = $value;
                $testing[] = $key + $old_key;
            }






            ###end of me
            $all_text = [];
            foreach ($list_of_document as $key => $value) {
                $all_text = array_merge($all_text, $value);
            }

            $all_text =  array_unique($all_text);
            $all_text = array_values($all_text);

            #tfidf
            $matrix_tf = [];
            foreach ($all_text as $key_word => $word) {

                foreach ($list_of_document as $key_text => $value_text) {
                    $count_word = 0;
                    foreach ($value_text as $k => $v) {
                        if ($word == $v) {
                            $count_word++;
                        }
                    }
                    $matrix_tf[$key_word][$key_text] = $count_word;
                }
            }



            $text_df = [];
            foreach ($matrix_tf as $key => $value) {
                $df = 0;
                foreach ($value as $k => $v) {
                    if ($v > 0) {
                        $df++;
                    }
                }
                $text_df[$key] = $df;
            }

            $text_dperdf = [];
            $text_idf = [];
            $text_idfplus1 = [];
            $word_count = count($list_of_document);
            foreach ($text_df as $key => $value) {
                $dperdf = $word_count / $value;
                $text_dperdf[$key] = $dperdf;
                $idf = log10($dperdf);
                $text_idf[$key] = $idf;
                $text_idfplus1[$key] = $idf + 1;
            }

            $matrix_tfidf = [];
            foreach ($matrix_tf as $key => $value) {
                foreach ($value as $k => $v) {
                    $matrix_tfidf[$key][$k] = $v * $text_idfplus1[$key];
                }
            }

            ##SVM
            #normalisasi
            $normalisasi = [];

            foreach ($matrix_tfidf as $key => $value) {
                foreach ($value as $k => $v) {
                    $max = max($value);
                    $min = min($value);

                    $normalisasi[$key][$k] = (0.8 * (($v - $min) / ($max - $min))) + 0.1;
                }
            }


            #matrix_k
            $matrix_k = [];
            foreach ($training as $x) {
                foreach ($training as $y) {
                    $sum = 0;
                    for ($i = 0; $i < count($normalisasi); $i++) {
                        $sum += pow(($normalisasi[$i][$x] - $normalisasi[$i][$y]), 2);
                    }

                    $matrix_k[$x][$y] = exp(-1 * ((pow(sqrt($sum), 2)) / (2 * pow($pi, 2))));
                }
            }

            #matrix_hasien

            $matrix_hasian = [];
            foreach ($matrix_k as $key => $value) {
                foreach ($value as $k => $v) {
                    $matrix_hasian[$key][$k] = ($v + pow($lamda, 2)) * ($label[$key] * $label[$k]);
                }
            }


            #iteration
            $alpha = [];
            foreach ($matrix_hasian as $key => $value) {
                $alpha[] = 0;
            }

            $i = 0;
            do {
                $matrix_error = [];
                foreach ($matrix_hasian as $key => $value) {
                    foreach ($value as $k => $v) {
                        $matrix_error[$key][$k] = $v * $alpha[$key];
                    }
                }

                $error_i = [];
                foreach ($matrix_error as $key => $value) {
                    $error_i[$key] = array_sum($value);
                }

                #cons
                if ($matrix_hasian[0][0] != 0) {
                    $gamma_2 = $gamma / $matrix_hasian[0][0];
                } else {
                    $gamma_2 = $gamma;
                }

                $new_alpha = [];

                foreach ($error_i as $key => $value) {
                    $max = max($gamma_2 * (1 - $value), (-1 * $alpha[$key]));
                    $min = min($max, $c - $alpha[$key]);
                    $new_alpha[$key] = $alpha[$key] + $min;
                }

                $alpha = $new_alpha;
                $i++;
            } while ($i < $max_iteration);

            $max_key = array_keys($alpha, max($alpha))[0];
            $min_key = array_keys($alpha, min($alpha))[0];

            $matrix_k_pos = [];
            $matrix_k_neg = [];

            foreach ($matrix_k as $key => $value) {
                $matrix_k_pos[$key] = $value[$max_key];
                $matrix_k_neg[$key] = $value[$min_key];
            }

            $matrix_w_pos = [];
            foreach ($matrix_k_pos as $key => $value) {
                $matrix_w_pos[$key] = $value * $alpha[$key] * $label[$key];
            }
            $matrix_w_neg = [];
            foreach ($matrix_k_neg as $key => $value) {
                $matrix_w_neg[$key] = $value * $alpha[$key] * $label[$key];
            }

            $bias = (-1 / 2) * (array_sum($matrix_w_pos) + array_sum($matrix_w_neg));

            $matrix_k_testing = [];
            foreach ($training as $x) {
                foreach ($testing as $y) {
                    $sum = 0;
                    for ($i = 0; $i < count($normalisasi); $i++) {
                        $sum += pow(($normalisasi[$i][$x] - $normalisasi[$i][$y]), 2);
                    }

                    $matrix_k_testing[$x][$y] = exp(-1 * ((pow(sqrt($sum), 2)) / (2 * pow($pi, 2))));
                }
            }

            $matrix_final_test = [];
            foreach ($matrix_k_testing as $key => $value) {
                foreach ($value as $k => $v) {
                    $matrix_final_test[$key][$k] = $alpha[$key] * $label[$key] * $v;
                }
            }

            #tranpose
            $matrix_final_test_t = [];
            foreach ($matrix_final_test as $key => $value) {
                foreach ($value as $k => $v) {
                    $matrix_final_test_t[$k][$key] = $v;
                }
            }

            $fx = [];
            $fx_result = [];
            foreach ($matrix_final_test_t as $key => $value) {
                $fx[$key] = (array_sum($value)) + $bias;


                if ($fx[$key] >= (0 + abs($bias/2))) {
                    $fx_result[$key] = 1;
                } else if ($fx[$key] <= (0 - abs($bias/2))) {
                    $fx_result[$key] = -1;
                } else {
                    $fx_result[$key] = 0;
                }

                // $fx_result[$key] = ($fx[$key] >= 0 ? 1 : -1);
            }

            $result = [];

            foreach ($text_list as $key => $value) {
                $label_value = 0;
                if (isset($label[$key])) {
                    $label_value = $label[$key];
                }

                if (isset($fx_result[$key])) {
                    $label_value = $fx_result[$key];
                    $value->predict = $label_value;
                    $value->nilai_fx = $fx[$key];
                    $result[] = $value;
                }
            }

            $tp = 0;
            $fp = 0;
            $tn = 0;
            $fn = 0;
            $tneg = 0;
            $fneg = 0;

            foreach ($result as $key => $value) {
                if ($value->klasifikasi == $value->predict) {
                    if ($value->klasifikasi == 1) {
                        $tp++;
                    }
                    if ($value->klasifikasi == 0) {
                        $tneg++;
                    }
                    if ($value->klasifikasi == -1) {
                        $tn++;
                    }
                } else {
                    if ($value->klasifikasi == 1) {
                        $fp++;
                    }
                    if ($value->klasifikasi == 0) {
                        $fneg++;
                    }
                    if ($value->klasifikasi == -1) {
                        $fn++;
                    }
                }
            }

            if (($tp + $fp + $fn + $tn) != 0) {
                $akurasi = ($tp + $tn) / ($tp + $tn + $fp + $fn);
            } else {
                $akurasi = 0;
            }

            if (($tn + $fp) != 0) {
                $presisi = $tp / ($tp + $fp);
            } else {
                $presisi = 0;
            }

            if (($tp + $fn) != 0) {
                $recall = $tp / ($tp + $fn);
            } else {
                $recall = 0;
            }

            if (($presisi + $recall) != 0) {
                $fmeasure = 2 * ($presisi * $recall) / ($presisi + $recall);
            } else {
                $fmeasure = 0;
            }


            $data['presisi'] = number_format($presisi * 100, 0) . "%";
            $data['recall'] = number_format($recall * 100, 0) . "%";
            $data['akurasi'] = number_format($akurasi * 100, 0) . "%";
            $data['fmeasure'] = number_format($fmeasure * 100, 0) . "%";

            $data['bias'] = $bias;
            $data['result'] = $result;
            $data['pi'] = 1;
            $data['lamda'] = 0.5;
            $data['c'] = 1;
            $data['gamma'] = 0.01;
            $data['max_iteration'] = 2;
            $data['count_training'] = $this->db->get('training')->num_rows();
            $data['count_testing'] = $this->db->get('testing')->num_rows();

            $this->load->view('admin/svm/result', $data);
        }
    }
}
