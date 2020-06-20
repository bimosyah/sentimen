<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Kata_Tidak_Baku extends CI_Controller
{


    public function __construct() {
        parent::__construct();
        user_allow([]);
    }
    
    public function index($id_kata_baku = null)
    {
        $this->db->select('*,(select kata_baku from kata_baku where id=kata_tidak_baku.fk_kata_baku) as kata_baku');
        if ($id_kata_baku != null) {
            $this->db->where('fk_kata_baku', $id_kata_baku);
        }
        $data['kata_tidak_baku_data'] = $this->db
            ->get('kata_tidak_baku')
            ->result();

        if ($id_kata_baku != null) {
            $data['kata_baku_data'] = $this->db
                ->where('id', $id_kata_baku)
                ->get('kata_baku')
                ->row(0);
        }

        $this->load->view('admin/kata_tidak_baku/index', $data);
    }

    public function insert()
    {
        $this->load->library('form_validation');

        $this->form_validation->set_rules('kata_tidak_baku', 'kata_tidak_baku', 'trim|required');

        if ($this->form_validation->run() == false) {
            $data['kata_tidak_baku_data'] = $this->db->get('kata_tidak_baku')->result();
            $this->load->view('admin/kata_tidak_baku/insert', $data);
        } else {
            $set_kata_tidak_baku = [
                'fk_kata_baku' => $this->input->post('fk_kata_baku'),
                'kata_tidak_baku' => $this->input->post('kata_tidak_baku'),
            ];
            $this->db->insert('kata_tidak_baku', $set_kata_tidak_baku);

            redirect("kata_tidak_baku");
        }
    }

    public function update($id_kata_tidak_baku)
    {
        $this->load->library('form_validation');

        $kata_tidak_baku_data = $this->db
            ->where('id', $id_kata_tidak_baku)
            ->get('kata_tidak_baku')
            ->row(0);


            $this->form_validation->set_rules('kata_tidak_baku', 'kata_tidak_baku', 'trim|required');

        if ($this->form_validation->run() == false) {
            $kata_tidak_baku_data = $this->db
                ->where('id', $id_kata_tidak_baku)
                ->get('kata_tidak_baku')
                ->row(0);

            $data['kata_tidak_baku_data'] = $kata_tidak_baku_data;
            $this->load->view('admin/kata_tidak_baku/update', $data);
        } else {
            $set_kata_tidak_baku = [
                'fk_kata_baku' => $this->input->post('fk_kata_baku'),
                'kata_tidak_baku' => $this->input->post('kata_tidak_baku'),
            ];
            $this->db
                ->where('id', $id_kata_tidak_baku)
                ->update('kata_tidak_baku', $set_kata_tidak_baku);

            redirect("kata_tidak_baku");
        }
    }

    public function delete($id_kata_tidak_baku)
    {

        $this->db
            ->where('id', $id_kata_tidak_baku)
            ->delete('kata_tidak_baku');

        redirect("kata_tidak_baku");
    }
}
