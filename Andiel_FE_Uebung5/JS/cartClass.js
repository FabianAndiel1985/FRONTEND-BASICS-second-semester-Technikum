class Cart {

    initGUIEvents() {
       $("tbody").on("click","button.btn-addToCart",
             (event)=> {
               let articleId = event.target.value;
               this.addArticleToCart(articleId);
               this.getCartData();
             })

        $("tbody").on("click","button.btn-removeFromCart",
             (event)=> {
                  let articleId = event.target.value;
                  this.removeArticleFromCart(articleId); 
                  this.getCartData();
             })
  }

    addArticleToCart(articleId) {
      $.ajax({
            url: "./BACKEND/index.php",
            method: "GET",
            data: {action:"addArticle",articleId:articleId},
            success:
            (response)=> {
                  console.log(response);
            }
            ,
            error: function(error) {
                console.log(error);
            }
        });
    }



    removeArticleFromCart(articleId) {
      $.ajax({
            url: "./BACKEND/index.php",
            method: "GET",
            data: {action:"removeArticle",articleId:articleId},
            success:
            (response)=> {
                  console.log(response);
            }
            ,
            error: function(error) {
                console.log(error);
            }
        });
    }


	getCartData() {
		$.ajax({
            url: "./BACKEND/index.php",
            method: "GET",
            data: {action:"listCart"},
            success:
            (response)=> {
               $("tbody").empty();
               this.displayShoppingCart(response);  
            }
            ,
            error: function(error) {
                console.log(error);
            }
        });
	}

	displayShoppingCart(shoppingCart) {
		  for(let i=0;i<shoppingCart.cart.length;i++) {
          	let $row = `<tr>`;
          	$row += `<td> ${shoppingCart.cart[i].name} </td>`;
        	  $row += `<td> ${shoppingCart.cart[i].amount} </td>`; 
            $row += `<td> ${shoppingCart.cart[i].price} </td>`;
            $row += `<td><button type='button' value=${shoppingCart.cart[i].id} class='btn btn-success btn-addToCart btn-increase'>Increase Amount</button> </td>`;
            $row += `<td><button type='button' value=${shoppingCart.cart[i].id} class='btn btn-success btn-removeFromCart btn-decrease'>Decrease Amount</button> </td> </tr>`; 
           	$("tbody").append($row);
        }
        let $row = `<tr><td class='font-weight-bold'>whole price</td>`
        $row += `<td></td>`
        $row += `<td class='font-weight-bold'>${shoppingCart.wholePrice}</td></tr>`;
        $("tbody").append($row);		
	}

}

export {Cart};