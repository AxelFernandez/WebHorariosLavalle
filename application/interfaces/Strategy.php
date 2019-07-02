<?php
/**
 * Created by PhpStorm.
 * User: Axel
 * Date: 01/07/2019
 * Time: 22:33
 */

interface Strategy
{
    public function getToMendoza();
    public function getFromMendoza();
    public function knowDestiny($row,$toOrFrom);
}