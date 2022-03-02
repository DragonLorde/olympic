<?php  

require_once('core/core.php');

class auth {
    private $login;
    private $pass;
    private $Uid;
    private $bd;

    function __construct($bd) {
        $rawData = json_decode(file_get_contents('php://input') , JSON_UNESCAPED_UNICODE);
        $this->login = $rawData['login'];
        $this->pass = $rawData['pass'];
        $this->bd = $bd;
    }

    public function auth() {
        $stmt = $this->bd->prepare("SELECT `login`, `pass` FROM `users` WHERE `login` = ? AND `pass` = ?");
        $stmt->execute(array($this->login, $this->pass));
        $name = $stmt->fetchColumn();
            if ($name) {
                $uuid = uniqid();
                $res = $this->addUiid($uuid);
                    if ($res) {
                        echo json_encode( array( "uuid" => $uuid, "login" => $this->login, 'code' => 201) );
                    } else {
                        echo 'error';
                    }
            } else {
                echo json_encode ( array( "error" => 200 ) );
            }
    }

    private function addUiid($uuid) {
        $stmt = $this->bd->prepare("UPDATE `users` SET `Uid`= ? WHERE `login` = ? AND `pass` = ?");
        $stmt->execute(array($uuid , $this->login, $this->pass));
        if ($stmt) {
            return true;
        }
    }
}

$res = new auth($conn);
$res->auth();


?>