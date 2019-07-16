<?php
/**
 * Created by PhpStorm.
 * User: Axel
 * Date: 11/07/2019
 * Time: 22:46
 */

class Taxi_model extends CI_Model
{

    public function getTaxi(){
        $query = $this->db->query('SELECT * FROM taxi');
        $result = array();
        foreach ($query->result() as $item) {
            $taxi = array();
            $taxi[NAME] = $item->name;
            $taxi[PHONE] = $item->phone;
            $result[] = $taxi;
        }
    return $result;
    }

    public function managementTaxi(){
        $this->load->library('grocery_CRUD');
        $crud = new grocery_CRUD();
        $crud->set_table('taxi');
        $crud->display_as('idTaxi','ID');
        $crud->display_as('name','Nombre');
        $crud->display_as('phone','Telefono');
        $crud->set_language("Spanish");
        $crud->unset_clone();
        $crud->unset_export();
        $crud->unset_read();
        $crud->unset_print();
        $crud->columns('idTaxi','name','phone');

        $output = $crud->render();

        return $output;
    }

}