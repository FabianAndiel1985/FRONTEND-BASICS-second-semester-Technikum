const DataManager = class {
    
    getAndShowData() {
        $.ajax({
            url: "https://www.httpbin.org/get",
            method: "GET",
            success:
            (response)=> {
            	this.showData(response);
            }
            ,
            error: function(error) {
                console.log(error);
            }
        });
    } 


    showData(response) {
    	this.buildTableStructure();
    	this.putKeysAndValuesIntoTableRows(response);
    }

    buildTableStructure () {
    	$(".container").append(`
    		<div id="table-container" class="mt-5 mx-auto">
    		<table id="tablebody" class="table table-striped ">
            	<thead>
                	<tr>
                    	<th scope="col">Key</th>
                    	<th scope="col">Value</th>
                	</tr>
           		</thead>
            	<tbody>

    			</tbody>
        	</table>
        	</div>`);
    }

    // Here we are looping over a multi dimensional Json Object, which we get back from the website
    putKeysAndValuesIntoTableRows(dataToDisplay) {
    	 	for (var key in dataToDisplay) {
  				if(typeof dataToDisplay[key] === 'object') {
  					for( var key2 in dataToDisplay[key]) {
  						$("#tablebody").append(`<tr><td>${key2}</td><td class="value">${dataToDisplay[key][key2]}</td></tr>`);
  					}
  				}
  				else {
  					$("#tablebody").append(`<tr><td>${key}</td><td class="value">${dataToDisplay[key]}</td></tr>`);
  				}
			}
    }

}





