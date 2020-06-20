<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
    }


    public function index()
    {
        $total_dataset = $this->db->where('temp_klasifikasi !=',null)->get('dataset')->num_rows();

        $db_marketplace = $this->db
            ->select('marketplace.*,(select count(*) from dataset where fk_marketplace=marketplace.id and temp_klasifikasi=1) as positif,(select count(*) from dataset where fk_marketplace=marketplace.id and temp_klasifikasi=-1) negatif,(select count(*) from dataset where fk_marketplace=marketplace.id and temp_klasifikasi=0) netral')
            ->get('marketplace')->result();
        $ranking_label = [];
        $ranking_data = [];
        $jumlah_per_marketplace = [];
        $data_ranking = [];

        $arr_positif = [];
        $arr_netral = [];
        $arr_negatif = [];

        foreach ($db_marketplace as $key => $value) {
            $ranking_label[] = $value->nama;
            $hitung_score = ($value->positif + $value->netral - $value->negatif) / $total_dataset;
            $data_ranking[$value->id] = $hitung_score;
            $ranking_data[] = $hitung_score;

            $arr_positif[] = $value->positif;
            $arr_netral[] = $value->netral;
            $arr_negatif[] = $value->negatif;

            $jumlah_per_marketplace["positif"][] = $value->positif;
            $jumlah_per_marketplace["negatif"][] = $value->negatif;
            $jumlah_per_marketplace["netral"][] = $value->netral;
        }

        $data['chart_ranking'] = [
            'label' => $ranking_label,
            'data' => $ranking_data,
        ];

        $data['chart_jumlah'] = [
            'label' => $ranking_label,
            'data' => $jumlah_per_marketplace,
        ];

        $data['percentage_positif'] = array_sum($arr_positif) / $total_dataset;
        $data['percentage_netral'] = array_sum($arr_netral) / $total_dataset;
        $data['percentage_negatif'] = array_sum($arr_negatif) / $total_dataset;

        $data['dataset_data'] = $this->db->select("*,(select nama from marketplace where id=dataset.fk_marketplace) nama_marketplace")->get('dataset')->result();
        $this->load->view('home', $data);
    }
}
