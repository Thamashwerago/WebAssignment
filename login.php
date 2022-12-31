<?php
session_start();

$conn = mysqli_connect('localhost', 'root', '', 'travel');
if (!$conn) {
    die("connection failed" . mysqli_connect_error());
}

function validate($data)
{
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

if (isset($_POST["username"]) && isset($_POST["email"])) {
    $username = mysqli_real_escape_string($conn, validate(strtolower($_POST['username'])));
    $password = mysqli_real_escape_string($conn, validate($_POST['password']));
    $email = mysqli_real_escape_string($conn, validate($_POST['email']));

    $sql = "INSERT INTO users (username,email,password) VALUES('$username','$email','$password')";
    if (mysqli_query($conn, $sql)) {
        $sql = "SELECT userId FROM users WHERE username='$username' AND password='$password'";
        $result = mysqli_query($conn, $sql);
        if (mysqli_num_rows($result) == 1) {
            $row = mysqli_fetch_assoc($result);
            $_SESSION["userid"] = $row["userId"];
            echo true;
        } else {
            echo false;
        }
    } else {
        echo false;
    }
} elseif (isset($_POST["username"]) && !isset($_POST["email"])) {
    $username = mysqli_real_escape_string($conn, validate(strtolower($_POST['username'])));
    $password = mysqli_real_escape_string($conn, validate($_POST['password']));

    $sql = "SELECT userId,username,password FROM users WHERE username='$username' AND password='$password'";

    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) == 1) {
        $row = mysqli_fetch_assoc($result);
        if (($row["username"] == $username) && ($row["password"] == $password)) {
            $_SESSION["userid"] = $row["userId"];
            echo true;
        } else {
            echo false;
        }
    } else {
        echo false;
    }
}

mysqli_close($conn);

?>