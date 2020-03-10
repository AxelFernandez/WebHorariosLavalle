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
		echo json_encode(array('version' => 16,'special'=>false));

	}

	public function download(){

		echo $this->api->getAll();


	}

	public function current(){
		echo("<meta content='user-scalable=no, initial-scale=1, width=device-width' id='viewport' name='viewport'>");
		echo ("<title>Horarios de Invierno 2020</title>");
		echo ('<iframe src='.CURRENT_HOUR_URL.' style="position:fixed; top:0; left:0; bottom:0; right:0; width:100%; height:100%; border:none; margin:0; padding:0; overflow:hidden; z-index:999999;"/>');


	}
	public function special(){

		echo("<meta content='user-scalable=no, initial-scale=1, width=device-width' id='viewport' name='viewport'>");
		echo ("<title>Horarios Especiales</title>");
		echo ('<iframe src='.SPECIAL_HOUR_URL.' style="position:fixed; top:0; left:0; bottom:0; right:0; width:100%; height:100%; border:none; margin:0; padding:0; overflow:hidden; z-index:999999;"/>');

	}
}
