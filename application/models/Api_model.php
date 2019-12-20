<?php


class Api_model extends CI_Model
{

	public function getAll(){
		echo json_encode($this->get());
	}


	private function get(){
		$tables = unserialize(tables);
		foreach ($tables as $table) {

			$dist = $this->getDestiny($table);
			$allItems=null;
			foreach ($dist as $item){

				$query = $this->db->query('SELECT '.$item.' FROM '. $table );
				$currentItem = null;
				foreach ($query->result() as $row) {
					$currentItem[] = $row->$item;
				}
				$allItems[] = array($item => $currentItem);
			}
			$result[]= array($table => $allItems);
		}
		return $result;
	}

	private function getDestiny($tableName){
		$result = null;
		if (strstr($tableName,'ruta24ida')){
			$result = unserialize (R24DistToMendoza);
		}elseif (strstr($tableName, 'ruta24vuelta')){
			$result = unserialize (R24MendozaToDist);
		}elseif(strstr($tableName,'ruta40ida')){
			$result = unserialize (R40DistToMendoza);
		}elseif(strstr($tableName,'ruta40vuelta')){
			$result = unserialize (R40MendozaToDist);
		}elseif($tableName == 'califoniaidaweek' || $tableName == 'californiaidasaturday'){
			$result = unserialize(CaliforniaDistToCosta);
		}elseif ($tableName = 'califoniaidasunday'){
			$result = unserialize(CaliforniaDistToCostaSunday);
		}elseif($tableName == 'califoniavueltaweek' || $tableName == 'californiavueltasaturday') {
			$result = unserialize(CaliforniaCostaToDist);

		}elseif ($tableName = 'califoniavueltasunday'){
			$result = unserialize(CaliforniaCostaToDistSunday);
		}

		return $result;
	}
}
