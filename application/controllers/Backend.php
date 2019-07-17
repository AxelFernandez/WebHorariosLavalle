<?php
/**
 * Created by PhpStorm.
 * User: Axel
 * Date: 15/07/2019
 * Time: 19:58
 */

class Backend extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
        $this->load->helper('url');
        $this->load->library('session');
        $this->load->library('grocery_CRUD');
        $this->load->model('Taxi_model','taxi');
        $this->load->model('User_model','users');

    }
    public function index(){
        redirect('backend/taxi');
    }
    public function taxi(){
        if ($this->session->userdata('login')) {
            $output = $this->taxi->managementTaxi();
            $this->load->view('backend', $output);

        }else{redirect('login/index');}

    }
    public function user(){
        if ($this->session->userdata('login')) {
            $output = $this->users->showUsers();
            $this->load->view('backend', $output);

        }else{redirect('login/index');}

    }
    public function logout(){
        redirect('login/logOut');
    }
}