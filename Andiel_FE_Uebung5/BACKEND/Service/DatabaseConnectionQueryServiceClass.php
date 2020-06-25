<?php

 class DatabaseConnectionQueryService {

 	public function getData ($sqlQuery) {

		$queryResultArray = array();

		$pdoObject = new PDO("mysql:host=localhost;dbname=backend_basics_hausuebung3;charset=utf8","root","");
		
		try{

		 	foreach ($pdoObject->query($sqlQuery) as $row) {
		 			 	$queryResultArray[] = $row; 
		 			 }
		 	} 

		catch (PDOException $ex){
		 error_log("PDO ERROR: querying database: " . $ex->getMessage()."\n".$sql);
		}

		return $queryResultArray;

	}
}

