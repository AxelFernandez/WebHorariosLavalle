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
    public function getToMendoza($day,$origin)
    {
        $now = date('H:i:s', strtotime(TIMEZONE));
        $query = $this->db->query('SELECT * FROM ruta40ida'.$day.' where '.$origin .' > "'.$now.'"');
        $result = array();
        foreach ($query->result() as $row){
            $hour = array();
            $originS = $this->searchDisttrictToMendoza($row); //we must know where is the origin point
            $destiny = $this->searchMendozaToDistrict($row);//we must know where the bus stop
			$x = $destiny[ROW_NAME];
            $hour[ROUTE] = self::$R40;
            $hour[FROM] = $originS[DESCRIPTION];
            $hour[TO] = $destiny[DESCRIPTION];
            $hour[ARRIVAL_HOUR] = $row->$origin;
            $hour[FINISH_HOUR] = $row->$x;
            $hour[PLATFORM] = self::getPlataform(IDA,$origin);
            $result[] = $hour;
        }
        return $result;
    }

    public function getFromMendoza($day,$origin)
    {
        $now = date('H:i:s', strtotime(TIMEZONE));
        $query = $this->db->query('SELECT * FROM ruta40vuelta'.$day.' where '.$origin.' > "'.$now.'"');
        $result = array();
        foreach ($query->result() as $row){
            $hour = array();
            $originS = $this->searchMendozaToDistrict($row); //we must know where is the origin point
            $destiny = $this->searchDisttrictToMendoza($row);//we must know where the bus stop
			$x = $destiny[ROW_NAME];
			$hour[ROUTE] = self::$R40;
            $hour[FROM] = $originS[DESCRIPTION];
            $hour[TO] = $destiny[DESCRIPTION];
            $hour[ARRIVAL_HOUR] = $row->$origin;
            $hour[FINISH_HOUR] = $row->$x;
            $hour[PLATFORM] = self::getPlataform(VUELTA,$origin);
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

    public function getPlataform($routine,$origin)
    {
		$result = null;
		if ($origin == MENDOZA_TABLE){
			$result = "Plataforma 52";

		}else{
			$result = $routine == IDA ? "Plataforma 3" : "Plataforma 2";

		}
		return $result;    }

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

    public function getLastArrival($day, $fromTo,$origin)
    {

        $now = date('H:i:s', strtotime(TIMEZONE));
        $query = $this->db->query('SELECT * FROM ruta40'.$fromTo.$day.' where '.$origin.' < "'.$now.'" ORDER BY '.$origin.' DESC Limit 1');
        $row = $query->row();
        $hour = array();
        if ($fromTo == IDA){
            $originS = $this->searchDisttrictToMendoza($row);
            $destiny = $this->searchMendozaToDistrict($row);
        }elseif($fromTo == VUELTA){
            $originS = $this->searchMendozaToDistrict($row);
            $destiny = $this->searchDisttrictToMendoza($row);
        }
        $hour[ROUTE] = self::$R40;
        $hour[FROM] = $originS[DESCRIPTION];
        $hour[TO] = $destiny[DESCRIPTION];
        $hour[ARRIVAL_HOUR] = $row->$origin;
        return $hour;

    }

}
