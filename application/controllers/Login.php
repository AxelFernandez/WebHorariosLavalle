<?php
/**
 * Created by PhpStorm.
 * User: Axel
 * Date: 14/07/2019
 * Time: 19:54
 */

class Login extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->library('session');
        $this->load->helper('url');
    }

    public function index()
    {
        $data = array();
        $this->load->view('Login.html');
    }
    public function logIn_post(){
        if ($this->input->post()) {
            $userName = $this->input->post('username');
            $password = $this->input->post('password');
            $this->load->model('User_model');
            $user = $this->User_model->userValidate($userName, $password);
            if ($user) {
                echo 'userValid';
                $userData = array(
                    'id'=>$user->iduser,
                    'userName' => $user->user,
                    'login' => TRUE
                );
                $this->session->set_userdata($userData);
                redirect('login/loged');

            } else {
                redirect('login/index');
            }
        }
    }
    public function loged() {
        if($this->session->userdata('login')) {
           redirect('backend/index');
        }
        else {
            redirect('login/index');
        }
    }
    public function logOut() {
        $usuario_data = array(
            'login' => FALSE
        );
        $this->session->sess_destroy();
        redirect('login/index');
    }
}
