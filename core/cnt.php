<?php
require_once('core/core.php');

function GetCom($bd, $login) {
    $stmt = $bd->prepare('SELECT COUNT(*) FROM `otvet` WHERE `login` = ?');
    $stmt->execute( array( $login ) );
    $res = $stmt->fetchColumn();
    echo json_encode( array( 'count' => $res ) );
}


$rawData = json_decode(file_get_contents('php://input') , JSON_UNESCAPED_UNICODE);


GetCom($conn , $rawData['login'])

?>