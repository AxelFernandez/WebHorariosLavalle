<?php
/**
 * Created by PhpStorm.
 * User: Axel
 * Date: 01/07/2019
 * Time: 22:33
 */

interface Strategy
{
    public function getToMendoza($day,$origin);
    public function getFromMendoza($day,$origin);
    public function searchDisttrictToMendoza($row);
    public function searchMendozaToDistrict($row);
    public function getPlataform($routine,$origin);
    public function getLastArrival($day,$fromTo,$origin);
}
