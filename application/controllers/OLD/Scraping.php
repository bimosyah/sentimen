<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Scraping extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        user_allow([]);
    }


    public function index()
    {
        $this->load->view('admin/scraping/index');
    }

    public function scraping()
    {
        $source = $this->input->post('source');
        if ($source == "1") {
            ini_set('max_execution_time', 300);
            set_time_limit(300);

            $mention_to = $this->db
                ->where('id_marketplace', $this->input->post('fk_marketplace'))
                ->get('marketplace')
                ->row()
                ->tweet_acc;

            $date_from = new DateTime($this->input->post('date_from'));
            $date_to = new DateTime($this->input->post('date_to'));

            $array_content = [];
            for ($date_i = $date_from; $date_i <= $date_to; $date_i->modify("+1 day")) {

                $date1 = $date_i->format("Y-m-d");
                $date2 = $date_i->modify("+1 day")->format("Y-m-d");
                $html = "https://twitter.com/search?q=(%40" . $mention_to . ")%20until%3A" . $date2 . "%20since%3A" . $date1 . "&src=typed_query";

                $html_content = file_get_contents($html);

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
                            $regex = "@(https?://([-\w\.]+[-\w])+(:\d+)?(/([\w/_\.#-]*(\?\S+)?[^\.\s])?).*$)@";
                            $tweet = preg_replace($regex, ' ', $tweet); // remove link
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

            foreach ($array_content as $key => $value) {
                $set = [
                    'source' => $source,
                    'date' => date('Y-m-d', $value['time']),
                    'review' => $value['tweet'],
                    'fk_marketplace' => $this->input->post('fk_marketplace'),
                    'klasifikasi' => null,
                ];
                $this->db->insert('data', $set);
            }

            redirect("Data");
        }
    }

    public function marketplace_shopee()
    {
        $html = 'https://shopee.co.id/api/v2/item/get_ratings?filter=0&flag=1&itemid=4114905073&limit=20&offset=0&shopid=62579622&type=0';

                $html_content = file_get_contents($html);

        $data = json_decode($html_content,true);

        // echo $data['data']['ratings'][0]['comment'];

        $ratings = $data['data']['ratings'];

        $reviews = [];
        foreach($ratings as $key => $value){
            $reviews[] = [
                'date' => date('Y-m-d',$value['editable_date']),
                'review' => $value['comment'],
            ];
        }
        dd($reviews);
    }

    public function marketplace_blibli()
    {
        $html = 'https://www.blibli.com/backend/product-review/public-reviews?page=1&itemPerPage=10&productSku=KMD-60021-00706';
                $html_content = file_get_contents($html);

        $data = json_decode($html_content,true);

        // echo $data['data']['ratings'][0]['comment'];

        $ratings = $data['data'];

        $reviews = [];
        foreach($ratings as $key => $value){
            $reviews[] = [
                'date' => date('Y-m-d',$value['createdDate']),
                'review' => $value['content'],
            ];
        }
        dd($reviews);
    }
}
