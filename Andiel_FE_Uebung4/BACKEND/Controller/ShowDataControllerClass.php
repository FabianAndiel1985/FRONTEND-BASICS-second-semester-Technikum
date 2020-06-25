<?php



class ShowDataController {

	private $databaseConnectionQueryService;	
	private $jsonView;
	private $typeId;
	private $queryBuilderModel;

	public function __construct() {
    		$this->databaseConnectionQueryService = new DatabaseConnectionQueryService();

    		$this->jsonView = new JsonView();
  	}


	public function route () {

		if (isset($_GET['action'])) {
			$this->getAndCheckURLParameters();
			
		}

		if($this->queryBuilderModel != "") {

			$searchQuery = $this->getTheSearchQuery();

			 $queryResultArray = $this->databaseConnectionQueryService->getData($searchQuery);

			$queryView = $this->buildView($queryResultArray);

			return $queryView;

		}
		
	}
	



	private function getAndCheckURLParameters() {

		switch ($_GET['action']) {
		    
		    case "listTypes":
		        $this->queryBuilderModel = new ListTypesQueryBuilder();
		        break;

		    case "listProductsByTypeId":
		        $this->validateTypeId();
		        if($this->typeId != "") {
		        	$this->queryBuilderModel = new ListProductsByTypeIdQueryBuilder();
		        }
		        break;

		    default:
		        return "Please enter an valid action type and/or a type id";
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


	private function getTheSearchQuery() {
		$searchQuery="";
		if ($this->typeId != ""){
				$searchQuery = $this->queryBuilderModel->buildQuery($this->typeId);
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