<?php
session_start();

$conn = mysqli_connect('localhost', 'root', '', 'travel');
if (!$conn) {
    die("connection failed" . mysqli_connect_error());
}
if (isset($_SESSION["category"])) {
    $category = $_SESSION["category"];
} else {
    $category = 0;
}

if (isset($_POST["category"])) {
    $sql = "SELECT placeId FROM category WHERE cateId='$category' LIMIT 100";
    $data = array();
    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            $placeid = $row["placeId"];
            $query = "SELECT placeId,placename,thumbnail FROM places WHERE placeId='$placeid'";
            $results = mysqli_query($conn, $query);
            if (mysqli_num_rows($results) > 0) {
                while ($rows = mysqli_fetch_assoc($results)) {
                    array_push($data, array("placeId" => $rows["placeId"], "placename" => $rows["placename"], "thumbnail" => $rows["thumbnail"]));
                }
            } else {
                echo false;
            }
        }
        echo json_encode($data);
    } else {
        echo false;
    }
}

mysqli_close($conn);
?>