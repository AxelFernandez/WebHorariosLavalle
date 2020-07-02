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
				$allItems[$item] = $currentItem;
			}
			$result[$table] = $allItems;
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
		}elseif($tableName == 'californiaidaweek' || $tableName == 'californiaidasaturday'){
			$result = unserialize(CaliforniaDistToCosta);
		}elseif ($tableName == 'californiaidasunday'){
			$result = unserialize(CaliforniaDistToCostaSunday);
		}elseif($tableName == 'californiavueltaweek' || $tableName == 'californiavueltasaturday') {
			$result = unserialize(CaliforniaCostaToDist);
		}elseif ($tableName == 'californiavueltasunday'){
			$result = unserialize(CaliforniaCostaToDistSunday);
		}elseif ($tableName =='internocostaidaweek' || $tableName == 'internocostaidasaturday'){
			$result = unserialize(InternoCostaToDist);
		}elseif ($tableName == 'internocostavueltaweek'|| $tableName == 'internocostavueltasaturday'){
			$result = unserialize(InternoDistToCosta);
		}elseif ($tableName == 'internocostaidasunday'){
			$result = unserialize(InternoCostaToDistSunday);
		}elseif ($tableName == 'internocostavueltasunday'){
			$result = unserialize(InternoDistToCostaSunday);
		}elseif ($tableName == 'internolavalleidaweek'){
			$result =unserialize(InternoVillaToDist);
		}elseif($tableName == 'internolavallevueltaweek'){
			$result = unserialize(InternoDistToVilla);
		}elseif ($tableName == 'internolavalleidasaturday'){
			$result = unserialize(InternoVillaToDistSaturday);
		}elseif ($tableName == 'internolavallevueltasaturday'){
			$result = unserialize(InternoDistToVillaSaturday);
		}


		return $result;
	}
}
