<?php 

class GetProductByArticleId {

	public function buildQuery($articleId) {
		return "SELECT p.name AS productName,p.price_of_sale as price FROM products p WHERE p.id = $articleId";
	}
}
