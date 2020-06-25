// Modal functionality

    modal = document.querySelector("#myModal");

    // Get the <span> element that closes the modal

    span = document.querySelector(".close");
    
    // get the dataprotection link

    dataprotection = document.querySelector("#dataprotection");

    // show modal on link click

    dataprotection.onclick = ()=> { modal.style.display = "block"}

    // make the x close the modal
    span.onclick = function() {
      modal.style.display = "none";
    }





