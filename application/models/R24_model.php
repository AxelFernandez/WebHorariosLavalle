<?php
/**
 * User: Axel
 * Date: 29/06/2019
 * Time: 20:21
 */
get_instance()->load->iface('Strategy');
class R24_model extends CI_Model implements Strategy {
   static $result = array();

   public function get24idaData(){
        $now = date('H:i:s', strtotime('-5 hours'));
        $query = $this->db->query('SELECT * FROM ruta24idatime where lavalle > "'.$now.'"');

        foreach ($query->result_array() as $row)
        {
            echo $row['lavalle'];
            echo '<br>';
        }

        echo 'Total Results: ' . $query->num_rows();
    }


    public function getToMendoza()
    {
        // TODO: Implement getToMendoza() method.
    }

    public function getFromMendoza()
    {
        // TODO: Implement getFromMendoza() method.
    }

    public function knowDestiny($row, $toOrFrom)
    {
        // TODO: Implement knowDestiny() method.
    }
}