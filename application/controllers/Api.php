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
		echo json_encode(array('version' => 1));

	}

	public function download(){

		echo $this->api->getAll();


	}
}
