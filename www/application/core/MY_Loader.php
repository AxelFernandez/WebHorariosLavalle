<?php
class  MY_Loader extends CI_Loader {
    public function __construct() {

        parent::__construct();

    }

    public function iface($strInterfaceName) {

        require_once APPPATH . '/interfaces/' . $strInterfaceName . '.php';

    }

}