<?php
/**
 * Created by PhpStorm.
 * User: Axel
 * Date: 01/07/2019
 * Time: 22:33
 */

interface Strategy
{
    public function getToMendoza($day);
    public function getFromMendoza($day);
    public function searchDisttrictToMendoza($row);
    public function searchMendozaToDistrict($row);
    public function getPlataform($routine);
    public function getLastArrival($day,$fromTo);
}