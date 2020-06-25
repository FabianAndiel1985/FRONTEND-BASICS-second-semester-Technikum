class ProductInterface {

  initGUIEvents() {
      $("#showCategoriesButton").on("click",()=>{
          let data = {action:"listTypes"};
          this.getProductData(data);
      } );

       $("tbody").on("click","button.btn-category",
             (event)=> {
               this.showProductsByCategory(event);
             })

       $("tbody").on("click","button.btn-addToCart",
             (event)=> {
               let articleId = event.target.value;
               let articleName = event.target.parentNode.previousSibling.innerHTML;
               this.addArticleToCart(articleId,articleName);
             })

        $("tbody").on("click","button.btn-removeFromCart",
             (event)=> {
                let articleId = event.target.value;
                this.removeArticleFromCart(articleId);
             })
  }



  showProductsByCategory(event) {
               let productTypeId = this.getProductTypeId(event);
               if(1 <= productTypeId && productTypeId <= 12 ) {
                 let data = {action:"listProductsByTypeId",typeId:productTypeId};
                 this.getProductData(data);
               }
               else {
                 console.log("Sorry no products available under this category");
               }
  }


  getProductData (data) {
        $.ajax({
            url: "./BACKEND/index.php",
            method: "GET",
            data: data,
            success:
            (response)=> {
                  this.resetTable();

                  if(response.hasOwnProperty('productType')) {
                     this.setTableHeader(response.productType);
                     var responseProductsArray=response.products;
                     this.fillTable(responseProductsArray);
                  }

                  else {
                  this.fillTable(response);
                  }
            }
            ,
            error: function(error) {
                console.log(error);
            }
        });
    }


    resetTable(tableId) {
       $("thead").empty();
       $("tbody").empty();
    }


    fillTable(data){
        for(let i=0;i<data.length;i++) {
          let $row = `<tr>`;

            if(data[i].hasOwnProperty('productTypeId')) {
              $row += this.fillUpProductCategoryOverview($row,data[i]);
            }

            else {
              $row += this.fillUpProductCategoryDetails($row,data[i]);
              
            }

            $("tbody").append($row);
        }
      }


      fillUpProductCategoryOverview($row,data) {
        $row += `<td> ${data.productTypeId} </td>`;
        $row += `<td> ${data.productType} </td>` 
        $row += `<td><button type='button' class='btn btn-success btn-category'>Show category</button> </td> </tr>`;
        return $row;
      }

      fillUpProductCategoryDetails($row,data) {
        $row += `<td> name: </td>`;
        $row += `<td> ${data.name} </td>`;
        $row += `<td><button type='button' value=${data.id} class='btn btn-success btn-addToCart'>Add to cart</button> </td>`;
        $row += `<td><button type='button' value=${data.id} class='btn btn-success btn-removeFromCart'>Remove from cart</button> </td> </tr>`;
        return $row;
      }

    getProductTypeId(event) {   
        let productTypeId = parseInt(event.target.parentNode.previousSibling.previousSibling.innerHTML);
        return productTypeId;
    }


    setTableHeader(productType) {
      let $tableHead= $("thead");
      let $row = `<tr>`
      $row += `<th> Category </th>`;
      $row += `<th> ${productType} </th> </tr>`;
      $tableHead.append($row);
    }

    addArticleToCart(articleId,articleName) {
      $.ajax({
            url: "./BACKEND/index.php",
            method: "GET",
            data: {action:"addArticle",articleId:articleId},
            success:
            (response)=> {
                  $("#articleName").text(articleName);
                  $('.modal').modal('toggle');
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









}



export { ProductInterface};