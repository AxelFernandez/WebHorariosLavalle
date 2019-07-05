<?php
/**
 * User: Axel
 * Date: 29/06/2019
 * Time: 20:21
 */
get_instance()->load->iface('Strategy');
class R24_model extends CI_Model implements Strategy {
    public static $rowcolorRed = "table-danger";
    public static $rowcolorYellow = "table-warning";
    public static $rowcolorblue = "table-info";
    public static $to = 'to';
    public static $from = 'from';

    public function getToMendoza()
    {
        $now = date('H:i:s', strtotime('-5 hours'));
        $query = $this->db->query('SELECT * FROM ruta24idatime where lavalle > "'.$now.'"');

        $result = self::getheaderTable();

        foreach ($query->result() as $index => $row)
        {
            $rowcolor = self::$rowcolorblue;
            $origin = self::knowDestiny($row,self::$to);
            if ($index == 0){
                $rowcolor = self::$rowcolorYellow;
            }
           $result .= '<tbody>
            <tr class='.$rowcolor.'>
                <td>'.$origin.'</td>
                <td>'.$row->lavalle.'</td>
                <td>'.$row->mendoza.'</td>
            </tr>';
        }
        return $result;
    }

    public function getFromMendoza()
    {
        // TODO: Implement getFromMendoza() method.
    }

    public function knowDestiny($row, $toOrFrom)
    {
        $result = null;
        if ($toOrFrom == self::$to){
            if (!is_null($row->asuncion)){
                $result = "Asuncion";
            }elseif (!is_null($row->el15)){
                $result = "El 15";
            }elseif (!is_null($row->gustavoAndre)){
               $result = "Gustavo Andre";
            }elseif (!is_null($row->costaDeAraujo)){
                $result = "Costa de Araujo";
            }
        }

        return $result;
    }

    public function getPlataform()
    {
       return "Plataforma 3";
    }

    public function getTableName()
    {
        return "Horarios con Destino a Mendoza por Ruta 24";
    }

    public function  getheaderTable(){
        $result =  '<h3 align="center">'.self::getTableName().'</h3>
                    <h3 align="center">'.self::getPlataform().'</h3>
            <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col">Arriba Desde</th>
                <th scope="col">Hora de Arribo</th>
                <th scope="col">Hora de llegada</th>
            </tr>
            </thead>';
        return $result;

    }


}