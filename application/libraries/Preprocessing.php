<?php
defined('BASEPATH') or exit('No direct script access allowed');


class Preprocessing
{
    var $detail;

    public function process($text, $stopword = true, $lower = true, $filter = true)
    {
        $ret = [];
        $file_stopword = "application/sources/stopword.txt";
        $GLOBALS['stopwords'] = explode("\n", file_get_contents($file_stopword));

        $ret['plain'] = $text;
        if ($lower) {
            $text_lower = strtolower($text);
        } else {
            $text_lower = $text;
        }
        $ret['lower'] = $text_lower;

        if ($filter) {
            $text_filtered = trim(preg_replace('/\s+/', ' ', $text_lower));
            $text_filtered = preg_replace('/(pic\.twitter\.com\/.*)\w+/', '', $text_filtered);
            $text_filtered = preg_replace("@(https?://([-\w\.]+[-\w])+(:\d+)?(/([\w/_\.#-]*(\?\S+)?[^\.\s])?).*$)@", ' ', $text_filtered); // remove link
            $text_filtered = preg_replace("/#\w+\s*/", '', $text_filtered); //remove hashtag
            $text_filtered = preg_replace("/@\w+\s*/", '', $text_filtered); //remove @
            $text_filtered = preg_replace("/[^a-zA-Z0-9\s .]/", "", $text_filtered);
            $text_filtered = trim($text_filtered);
        } else {
            $text_filtered = $text_lower;
        }
        $ret['filter'] = $text_filtered;

        $stemmerFactory = new \Sastrawi\Stemmer\StemmerFactory();
        $stemmer  = $stemmerFactory->createStemmer();

        if ($lower) {
            $text_segment_stem = $stemmer->stem($text_filtered);
        } else {
            $text_segment_stem = $text_filtered;
        }

        $ret['stem'] = $text_segment_stem;

        $text_tokenization = explode(" ", $text_segment_stem);

        $ret['token'] = $text_tokenization;

        if ($stopword) {
            $text_stopwordremove = array_filter($text_tokenization, function ($key) {
                return !in_array($key, $GLOBALS['stopwords']);
            });
        } else {
            $text_stopwordremove = $text_tokenization;
        }

        $ret['stopword'] = $text_stopwordremove;

        $CI = &get_instance();

        $db_kata_tidak_baku = $CI->db->select('*,(select kata_baku from kata_baku where id=kata_tidak_baku.fk_kata_baku) as kata_baku')
            ->get('kata_tidak_baku')
            ->result();

        $kata_tidak_baku  = [];
        foreach ($db_kata_tidak_baku as $key => $value) {
            $kata_tidak_baku[$value->kata_tidak_baku] = $value->kata_baku;
        }

        foreach ($text_stopwordremove as $key => $value) {
            if (array_key_exists($value, $kata_tidak_baku)) {
                $text_stopwordremove[$key] = $kata_tidak_baku[$value];
            }
        }

        $ret['kata_baku'] = $text_stopwordremove;

        $this->detail = $ret;
        return $text_stopwordremove;
    }
}
