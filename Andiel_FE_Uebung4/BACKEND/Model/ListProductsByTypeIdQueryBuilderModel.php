<?php 

class ListProductsByTypeIdQueryBuilder {
	
	public function buildQuery($productTypeId) {
		return "SELECT t.name AS productTypeName, p.name AS prodcutName
				FROM product_types t
				JOIN products p ON t.id = p.id_product_types
				WHERE t.id = {$productTypeId}";
	}
}