    <?php

	include './Objects/Article.object.php'; 
	session_start();

    include './Config/config.php';
    $datacontroller = new ShowDataController();

    if($_GET['action']=="listCart") {
        $cart=new Cart($_SESSION['articles']);
        print_r(json_encode($cart,JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES));
    }

    else {
    $queryView = $datacontroller->route();
    echo $queryView;
	}



