<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Marketplace extends CI_Controller
{
    public function __construct() {
        parent::__construct();
        user_allow([]);
    }


    public function index()
    {
        $data['marketplace_data'] = $this->db->get('marketplace')->result();
        $this->load->view('admin/marketplace/index',$data);
    }

    public function update()
    {
        $twitter = $this->input->post('twitter');
        $website = $this->input->post('website');
        $playstore = $this->input->post('playstore');
        
        foreach($twitter as $key => $value){
            $this->db->where('id',$key)->update('marketplace',['twitter' => $value]);
        }
        foreach($website as $key => $value){
            $this->db->where('id',$key)->update('marketplace',['website' => $value]);
        }
        foreach($playstore as $key => $value){
            $this->db->where('id',$key)->update('marketplace',['playstore' => $value]);
        }

        redirect("Marketplace");
    }
}