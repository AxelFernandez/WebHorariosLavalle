<?php
/**
 * User: Axel
 * Date: 29/06/2019
 * Time: 20:21
 */
get_instance()->load->iface('Strategy');
class R24_model extends CI_Model implements Strategy {

    public static $R24 = 'R24';
    public static $Mendoza = 'Mendoza';


    /**
     * Use 'week', 'saturday' or 'sunday' to change the day
     * */
    public function getToMendoza($day,$origin)
    {
        $now = date('H:i:s', strtotime(TIMEZONE));
        $query = $this->db->query('SELECT * FROM ruta24ida'.$day.' where '.$origin.' > "'.$now.'"');
        $result = array();
        foreach ($query->result() as $row){
            $hour = array();
            $destiny = $this->searchDisttrictToMendoza($row);
            $hour[ROUTE] = self::$R24;
            $hour[FROM] = $destiny[DESCRIPTION];
            $hour[TO] = self::$Mendoza;
            $hour[ARRIVAL_HOUR] = $row->lavalle;
            $hour[FINISH_HOUR] = $row->mendoza;
            $hour[PLATFORM] = self::getPlataform(IDA,$origin);
            $result[] = $hour;
        }
        return $result;
    }

    public function getFromMendoza($day,$origin)
    {
        $now = date('H:i:s', strtotime(TIMEZONE));
        $query = $this->db->query('SELECT * FROM ruta24vuelta'.$day.' where '.$origin.' > "'.$now.'"');
        $result = array();
        foreach ($query->result() as $row){
            $hour = array();
            $destiny = $this->searchDisttrictToMendoza($row);
            $finish = $destiny[ROW_NAME];
            $hour[ROUTE] = self::$R24;
            $hour[FROM] = self::$Mendoza;
            $hour[TO] = $destiny[DESCRIPTION];
            $hour[ARRIVAL_HOUR] = $row->$origin;
            $hour[FINISH_HOUR] = $row->$finish;
            $hour[PLATFORM] = self::getPlataform(VUELTA,$origin);
            $result[] = $hour;
        }
        return $result;
    }

    public function searchDisttrictToMendoza($row)
    { $result = null;
        $distToMendoza = unserialize (R24DistToMendoza);
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
    		$result = "Plataforma 51";

		}else{
			$result = $routine == IDA ? "Plataforma 3" : "Plataforma 2";

		}
        return $result;
    }

    public function searchMendozaToDistrict($row)
    {
        $result = null;
        $mendozaToDist = unserialize (R24MendozaToDist);
        foreach ($mendozaToDist as $item){
            if (!empty($row->$item)){
                $result[DESCRIPTION] = $this->config->item($item);
                $result[ROW_NAME] = $item;
                break;
            }
        }

        return $result;    }

    public function getLastArrival($day,$fromTo,$origin)
    {
        $now = date('H:i:s', strtotime(TIMEZONE));
        $query = $this->db->query('SELECT * FROM ruta24'.$fromTo.$day.' where '.$origin.' < "'.$now.'" ORDER BY '.$origin.' DESC Limit 1');
        $row = $query->row();
        $hour = array();
        if ($fromTo == IDA){
            $originS = $this->searchDisttrictToMendoza($row);
            $destiny = $this->searchMendozaToDistrict($row);
        }elseif($fromTo == VUELTA){
            $originS = $this->searchMendozaToDistrict($row);
            $destiny = $this->searchDisttrictToMendoza($row);
        }
        $hour[ROUTE] = self::$R24;
        $hour[FROM] = $originS[DESCRIPTION];
        $hour[TO] = $destiny[DESCRIPTION];
        $hour[ARRIVAL_HOUR] = $row->$origin;
        return $hour;

    }
}
