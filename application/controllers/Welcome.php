<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Formater_model','table');
        $this->load->model('R24_model','R24');
        $this->load->model('Taxi_model','taxi');
        $this->load->model('R40_model','R40');
        $this->load->model('Daytouse_model','day');
        $this->load->helper('url');

    }
    public function index(){


        $this->load->view('Home.html');
	}
	public function getNextArrival(){
        $day = $this->day->checkIsNoLaborableDay();
        $result = null;
        $R24toMendoza = $this->R24->getToMendoza($day);
        $R24fromMendoza = $this->R24->getfromMendoza($day);
        $R40toMendoza = $this->R40->getToMendoza($day);
        $R40fromMendoza = $this->R40->getfromMendoza($day);
        $all = array_merge($R24toMendoza,$R24fromMendoza,$R40toMendoza,$R40fromMendoza);

        usort($all, function($a, $b) {
            return (strtotime($a[ARRIVAL_HOUR]) > strtotime($b[ARRIVAL_HOUR]));
        });
        $result .=  $this->table->getheaderTable();
        foreach ($all as  $index => $item) {
            if ($index == LIMIT){
                break;
            }
            $result .=  $this->table->formaterRow($item);
        }
        return $result;
    }

    public function getLastArrival(){
        $day = $this->day->checkIsNoLaborableDay();
        $all[] = $this->R24->getLastArrival($day,IDA);
        $all[] = $this->R24->getLastArrival($day,VUELTA);
        $all[] = $this->R40->getLastArrival($day,IDA);
        $all[] = $this->R40->getLastArrival($day,VUELTA);
        usort($all, function($a, $b) {
            return (strtotime($a[ARRIVAL_HOUR]) < strtotime($b[ARRIVAL_HOUR]));
        });
        $result = $this->table->getLastArrivalHeader();
        foreach ($all as $item) {
            $result .= $this->table->formaterRowLastArrival($item);
        }
        return $result;
    }

    public function getAjax(){
        echo $result = $this->getNextArrival(). $this->getLastArrival();


    }
    public function getAjaxTaxi(){
        echo $this->getListtaxi();
    }
    public function getListtaxi(){
        $result =$this->table->formaterHeadTaxi();
        $taxi = $this->taxi->getTaxi();
        foreach ($taxi as $item) {
            $result .= $this->table->formaterRowTaxi($item);
        }
       return $result;
    }
}
