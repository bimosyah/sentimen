<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        user_allow([]);
    }


    public function index()
    {
        $total_dataset = $this->db->get('dataset')->num_rows();

        $db_marketplace = $this->db
            ->select('marketplace.*,(select count(*) from dataset where fk_marketplace=marketplace.id and temp_klasifikasi=1) as positif,(select count(*) from dataset where fk_marketplace=marketplace.id and temp_klasifikasi=-1) negatif,(select count(*) from dataset where fk_marketplace=marketplace.id and temp_klasifikasi=0) netral')
            ->get('marketplace')->result();
        $ranking_label = [];
        $ranking_data = [];
        $jumlah_per_marketplace = [];
        $data_ranking = [];
        foreach ($db_marketplace as $key => $value) {
            $ranking_label[] = $value->nama;
            $hitung_score = ($value->positif + $value->netral - $value->negatif) / $total_dataset;
            $data_ranking[$value->id] = $hitung_score;
            $ranking_data[] = $hitung_score;

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
        $this->load->view('admin/dashboard/index', $data);
    }
}
