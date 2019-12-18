<?php


class Api extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->database();
		$this->load->helper('url');
		$this->load->model('Api_model','api');


	}

	public function index(){
		echo json_encode(array('version' => 1,'special'=>true));

	}

	public function download(){

		echo $this->api->getAll();


	}

	public function special(){

		echo ('<iframe src='.SPECIAL_HOUR_URL.' style="position:fixed; top:0; left:0; bottom:0; right:0; width:100%; height:100%; border:none; margin:0; padding:0; overflow:hidden; z-index:999999;">');

	}
}
