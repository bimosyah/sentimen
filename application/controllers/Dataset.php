<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dataset extends CI_Controller
{
    public function __construct() {
        parent::__construct();
        user_allow([]);
    }


    public function index()
    {
        $data['dataset_data'] = $this->db->select("*,(select nama from marketplace where id=dataset.fk_marketplace) nama_marketplace")->get('dataset')->result();
        $this->load->view('admin/dataset/index',$data);
    }

    public function delete_all()
    {
        $this->db->truncate('dataset');
        redirect("Dataset");
    }
}