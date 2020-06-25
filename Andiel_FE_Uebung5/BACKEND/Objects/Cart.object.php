<?php 

class Cart {
	
	function __construct($cart) {
    	$this->cart = $cart;
    	$this->calculate($cart);
  	}

  	function calculate($cart) {
  		$price=0;
  		for($x=0;$x<count($cart);$x++) {
        if (array_key_exists($x,$cart)) {
  			$price += $cart[$x]->price;
        }
  		}
  		$this->wholePrice = $price;
  	}

  	

  }

