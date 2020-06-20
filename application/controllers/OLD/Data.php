<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Data extends CI_Controller
{
    public function __construct() {
        parent::__construct();
        user_allow([]);
    }


    public function index()
    {
        $data['data_data'] = $this->db->get('data')->result();
        $this->load->view('admin/data/index',$data);
    }
}