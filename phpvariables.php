<?php
session_start();

if (isset($_POST["userid_availability"])) {
    if (isset($_SESSION["userid"])) {
        echo true;
    } else {
        echo false;
    }
}
if (isset($_POST["logout"])) {
    session_unset();
    session_destroy();
    echo true;
}
if (isset($_POST["setplaceid"])) {
    $_SESSION["placeid"]=$_POST["setplaceid"];
    echo true;
}
if (isset($_POST["setcategory"])) {
    $_SESSION["category"]=$_POST["setcategory"];
    echo true;
}

?>