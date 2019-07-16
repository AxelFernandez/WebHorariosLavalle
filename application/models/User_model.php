<?php
/**
 * Created by PhpStorm.
 * User: Axel
 * Date: 14/07/2019
 * Time: 21:22
 */

class User_model extends CI_Model
{
    public function userValidate($user,$pass){
        $this->db->select('*');
        $this->db->from('user');
        $this->db->where('user', $user);
        $this->db->where('password', $pass);
        $query = $this->db->get();
        $result = $query->row();
        return $result;
    }
    public function cambiarcontraseña($user, $pass, $newpass){
        $this->db->select('*');
        $this->db->from('user');
        $this->db->where('user', $user);
        $this->db->where('password', $pass);
        $consulta = $this->db->get();
        foreach ($consulta->result_array() as $datarow){
            if ($datarow['password']==$pass){
                $this->db->query("Update usuario set contraseña='".$newpass."' where idusuario='".$datarow['idusuario']."';");
                return true;
            }
            else{return false;}
        }
    }
}