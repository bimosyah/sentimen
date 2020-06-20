<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Testing extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		user_allow([]);
	}


	public function index()
	{
		$data['pi'] = 1;
		$data['lamda'] = 0.5;
		$data['c'] = 1;
		$data['gamma'] = 0.01;
		$data['max_iteration'] = 1;
		$data['count_training'] = $this->db->get('training')->num_rows();
		$data['count_dataset'] = $this->db->get('dataset')->num_rows();

		$this->load->view('admin/testing/index', $data);
	}

	public function svm()
	{
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
		$db_dataset = $this->db
		->get('dataset')
		->result();
		
		
		$label = [];
		$training = [];
		$testing = [];
		
		$list_of_document = [];
		foreach($db_training as $key => $value){
			$list_of_document[$key] = $this->preprocessing->process($value->teks, $stopword = false);
			$text_list[$key] = $value->teks;
			$label[$key] = $value->klasifikasi;
			$training[] = $key;
		}
		

		$old_key = $key+1;

		foreach($db_dataset as $key => $value){
			$list_of_document[$key+$old_key] = $this->preprocessing->process($value->teks, $stopword = false);
			$text_list[$key+$old_key] = $value->teks;
			$testing[] = $key+$old_key;
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
		$training = [0, 1, 2];
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
			if($matrix_hasian[0][0] != 0){
				$gamma_2 = $gamma / $matrix_hasian[0][0];
			}else{
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
			$fx_result[$key] = ($fx[$key] >= 0 ? 1 : -1);
		}
		

		foreach ($text_list as $key => $value) {
			$tlabel = "";
			if (isset($label[$key])) {
				$tlabel = ($label[$key] == 1 ? "positif" : "negatif");
			}

			if (isset($fx_result[$key])) {
				$tlabel = "<b>" . ($fx_result[$key] == 1 ? "positif" : "negatif") . "</b>";
			}
			echo $value . ": " . $tlabel . "<br>";
		}
	}

	public function svm2()
	{
		ini_set('memory_limit', '-1');

		$training_data = $this->db
			->get('training')
			->result();

		$data_data = $this->db
			->get('dataset')
			->result();

		$this->load->library('preprocessing');

		$label = [];
		$training = [];
		$testing = [];

		$text_list = [];
		$list_of_document = [];

		foreach ($training_data as $key => $value) {
			$list_of_document[] = $this->preprocessing->process($value->teks, $stopword = false);
			$text_list[] = $value->teks;
			$training[] = $key;
			$label[] = $value->klasifikasi;
		}
		$training_key = $key + 1;

		foreach ($data_data as $key => $value) {
			$list_of_document[] = $this->preprocessing->process($value->teks, $stopword = false);
			$text_list[] = $value->teks;
			$testing[] = $key + $training_key;
		}

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

		##tranpose
		$tfidf_t = [];
		foreach ($matrix_tfidf as $key => $value) {
			foreach ($value as $k => $v) {
				$tfidf_t[$k][$key] = $v;
			}
		}





		##SVM
		#normalisasi
		$normalisasi = [];

		foreach ($tfidf_t as $key => $value) {
			foreach ($value as $k => $v) {
				$max = max($value);
				$min = min($value);

				$normalisasi[$key][$k] = (0.8 * (($v - $min) / ($max - $min))) + 0.1;
			}
		}

		dd_2dim($tfidf_t);
		dd_2dim($normalisasi);
		die();



		#matrix_k
		$pi = 1;

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
		$lamda = 0.5;
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
			$c = 1;

			$gamma = 0.01 / $matrix_hasian[0][0];

			$new_alpha = [];

			foreach ($error_i as $key => $value) {
				$max = max($gamma * (1 - $value), (-1 * $alpha[$key]));
				$min = min($max, $c - $alpha[$key]);
				$new_alpha[$key] = $alpha[$key] + $min;
			}

			$alpha = $new_alpha;
			$i++;
		} while ($i < 100);


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
			$fx_result[$key] = ($fx[$key] >= 0 ? 1 : -1);
			if ($fx[$key] == 0) {
				$fx_result[$key] = 0;
			} else if ($fx[$key] < 0) {
				$fx_result[$key] = -1;
			} else if ($fx[$key] > 0) {
				$fx_result[$key] = 1;
			}
		}
		foreach ($text_list as $key => $value) {
			$tlabel = "";
			if (isset($label[$key])) {
				$tlabel = ($label[$key] == 1 ? "positif" : ($label[$key] == -1 ? "negatif" : "netral"));
			}

			if (isset($fx_result[$key])) {
				$tlabel = "<b>" . ($fx_result[$key] == 1 ? "positif" : ($fx_result[$key] == -1 ? "negatif" : "netral")) . "</b>";
			}
			echo $value . ": " . $tlabel . "<br>";
		}
	}

	public function svm3()
	{
		$text1 = "terima kasih shopee";
		$text2 = "pelayanan buruk saya kecewa";
		$text3 = "pengiriman lama";
		$text4 = "pengiriman cepat";
		$text5 = "diskon shopee banyak";

		$text_list = [$text1, $text2, $text3, $text4, $text5];


		$this->load->library('preprocessing');

		$text1_preprocess = $this->preprocessing->process($text1, $stopword = false);
		$text2_preprocess = $this->preprocessing->process($text2, $stopword = false);
		$text3_preprocess = $this->preprocessing->process($text3, $stopword = false);
		$text4_preprocess = $this->preprocessing->process($text4, $stopword = false);
		$text5_preprocess = $this->preprocessing->process($text5, $stopword = false);

		$list_of_document = [];
		$list_of_document[] = $text1_preprocess;
		$list_of_document[] = $text2_preprocess;
		$list_of_document[] = $text3_preprocess;
		$list_of_document[] = $text4_preprocess;
		$list_of_document[] = $text5_preprocess;

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

		$label = [];
		$label[0] = 1;
		$label[1] = -1;
		$label[2] = -1;

		#matrix_k
		$pi = 1;

		$training = [0, 1, 2];
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
		$lamda = 0.5;

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
			$c = 1;
			$gamma = 0.01 / $matrix_hasian[0][0];

			$new_alpha = [];

			foreach ($error_i as $key => $value) {
				$max = max($gamma * (1 - $value), (-1 * $alpha[$key]));
				$min = min($max, $c - $alpha[$key]);
				$new_alpha[$key] = $alpha[$key] + $min;
			}

			$alpha = $new_alpha;
			$i++;
		} while ($i < 2);

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

		$training = [0, 1, 2];
		$testing = [3, 4];
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
			$fx_result[$key] = ($fx[$key] >= 0 ? 1 : -1);
		}

		foreach ($text_list as $key => $value) {
			$tlabel = "";
			if (isset($label[$key])) {
				$tlabel = ($label[$key] == 1 ? "positif" : "negatif");
			}

			if (isset($fx_result[$key])) {
				$tlabel = "<b>" . ($fx_result[$key] == 1 ? "positif" : "negatif") . "</b>";
			}
			echo $value . ": " . $tlabel . "<br>";
		}
	}
}
