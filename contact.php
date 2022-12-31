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

if (isset($_POST["name"])) {
    if(isset($_SESSION["userid"])){
        $userid=$_SESSION["userid"];
    }else{
        $userid=0;
    }
    $name = mysqli_real_escape_string($conn,validate($_POST['name']));
    $email = mysqli_real_escape_string($conn,validate($_POST['email']));
    $number = mysqli_real_escape_string($conn,validate($_POST['number']));
    $address = mysqli_real_escape_string($conn,validate($_POST['address']));
    $summary = mysqli_real_escape_string($conn,validate($_POST['summary']));

    $sql = "INSERT INTO contact (userId,name,email,number,address,summary) VALUES('$userid','$name','$email','$number','$address','$summary')";
    if (mysqli_query($conn, $sql)) {
        echo true;
    } else {
        echo false;
    }
}

mysqli_close($conn);

?>