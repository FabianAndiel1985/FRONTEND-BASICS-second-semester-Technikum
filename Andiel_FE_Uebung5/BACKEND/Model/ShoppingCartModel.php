<?php

class ShoppingCartModel{

	function addItemToCart($item) {

	 	$articleInCart = $this->checkArticleInCart($item);

	 	if($articleInCart) {
	 		$indexOfArticle = $this->getIndexOfArticle($item[0]['productName']);
	 		$_SESSION["articles"][$indexOfArticle]->amount++;
	 		$_SESSION["articles"][$indexOfArticle]->price += $item[0]['price'];

	 		$answer = json_encode($this->buildAnswer("OK"));
			return $answer;
	 	}


	 	else {
	 		$_SESSION["articles"][] = new Article($_GET['articleId'],$item[0]['productName'],$item[0]['price']);
	 		$answer = json_encode($this->buildAnswer("OK"));
			return $answer;
	 	}
	}


	function removeItemFromCart($item) {
	 	$articleInCart = $this->checkArticleInCart($item);
		
		if($articleInCart) {
			$indexOfArticle = $this->getIndexOfArticle($item[0]['productName']);
			$this->reduceOrRemoveArticle($indexOfArticle,$item[0]['price']);
			$answer = json_encode($this->buildAnswer("OK"));
			return $answer;
		}

		else {
			$answer = json_encode($this->buildAnswer("ERROR"));
			return $answer;
		}
	}


	private function buildAnswer($state) {
		$answer=new stdClass();
		$answer->state=$state;
		return $answer;
	}


	private function reduceOrRemoveArticle($indexOfArticle,$articlePrice) {
		if ($_SESSION["articles"][$indexOfArticle]->amount > 1) {
			$_SESSION["articles"][$indexOfArticle]->amount--;
			$_SESSION["articles"][$indexOfArticle]->price -= $articlePrice;
		}
		else {
			unset($_SESSION["articles"][$indexOfArticle]);	
			$_SESSION["articles"] = array_values($_SESSION["articles"]);
		}
	}	

	 private function getIndexOfArticle($item) {
	 		foreach ($_SESSION["articles"] as $key => $value) {
	 			if($value->name == $item) {
	 				return $key;
	 			}
	 		}
	 }

	 private function checkArticleInCart($item) {
	 	if(isset($_SESSION["articles"])) {
	 		return $this->checkArticleInSessionArray($item);
		}
		return false;
	}

	private function checkArticleInSessionArray($item) {
		for ($x = 0; $x < count($_SESSION["articles"]); $x++) {
  			if (isset($_SESSION["articles"][$x]->name) && $_SESSION["articles"][$x]->name == $item[0]['productName']) {
  				return true;
				}
			}
	}



}
