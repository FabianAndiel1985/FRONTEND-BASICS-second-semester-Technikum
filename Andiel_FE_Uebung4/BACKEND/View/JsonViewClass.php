<?php 

class JsonView {

	public function __construct() {
        header('Content-Type: application/json');
    }


    public function buildListTypesView ($queryResultArray) {
    	$userView = array();

    	for($i=0;$i<count($queryResultArray);$i++) {
    		$myObj = new \stdClass();
            $myObj->productTypeId =  $queryResultArray[$i]['id'];
    		$myObj->productType = $queryResultArray[$i]['1'];
			$myObj->url = "http://localhost/Uebung3/index.php?action=listProductsByTypeId&typeId={$queryResultArray[$i]['id']}";
			$userView[]=$myObj;
    	}

    	$myJSON=json_encode($userView,JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES);

    	return $myJSON;
    }


    public function buildListProductsByTypeIdView ($queryResultArray) {
    	$userView = array();

    	for($i=0;$i<count($queryResultArray);$i++) {
    		$myObj = new \stdClass();
    		$myObj->name = $queryResultArray[$i]['prodcutName'];
			$userView[]=$myObj;
    	}

    	$myView = new \stdClass();
    	$myView->productType = $queryResultArray[0]['productTypeName'];
    	$myView->products = $userView;
    	$myView->url = "http://localhost/Uebung3/index.php?action=listProductsByTypeId&typeId={$_GET['typeId']}";

    	$myJSON=json_encode($myView,JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES);

    	return $myJSON;
    }




}