<?php
defined('BASEPATH') OR exit('No direct script access allowed');
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Methods: GET, OPTIONS");
class MendozaTerminal extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Formater_model','table');
		$this->load->model('R24_model','R24');
		$this->load->model('R40_model','R40');
		$this->load->model('Daytouse_model','day');
		$this->load->helper('url');
	}
	public function index(){


		$this->load->view('MendozaTerminal.html');
	}
	public function getNextArrival(){
		$day = $this->day->checkIsNoLaborableDay();
		$result = null;
		$R24fromMendoza = $this->R24->getfromMendoza($day,MENDOZA_TABLE);
		$R40fromMendoza = $this->R40->getfromMendoza($day,MENDOZA_TABLE);

		$all = array_merge($R24fromMendoza,$R40fromMendoza);
		usort($all, function($a, $b) {
			return (strtotime($a[ARRIVAL_HOUR]) > strtotime($b[ARRIVAL_HOUR]));
		});
		$result .=  $this->table->getheaderTableMendozaTerminal();
		foreach ($all as  $index => $item) {
			if ($index == LIMIT){
				break;
			}
			$result .=  $this->table->formaterRowMendozaTerminal($item);
		}
		return $result;
	}

	public function getLastArrival(){
		$day = $this->day->checkIsNoLaborableDay();
		$all[] = $this->R24->getLastArrival($day,VUELTA,MENDOZA_TABLE);
		$all[] = $this->R40->getLastArrival($day,VUELTA,MENDOZA_TABLE);
		usort($all, function($a, $b) {
			return (strtotime($a[ARRIVAL_HOUR]) < strtotime($b[ARRIVAL_HOUR]));
		});
		$result = $this->table->getLastArrivalHeaderTerminalMendoza();
		foreach ($all as $item) {
			$result .= $this->table->formaterRowLastArrivalTerminalMendoza($item);
		}
		return $result;
	}

	public function getAjax(){
		echo $result = $this->getNextArrival(). $this->getLastArrival();
	}

}
