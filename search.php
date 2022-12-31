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

if (isset($_POST["search"])) {
    $search = mysqli_real_escape_string($conn, validate(strtolower($_POST["search"])));
    $sql = "SELECT placeId,placename,thumbnail,likes,views FROM places WHERE placename LIKE '%" . $search . "%' LIMIT 20";

    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0) {
        $places = mysqli_fetch_all($result, MYSQLI_ASSOC);
        echo json_encode($places);
    } else {
        echo false;
    }
}
mysqli_close($conn);
?>