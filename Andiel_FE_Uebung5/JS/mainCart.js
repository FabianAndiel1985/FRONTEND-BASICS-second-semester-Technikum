import {Cart} from './cartClass.js';

$(document).ready(function() {
	let cart = new Cart();
	cart.getCartData();
	cart.initGUIEvents();

});