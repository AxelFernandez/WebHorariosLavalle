<?php
/**
 * Created by PhpStorm.
 * User: Axel
 * Date: 08/07/2019
 * Time: 20:33
 */

class R40_model extends CI_Model implements Strategy
{
    static $R40 = 'R40';
    public function getToMendoza($day)
    {
        $now = date('H:i:s', strtotime(TIMEZONE));
        $query = $this->db->query('SELECT * FROM ruta40ida'.$day.' where lavalle > "'.$now.'"');
        $result = array();
        foreach ($query->result() as $row){
            $hour = array();
            $origin = $this->searchDisttrictToMendoza($row); //we must know where is the origin point
            $destiny = $this->searchMendozaToDistrict($row);//we must know where the bus stop
            $hour[ROUTE] = self::$R40;
            $hour[FROM] = $origin[DESCRIPTION];
            $hour[TO] = $destiny[DESCRIPTION];
            $hour[ARRIVAL_HOUR] = $row->lavalle;
            $hour[FINISH_HOUR] = $row->$destiny[ROW_NAME];
            $hour[PLATFORM] = self::getPlataform(IDA);
            $result[] = $hour;
        }
        return $result;
    }

    public function getFromMendoza($day)
    {
        $now = date('H:i:s', strtotime(TIMEZONE));
        $query = $this->db->query('SELECT * FROM ruta40vuelta'.$day.' where lavalle > "'.$now.'"');
        $result = array();
        foreach ($query->result() as $row){
            $hour = array();
            $origin = $this->searchMendozaToDistrict($row); //we must know where is the origin point
            $destiny = $this->searchDisttrictToMendoza($row);//we must know where the bus stop
            $hour[ROUTE] = self::$R40;
            $hour[FROM] = $origin[DESCRIPTION];
            $hour[TO] = $destiny[DESCRIPTION];
            $hour[ARRIVAL_HOUR] = $row->lavalle;
            $hour[FINISH_HOUR] = $row->$destiny[ROW_NAME];
            $hour[PLATFORM] = self::getPlataform(VUELTA);
            $result[] = $hour;
        }
        return $result;
    }
    public function searchDisttrictToMendoza($row){
        $result = null;
        $distToMendoza = unserialize (R40DistToMendoza);
        foreach ($distToMendoza as $item){
            if (!empty($row->$item)){
                $result[DESCRIPTION] = $this->config->item($item);
                $result[ROW_NAME] = $item;
                break;
            }
        }

        return $result;
    }

    public function getPlataform($routine)
    {
        return $routine == IDA ? "Plataforma 3" : "Plataforma 4";
    }

    public function searchMendozaToDistrict($row)
    {
        $result = null;
        $mendozaToDist = unserialize (R40MendozaToDist);
        foreach ($mendozaToDist as $item){
            if (!empty($row->$item)){
                $result[DESCRIPTION] = $this->config->item($item);
                $result[ROW_NAME] = $item;
                break;
            }
        }

        return $result;
    }

    public function getLastArrival($day, $fromTo)
    {

        $now = date('H:i:s', strtotime(TIMEZONE));
        $query = $this->db->query('SELECT * FROM ruta40'.$fromTo.$day.' where lavalle < "'.$now.'" ORDER BY lavalle DESC Limit 1');
        $row = $query->row();
        $hour = array();
        if ($fromTo == IDA){
            $origin = $this->searchDisttrictToMendoza($row);
            $destiny = $this->searchMendozaToDistrict($row);
        }elseif($fromTo == VUELTA){
            $origin = $this->searchMendozaToDistrict($row);
            $destiny = $this->searchDisttrictToMendoza($row);
        }
        $hour[ROUTE] = self::$R40;
        $hour[FROM] = $origin[DESCRIPTION];
        $hour[TO] = $destiny[DESCRIPTION];
        $hour[ARRIVAL_HOUR] = $row->lavalle;
        return $hour;

    }

}