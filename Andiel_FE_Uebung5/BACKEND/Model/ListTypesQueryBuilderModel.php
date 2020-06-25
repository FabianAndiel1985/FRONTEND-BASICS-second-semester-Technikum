<?php 

class ListTypesQueryBuilder {
	public function buildQuery() {
		return "SELECT id, name FROM product_types ORDER BY id";
	}
}