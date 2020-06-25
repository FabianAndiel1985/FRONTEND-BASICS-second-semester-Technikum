<?php

class ShowDataController {

	private $databaseConnectionQueryService;	
	private $jsonView;
	private $typeId;
	private $queryBuilderModel;
	private $articleId;
	private $shoppingCart;

	public function __construct() {
    		$this->databaseConnectionQueryService = new DatabaseConnectionQueryService();

    		$this->jsonView = new JsonView();
    		$this->shoppingCart = new ShoppingCartModel();
  	}


	public function route () {

		if (isset($_GET['action'])) {
			$this->getAndCheckURLParameters();	
		}

		if($this->queryBuilderModel != "") {

			$searchQuery = $this->getTheSearchQuery();

			$queryResultArray = $this->databaseConnectionQueryService->getData($searchQuery);

			if($_GET['action']=="addArticle") {
			$answer = $this->shoppingCart->addItemToCart($queryResultArray);
			return $answer;
			}

			elseif ($_GET['action']=="removeArticle") {
				$answer = $this->shoppingCart->removeItemFromCart($queryResultArray);
				return $answer;
			}
			
			else {
				$queryView = $this->buildView($queryResultArray);
				return $queryView;
			}	
		}
		
	}


	private function getAndCheckURLParameters() {

		switch ($_GET['action']) {
		    
		    case "listTypes":
		        $this->queryBuilderModel = new ListTypesQueryBuilder();
		        break;

		    case "listProductsByTypeId":
		        $this->validateTypeId();
		       	$this->getListProductsByTypeIdQB();
		        break;

		    case "addArticle":
		    	$this->validateArticleId();
		    	break;

		    case "removeArticle":
		    	$this->validateArticleId();
		    	break;
			
			
			// case "listCart":
			// print_r($_SESSION['articles']);
				// $array = array();

				// for ($x = 0; $x < count($_SESSION["articles"]); $x++) {
  		// 		$array[]=$_SESSION["articles"][$x];
				// }
	 		// 	print_r($array);
				// break;
			

		    default:
		        return "Please enter an valid action type and/or a type id";
		}
	}



	private function getListProductsByTypeIdQB() {
		 if($this->typeId != "") {
		        	$this->queryBuilderModel = new ListProductsByTypeIdQueryBuilder();		 
		        }
	} 



	private function validateTypeId() {
		if(isset($_GET['typeId'])) {

			if(1 <= $_GET['typeId'] && $_GET['typeId']<= 12) {
				$this->typeId = $_GET['typeId'];
			}

			elseif(13 <= $_GET['typeId'] && $_GET['typeId']<= 15) {
				echo "There are no products available in this category";
			}
			
			else {
				echo "Please enter a type id between 1 and 15";
			}
		}
	}



	private function validateArticleId() {
		if(isset($_GET['articleId'])) {

			if(1 <= $_GET['articleId'] && $_GET['articleId']<= 85) {
				$this->articleId = $_GET['articleId'];
				$this->queryBuilderModel= new GetProductByArticleId(); 
				}

			else {
				echo" Please enter a article id between 1 and 85";
				}
		}
	}



	private function getTheSearchQuery() {
		$searchQuery="";
		if ($this->typeId != ""){
				$searchQuery = $this->queryBuilderModel->buildQuery($this->typeId);
			}

		elseif ($this->articleId != "") {
				$searchQuery = $this->queryBuilderModel->buildQuery($this->articleId);
			}	
		else {
				$searchQuery = $this->queryBuilderModel->buildQuery();
			}

		return $searchQuery;
	}


	private function buildView($queryResultArray) {

			if(!isset($_GET['typeId'])) {
				return $this->jsonView->buildListTypesView($queryResultArray);
			}

			else {
				return  $this->jsonView->buildListProductsByTypeIdView($queryResultArray);
			}
	}
}