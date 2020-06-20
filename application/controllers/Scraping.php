<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Scraping extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        user_allow([]);
    }


    public function twitter()
    {
        $data['twitter_data'] = [];
        $this->load->view('admin/scraping/twitter', $data);
    }


    public function twitter_action()
    {
        $source = "twitter";
        ini_set('max_execution_time', 300);
        set_time_limit(300);

        $mention_to = $this->db
            ->where('id', $this->input->post('fk_marketplace'))
            ->get('marketplace')
            ->row()
            ->twitter;

        $date_from = new DateTime($this->input->post('date_from'));
        $date_to = new DateTime($this->input->post('date_to'));

        $internet_error = false;
        $array_content = [];
        for ($date_i = $date_from; $date_i <= $date_to; $date_i->modify("+1 day")) {

            $date1 = $date_i->format("Y-m-d");
            $date2 = $date_i->modify("+1 day")->format("Y-m-d");
            $html = "https://twitter.com/search?q=(%40" . $mention_to . ")%20until%3A" . $date2 . "%20since%3A" . $date1 . "&src=typed_query";

            $html_content = @file_get_contents($html);

            if ($html_content === false) {
                $internet_error = true;
                break;
            }
            libxml_use_internal_errors(true);
            $DOM = new DOMDocument();
            $DOM->loadHTML($html_content);
            $finder = new DomXPath($DOM);

            $content_class = "content";
            $content_node = $finder->query("//*[contains(@class, '$content_class')]");

            foreach ($content_node as $node) {
                if ($node->getElementsByTagName("div")[0] != null) {
                    if ($node->getElementsByTagName("div")[0]->getAttribute('class') == "stream-item-header") {
                        $tweet = str_replace("\r\n", " ", $node->getElementsByTagName('p')[0]->nodeValue);
                        $tweet = trim(preg_replace('/\s+/', ' ', $tweet));
                        $tweet = preg_replace('/(pic\.twitter\.com\/.*)\w+/', '', $tweet);
                        $tweet = preg_replace("@(https?://([-\w\.]+[-\w])+(:\d+)?(/([\w/_\.#-](\?\S+)?[^\.\s])?).$)@", ' ', $tweet); // remove link
                        $tweet = preg_replace("/#\w+\s*/", '', $tweet); //remove hashtag
                        $tweet = preg_replace("/@\w+\s*/", '', $tweet); //remove @
                        $tweet = trim($tweet);

                        if (strpos($tweet, "me-Retweet") !== false) {
                            continue;
                        }
                        if ($tweet == "") {
                            continue;
                        }
                        $array_content[] = [
                            'time' => $node->getElementsByTagName('small')[0]->getElementsByTagName('span')[0]->getAttribute('data-time'),
                            'account' => trim($node->getElementsByTagName('a')[0]->nodeValue),
                            'tweet' => $tweet
                        ];
                    }
                }
            }
        }

        $twitter_data = [];
        #save to database
        $duplicate = 0;
        $inserted = 0;
        foreach ($array_content as $key => $value) {
            $set = [
                'sumber' => $source,
                'tanggal' => date('Y-m-d H:i:s', $value['time']),
                'teks' => $value['tweet'],
                'fk_marketplace' => $this->input->post('fk_marketplace'),
                'temp_klasifikasi' => null,
            ];


            $db_debug = $this->db->db_debug;
            $this->db->db_debug = FALSE;
            $insert = $this->db->insert('dataset', $set);
            if (!$insert) {
                if ($this->db->error()['code'] == 1062) {
                    $duplicate += 1;
                }
            } else {
                $inserted += 1;
                $set['id'] = $this->db->insert_id();
            }
            $twitter_data[] = $set;
            $this->db->db_debug = $db_debug;
        }

        $data['twitter_data'] = $twitter_data;
        $data['message'] = "Scraped " . count($array_content) . ",inserted " . $inserted . " with " . $duplicate . " duplicate";

        if ($internet_error) {
            $this->session->set_flashdata('message', "Internet Error");
        }
        $this->load->view('admin/scraping/twitter', $data);
    }

    public function website()
    {
        $data['website_data'] = [];
        $this->load->view('admin/scraping/website', $data);
    }

    public function website_action()
    {
        $sumber = "website";
        $website_data = [];
        $internet_error = false;
        $fk_marketplace = $this->input->post('fk_marketplace');

        $result = [];
        if ($fk_marketplace == "1") {
            $html = 'https://shopee.co.id/api/v2/item/get_ratings?filter=0&flag=1&itemid=4114905073&limit=20&offset=0&shopid=62579622&type=0';

            $html_content = @file_get_contents($html);
            if ($html_content === false) {
                $internet_error = true;
            } else {

                $data = json_decode($html_content, true);

                $ratings = $data['data']['ratings'];

                foreach ($ratings as $key => $value) {


                    $result[] = [
                        'sumber' => $sumber,
                        'tanggal' => date('Y-m-d H:i:s', $value['editable_date']),
                        'teks' => trim($value['comment']),
                        'fk_marketplace' => $this->input->post('fk_marketplace'),
                        'temp_klasifikasi' => null,
                    ];
                }
            }
        } else if ($fk_marketplace == "2") {
            $options = array(
                'http' => array(
                    'method' => "GET",
                    'header' => "Accept-language: en\r\n" .
                        "Cookie: foo=bar\r\n" .  // check function.stream-context-create on php.net
                        "User-Agent: Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B334b Safari/531.21.102011-10-16 20:23:10\r\n" // i.e. An iPad 
                )
            );

            $context = stream_context_create($options);
            $html = "https://www.tokopedia.com/alibabaofficial/xiaomi-redmi-note-8-pro-rzants-ringke-original-hard-soft-case-silicone?src=topads";
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, $html);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.2) Gecko/20090729 Firefox/3.5.2 GTB5');
            $html = curl_exec($ch);

            dd($html);
        } else if ($fk_marketplace == "3") {

            $options = array(
                'http' => array(
                    'method' => "GET",
                    'header' => "Accept-language: en\r\n" .
                        "Cookie: foo=bar\r\n" .  // check function.stream-context-create on php.net
                        "User-Agent: Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B334b Safari/531.21.102011-10-16 20:23:10\r\n" // i.e. An iPad 
                )
            );

            $context = stream_context_create($options);

            // $html = 'https://www.blibli.com/backend/product-review/public-reviews?itemPerPage=100&productSku=BLK-15020-05586';
            $html = "https://www.blibli.com/backend/product-review/public-reviews?page=1&itemPerPage=10&productSku=BLK-15020-05586";
            $html_content = @file_get_contents($html, false, $context);
            // dd($html_content);
            if ($html_content === false) {
                $internet_error = true;
            } else {
                $data = json_decode($html_content, true);

                $ratings = $data['data'];

                foreach ($ratings as $key => $value) {


                    $result[] = [
                        'sumber' => $sumber,
                        'tanggal' => date('Y-m-d H:i:s', (int) $value['createdDate']),
                        'teks' => trim($value['content']),
                        'fk_marketplace' => $this->input->post('fk_marketplace'),
                        'temp_klasifikasi' => null,
                    ];
                }
            }
        } else if ($fk_marketplace == "4") {


            $options = array(
                'http' => array(
                    'method' => "GET",
                    'header' => "Accept-language: en\r\n" .
                        "Cookie: foo=bar\r\n" .  // check function.stream-context-create on php.net
                        "User-Agent: Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B334b Safari/531.21.102011-10-16 20:23:10\r\n" // i.e. An iPad 
                )
            );

            $context = stream_context_create($options);

            $html = 'https://my.lazada.co.id/pdp/review/getReviewList?itemId=600772168&pageSize=50&filter=0&sort=1';
            $html_content = @file_get_contents($html, false, $context);

            if ($html_content === false) {
                $internet_error = true;
            } else {
                $data = json_decode($html_content, true);
                $ratings = $data['model']['items'];

                foreach ($ratings as $key => $value) {
                    if (trim($value['reviewContent']) == "") {
                        continue;
                    }

                    $result[] = [
                        'sumber' => $sumber,
                        'tanggal' => date("Y-m-d"),
                        'teks' => trim($value['reviewContent']),
                        'fk_marketplace' => $this->input->post('fk_marketplace'),
                        'temp_klasifikasi' => null,
                    ];
                }
            }
        } else if ($fk_marketplace == "5") {
            $html = "https://api.bukalapak.com/product-reviews?access_token=u38jYds3_6qToWIY1yPrlqFtVHVKSrCUIEEdC_QzvlQq4A&product_id=a7ezny&offset=0&limit=50";
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, $html);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.2) Gecko/20090729 Firefox/3.5.2 GTB5');
            $html = curl_exec($ch);
            // dd($html);

            $datas = json_decode($html);

            foreach ($datas->data as $key => $value) {

                $result[] = [
                    'sumber' => $sumber,
                    'tanggal' => date("Y-m-d H:i:s", strtotime($value->created_at)),
                    'teks' => $value->review->title . " " . $value->review->content,
                    'fk_marketplace' => $this->input->post('fk_marketplace'),
                    'temp_klasifikasi' => null,
                ];
            }
        }



        $duplicate = 0;
        $inserted = 0;
        foreach ($result as $key => $value) {
            $db_debug = $this->db->db_debug;
            $this->db->db_debug = FALSE;
            $insert = $this->db->insert('dataset', $value);
            if (!$insert) {
                if ($this->db->error()['code'] == 1062) {
                    $duplicate += 1;
                }
            } else {
                $inserted += 1;
                $result[$key]['id'] = $this->db->insert_id();
            }
            $this->db->db_debug = $db_debug;
        }


        if ($internet_error) {
            $this->session->set_flashdata('message', "Internet Error or Target Error");
        }

        $data['website_data'] = (array) $result;
        $data['message'] = "Scraped " . count($result) . ",inserted " . $inserted . " with " . $duplicate . " duplicate";
        $this->load->view('admin/scraping/website', $data);
    }


    public function playstore()
    {
        $this->load->library('form_validation');

        $this->form_validation->set_rules('excel', 'excel', 'trim');
        if ($this->form_validation->run() == false) {
            $this->load->view('admin/scraping/playstore');
        } else {
            $config['upload_path']          = './storage/excel_tmp/';
            $config['allowed_types']        = 'xls|xlsx';
            $config['max_size']             = 2000;

            $this->load->library('upload', $config);

            if (!$this->upload->do_upload('excel')) {

                $data['playstore_data'] = (array) [];
                $data['message'] = $this->upload->display_errors('', '');

                $this->session->set_flashdata('message', $this->upload->display_errors('', ''));
                $this->load->view('admin/scraping/playstore', $data);
            } else {
                $file_name = $this->upload->data('file_name');

                $this->load->library('excelreader');

                //choose format
                $inputFileName = './storage/excel_tmp/' . $file_name;
                $inputFileType = 'xls';
                $is_error = false;
                $result = [];
                try {
                    $inputFileType = PHPExcel_IOFactory::identify($inputFileName);
                    $objReader = PHPExcel_IOFactory::createReader($inputFileType);
                    $objPHPExcel = $objReader->load($inputFileName);

                    $sheet = $objPHPExcel->getSheet(0);
                    $highestRow = $sheet->getHighestRow();
                    $highestColumn = $sheet->getHighestColumn();
                    $fetch_excel = $sheet->rangeToArray('B2:' . 'F' . $highestRow, NULL, TRUE, FALSE);

                    unlink($inputFileName);
                    $data_excel = [];
                    foreach ($fetch_excel as $key => $value) {
                        $time = $value[2];
                        $time = str_replace("Januari", "January", $time);
                        $time = str_replace("Februari", "February", $time);
                        $time = str_replace("Maret", "March", $time);
                        $time = str_replace("April", "April", $time);
                        $time = str_replace("Mei", "May", $time);
                        $time = str_replace("Juni", "June", $time);
                        $time = str_replace("Juli", "July", $time);
                        $time = str_replace("Agustus", "August", $time);
                        $time = str_replace("September", "September", $time);
                        $time = str_replace("Oktober", "October", $time);
                        $time = str_replace("November", "November", $time);
                        $time = str_replace("Desember", "December", $time);
                        $data_excel[] = [
                            'tanggal' => date("Y-m-d", strtotime($time)),
                            'teks' => $value[4],
                            'sumber' => 'playstore',
                            'fk_marketplace' => $this->input->post('fk_marketplace')
                        ];
                    }
                    $data['data_excel'] = $data_excel;

                    $duplicate = 0;
                    $inserted = 0;
                    foreach ($data_excel as $key => $value) {
                        $db_debug = $this->db->db_debug;
                        $this->db->db_debug = FALSE;
                        $insert = $this->db->insert('dataset', $value);
                        if (!$insert) {
                            if ($this->db->error()['code'] == 1062) {
                                $duplicate += 1;
                            }
                        } else {
                            $inserted += 1;
                            $data_excel[$key]['id'] = $this->db->insert_id();
                        }
                        $this->db->db_debug = $db_debug;
                    }


                    $data['playstore_data'] = (array) $data_excel;
                    $data['message'] = "Imported " . count($result) . ",inserted " . $inserted . " with " . $duplicate . " duplicate";
                } catch (Exception $e) {
                    $is_error = true;
                    $data['error_info'] = 'Error loading file "' . pathinfo($inputFileName, PATHINFO_BASENAME) . '": ' . $e->getMessage();


                    $data['playstore_data'] = (array) [];
                    $data['message'] = $data['error_info'];

                    $this->session->set_flashdata('message', $data['error_info']);
                }

                $this->load->view('admin/scraping/playstore', $data);
            }
        }
    }

    public function twitter_import()
    {
        $this->load->library('form_validation');

        $this->form_validation->set_rules('excel', 'excel', 'trim');
        if ($this->form_validation->run() == false) {
            $this->load->view('admin/scraping/twitter_import');
        } else {
            $config['upload_path']          = './storage/excel_tmp/';
            $config['allowed_types']        = 'xls|xlsx';
            $config['max_size']             = 2000;

            $this->load->library('upload', $config);

            if (!$this->upload->do_upload('excel')) {

                $data['twitter_data'] = (array) [];
                $data['message'] = $this->upload->display_errors('', '');

                $this->session->set_flashdata('message', $this->upload->display_errors('', ''));
                $this->load->view('admin/scraping/twitter_import', $data);
            } else {
                $file_name = $this->upload->data('file_name');

                $this->load->library('excelreader');

                //choose format
                $inputFileName = './storage/excel_tmp/' . $file_name;
                $inputFileType = 'xls';
                $is_error = false;
                $result = [];
                try {
                    $inputFileType = PHPExcel_IOFactory::identify($inputFileName);
                    $objReader = PHPExcel_IOFactory::createReader($inputFileType);
                    $objPHPExcel = $objReader->load($inputFileName);

                    $sheet = $objPHPExcel->getSheet(0);
                    $highestRow = $sheet->getHighestRow();
                    $highestColumn = $sheet->getHighestColumn();
                    $fetch_excel = $sheet->rangeToArray('A2:' . 'D' . $highestRow, NULL, TRUE, FALSE);

                    unlink($inputFileName);
                    $data_excel = [];
                    foreach ($fetch_excel as $key => $value) {
                        if ($value[0] != "") {
                            $tweet = str_replace("\r\n", " ", trim($value[3]));
                            $tweet = trim(preg_replace('/\s+/', ' ', $tweet));
                            $tweet = preg_replace('/(pic\.twitter\.com\/.*)\w+/', '', $tweet);
                            $tweet = preg_replace("@(https?://([-\w\.]+[-\w])+(:\d+)?(/([\w/_\.#-](\?\S+)?[^\.\s])?).$)@", ' ', $tweet); // remove link
                            $tweet = preg_replace("/#\w+\s*/", '', $tweet); //remove hashtag
                            $tweet = preg_replace("/@\w+\s*/", '', $tweet); //remove @
                            $tweet = trim($tweet);
                            $tweet = substr($tweet,0,255);

                            $data_excel[] = [
                                'tanggal' => date("Y-m-d", strtotime($value[2])),
                                'teks' => $tweet,
                                'sumber' => 'twitter',
                                'fk_marketplace' => $this->input->post('fk_marketplace')
                            ];
                        }
                    }
                    $data['data_excel'] = $data_excel;

                    $duplicate = 0;
                    $inserted = 0;
                    foreach ($data_excel as $key => $value) {
                        $db_debug = $this->db->db_debug;
                        $this->db->db_debug = FALSE;
                        $insert = $this->db->insert('dataset', $value);
                        if (!$insert) {
                            if ($this->db->error()['code'] == 1062) {
                                $duplicate += 1;
                            }
                        } else {
                            $inserted += 1;
                            $data_excel[$key]['id'] = $this->db->insert_id();
                        }
                        $this->db->db_debug = $db_debug;
                    }


                    $data['twitter_data'] = (array) $data_excel;
                    $data['message'] = "Imported " . count($result) . ",inserted " . $inserted . " with " . $duplicate . " duplicate";
                } catch (Exception $e) {
                    $is_error = true;
                    $data['error_info'] = 'Error loading file "' . pathinfo($inputFileName, PATHINFO_BASENAME) . '": ' . $e->getMessage();


                    $data['twitter_data'] = (array) [];
                    $data['message'] = $data['error_info'];

                    $this->session->set_flashdata('message', $data['error_info']);
                }

                $this->load->view('admin/scraping/twitter_import', $data);
            }
        }
    }
}