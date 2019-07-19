<?php
/**
 * Created by PhpStorm.
 * User: Axel
 * Date: 05/07/2019
 * Time: 21:12
 */

class Daytouse_model extends CI_Model
{
    public function checkIsNoLaborableDay(){
        $result = WEEK;
        $year = date('Y', strtotime(TIMEZONE));
        $mounth = date('n', strtotime(TIMEZONE));
        $day = date('j', strtotime(TIMEZONE));
        $dayofWeek =  date('N', strtotime(TIMEZONE));
        if ($dayofWeek == 6){
            $result = SATURDAY;
        }elseif ($dayofWeek == 7){
            $result = SUNDAY;
        }else{
            $url = 'http://nolaborables.com.ar/api/v2/feriados/'.$year.'?incluir=opcional';
            $request = json_decode($this->curl($url),true);
            foreach ($request as $item) {
                if ($item['dia'] == $day && $item['mes'] == $mounth &&
                ($item['tipo'] == 'inamovible' || $item['tipo']== 'puente' || $item['tipo']=='trasladable')){
                    $result = SUNDAY;
                }
            }
        }
        return $result;



    }

    public function curl($url){
        $headers = array('Content-Type: application/json',);
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_POST, false);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true );
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        $result = curl_exec($ch);
        curl_close($ch);
        $something = $result;
        if(isset($something)){ return $something ; }
        else { return FALSE ; }
    }

}