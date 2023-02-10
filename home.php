<?php
session_start();

include 'dbconn.php';

if (isset($_POST['userid'])) {
    $userid = $_SESSION["userid"];
    $sql = "SELECT placeId FROM favplace WHERE userId='$userid' LIMIT 20";
    $data = array();
    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            $placeid = $row["placeId"];
            $query = "SELECT placeId,placename,thumbnail FROM places WHERE placeId='$placeid'";
            $results = mysqli_query($conn, $query);
            if (mysqli_num_rows($results) > 0) {
                while ($rows = mysqli_fetch_assoc($results)) {
                    array_push($data,array("placeId" => $rows["placeId"],"placename" => $rows["placename"], "thumbnail" => $rows["thumbnail"]));
                }
            }
        }
        echo json_encode($data);
    } else {
        echo false;
    }
}
if (isset($_POST['like'])) {
    $sql = "SELECT placeId,placename,thumbnail FROM places ORDER BY likes DESC LIMIT 20";

    $result = mysqli_query($conn, $sql);
    $places = mysqli_fetch_all($result, MYSQLI_ASSOC);
    echo json_encode($places);
}
if (isset($_POST['view'])) {
    $sql = "SELECT placeId,placename,thumbnail FROM places ORDER BY views DESC LIMIT 20";

    $result = mysqli_query($conn, $sql);
    $places = mysqli_fetch_all($result, MYSQLI_ASSOC);
    echo json_encode($places);
}
if (isset($_POST['recent'])) {
    $sql = "SELECT placeId,placename,thumbnail FROM places ORDER BY uploadtime DESC LIMIT 20";

    $result = mysqli_query($conn, $sql);
    $places = mysqli_fetch_all($result, MYSQLI_ASSOC);
    echo json_encode($places);
}
if (isset($_POST['visit'])) {
    if (isset($_SESSION["userid"])) {
        $userid = $_SESSION["userid"];
    } else {
        $userid = 0;
    }
    $time = time();
    $sql = "INSERT INTO visits (userId,time) VALUES('$userid','$time')";
    if (mysqli_query($conn, $sql)) {
        echo true;
    } else {
        echo false;
    }
}

mysqli_close($conn);

?>