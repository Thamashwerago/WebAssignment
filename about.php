<?php

session_start();

$conn = mysqli_connect('localhost', 'root', '', 'travel');
if (!$conn) {
    die("connection failed" . mysqli_connect_error());
}

if (isset($_POST['user'])) {
    $sql = "SELECT * FROM users";

    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0) {
        $count = mysqli_num_rows($result);
        echo $count;
    }else{
        echo false;
    }
}
if (isset($_POST['place'])) {
    $sql = "SELECT * FROM places";

    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0) {
        $count = mysqli_num_rows($result);
        echo $count;
    }else{
        echo false;
    }
}
if (isset($_POST['visit'])) {
    $sql = "SELECT * FROM visits";

    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0) {
        $count = mysqli_num_rows($result);
        echo $count;
    }else{
        echo false;
    }
}
if (isset($_POST['review'])) {
    $sql = "SELECT * FROM comments";

    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0) {
        $count = mysqli_num_rows($result);
        echo $count;
    }else{
        echo false;
    }
}

mysqli_close($conn);
