<?php
/**
 * Created by PhpStorm.
 * User: Axel
 * Date: 05/07/2019
 * Time: 21:24
 */

class Formater_model extends CI_Model
{
    public static $rowcolorRed = "table-danger";
    public static $rowcolorYellow = "table-warning";
    public static $rowcolorblue = "table-info";

    public function  getheaderTable(){
        $result =  '
            <table class="table table-striped">
            <h3 align="center">Próximos Arribos</h3>
            <thead>
            <tr>
                <th scope="col">Ruta</th>
                <th scope="col">Arriba Desde</th>
                <th scope="col">Hora de Arribo</th>
                <th scope="col">Destino</th>
                <th scope="col">Hora de llegada</th>
                <th scope="col">Plataforma</th>
            </tr>
            </thead>';
        return $result;

    }

    public function formaterRow($hour){
        $result = null;

        $rowcolor = self::$rowcolorblue;
        $result .= '<tbody>
        <tr class='.$rowcolor.'>
            <th scope="row">'.$hour[ROUTE].'</th>
            <th scope="row">'.$hour[FROM].'</th>
            <td>'.$hour[ARRIVAL_HOUR].'</td>
            <td>'.$hour[TO].'</td>
            <td>'.$hour[FINISH_HOUR].'</td>
            <td>'.$hour[PLATFORM].'</td>
        </tr>';


        return $result;

    }


    public function getLastArrivalHeader(){
        $result =  '
            <table class="table table-striped">
            <h3 align="center">Ultimas Salidas</h3>
            <thead>
            <tr>
                <th scope="col">Ruta</th>
                <th scope="col">Arribó Desde</th>
                <th scope="col">Destino</th>
                <th scope="col">Hora de Arribo</th>
            </tr>
            </thead>';
        return $result;
    }

    public function formaterRowLastArrival($hour){
        $result = null;

        $rowcolor = self::$rowcolorRed;
        $result .= '<tbody>
        <tr class='.$rowcolor.'>
            <th scope="row">'.$hour[ROUTE].'</th>
            <th scope="row">'.$hour[FROM].'</th>
            <td>'.$hour[TO].'</td>
            <td>'.$hour[ARRIVAL_HOUR].'</td>
        </tr>';


        return $result;

    }

    public function formaterHeadTaxi(){
        $result =  '
            <table class="table table-striped">
            <h3 align="center">Taxi</h3>
            <thead>
            <tr>
                <th scope="col">Nombre</th>
                <th scope="col">Telefono</th>
            </tr>
            </thead>';
        return $result;


    }
    public function formaterRowTaxi($taxi){
        $result = null;
        $rowcolor = self::$rowcolorYellow;
        $result .= '<tbody>
        <tr class='.$rowcolor.'>
            <td>'.$taxi[NAME].'</td>
            <td>'.$taxi[PHONE].'</td>
        </tr>';


        return $result;

    }

}