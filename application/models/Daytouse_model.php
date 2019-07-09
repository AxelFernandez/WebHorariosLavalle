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
        $year = date('Y', strtotime('-5 hours'));
        $mounth = date('n', strtotime('-5 hours'));
        $day = date('j', strtotime('-5 hours'));
        $dayofWeek =  date('N', strtotime('-5 hours'));
        if ($dayofWeek == 6){
            $result = SATURDAY;
        }elseif ($dayofWeek == 7){
            $result = SUNDAY;
        }else{
            $url = 'http://nolaborables.com.ar/api/v2/feriados/'.$year.'?incluir=opcional';
            $opts = array( 'http' => array ('method'=>'GET'));
            $ctx = stream_context_create($opts);
            $request = json_decode(file_get_contents($url,false,$ctx),true);
            foreach ($request as $item) {
                if ($item['dia'] == $day && $item['mes'] == $mounth &&
                ($item['tipo'] == 'inamovible' || $item['tipo']== 'puente' || $item['tipo']=='trasladable')){
                    $result = SUNDAY;

                }

            }
        }
        return $result;



    }



}