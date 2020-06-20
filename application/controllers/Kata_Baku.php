<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Kata_Baku extends CI_Controller
{

    public function __construct() {
        parent::__construct();
        user_allow([]);
    }

    public function index()
    {
        $data['kata_baku_data'] = $this->db
            ->get('kata_baku')
            ->result();
        $this->load->view('admin/kata_baku/index', $data);
    }

    public function insert()
    {
        $this->load->library('form_validation');

        $this->form_validation->set_rules('kata_baku', 'kata_baku', 'trim|required');

        if ($this->form_validation->run() == false) {
            $this->load->view('admin/kata_baku/insert');
        } else {
            $set_kata_baku = [
                'kata_baku' => $this->input->post('kata_baku'),
            ];
            $this->db->insert('kata_baku', $set_kata_baku);

            redirect("Kata_Baku");
        }
    }

    public function update($id_kata_baku)
    {
        $this->load->library('form_validation');

        $kata_baku_data = $this->db
            ->where('id', $id_kata_baku)
            ->get('kata_baku')
            ->row(0);


        $this->form_validation->set_rules('kata_baku', 'kata_baku', 'trim|required');

        if ($this->form_validation->run() == false) {
            $kata_baku_data = $this->db
                ->where('id', $id_kata_baku)
                ->get('kata_baku')
                ->row(0);

            $data['kata_baku_data'] = $kata_baku_data;
            $this->load->view('admin/kata_baku/update', $data);
        } else {
            $set_kata_baku = [
                'kata_baku' => $this->input->post('kata_baku'),
            ];
            $this->db
                ->where('id', $id_kata_baku)
                ->update('kata_baku', $set_kata_baku);

            redirect("Kata_Baku");
        }
    }

    public function delete($id_kata_baku)
    {

        $this->db
            ->where('id', $id_kata_baku)
            ->delete('kata_baku');

        redirect("Kata_Baku");
    }
}
