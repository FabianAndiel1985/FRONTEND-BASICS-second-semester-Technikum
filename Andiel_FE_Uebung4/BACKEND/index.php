    <?php

    include './Config/config.php';
    $datacontroller = new ShowDataController();
    $queryView = $datacontroller->route();
    echo $queryView;