<?php
// LOGIN.PHP
// HỒ SĨ HÙNG - LÊ TUẤN LIÊM
session_start();
require 'loginModel.php';
$loginModel = new loginModel();

if (!empty($_POST['user']) && !empty($_POST['pass'])) {
    if ($loginModel->logIn($_POST['user'], $_POST['pass']) == 1) {
        $_SESSION["account"] = $_POST['user'];

        //Lấy id để phục vụ shopping cart
        $_SESSION["ID_account"] = $loginModel->getIDByUserName($_POST['user'])["ID_account"];
<<<<<<< HEAD
        header("Location: index.php");
    } else if ($loginModel->logIn($_POST['user'], $_POST['pass']) == 0) {
=======
        header("Location: loginSuccessfully.html");
    }
    else if ($loginModel->logIn($_POST['user'], $_POST['pass']) == 0) {
>>>>>>> linh
        $_SESSION["admin"] = $_POST['user'];

        //Lấy id để phục vụ shopping cart
        $_SESSION["ID_account"] = $loginModel->getIDByUserName($_POST['user'])["ID_account"];
<<<<<<< HEAD
        header("Location: admin.php");
=======
        header("Location: loginSuccessfully.html");
>>>>>>> linh
    }
?>
<?php
}
?>