<?php
session_start();

$conn = mysqli_connect('localhost', 'root', '', 'travel');
if (!$conn) {
    die("connection failed" . mysqli_connect_error());
}

if (isset($_SESSION["placeid"])) {
    $placeid = $_SESSION["placeid"];
} else {
    $placeid = 0;
}

if (isset($_SESSION["userid"])) {
    $userid = $_SESSION["userid"];
} else {
    $userid = 0;
}

if (isset($_POST['place'])) {

    $sql = "SELECT placename,description,thumbnail FROM places WHERE placeId='$placeid'";

    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0) {
        $places = mysqli_fetch_all($result, MYSQLI_ASSOC);
        echo json_encode($places);
    } else {
        echo false;
    }
}

if (isset($_POST['images'])) {

    $sql = "SELECT imgName FROM placeimg WHERE placeId='$placeid'";

    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0) {
        $places = mysqli_fetch_all($result, MYSQLI_ASSOC);
        echo json_encode($places);
    } else {
        echo false;
    }
}

if (isset($_POST['record'])) {
    $sql = "SELECT views FROM places WHERE placeId='$placeid'";
    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        $views = $row["views"] + 1;
        $query = "UPDATE places SET views='$views' WHERE placeId='$placeid'";
        if (mysqli_query($conn, $query)) {
            echo true;
        } else {
            echo false;
        }
    } else {
        echo false;
    }
}
if (isset($_POST['comment'])) {
    $sql = "SELECT comment FROM comments WHERE placeId='$placeid' LIMIT 20";

    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0) {
        $places = mysqli_fetch_all($result, MYSQLI_ASSOC);
        echo json_encode($places);
    } else {
        echo false;
    }
}

if (isset($_POST['addcomment'])) {
    $comment = $_POST['addcomment'];

    $sql = "INSERT INTO comments (userId,placeId,comment) VALUES('$userid','$placeid','$comment')";
    if (mysqli_query($conn, $sql)) {
        echo true;
    } else {
        echo false;
    }
}

if (isset($_POST['favourite'])) {

    $sql = "SELECT * FROM favplace WHERE userId='$userid' AND placeId='$placeid'";

    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0) {
        echo true;
    } else {
        echo false;
    }
}

if (isset($_POST['like'])) {

    $sql = "SELECT * FROM likeplace WHERE userId='$userid' AND placeId='$placeid'";

    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0) {
        echo true;
    } else {
        echo false;
    }
}

if (isset($_POST['setfavourite'])) {
    $sql = "SELECT * FROM favplace WHERE userId='$userid' AND placeId='$placeid'";
    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0) {
        $query = "DELETE FROM favplace WHERE userId='$userid' AND placeId='$placeid'";
        if (mysqli_query($conn, $query)) {
            echo true;
        } else {
            echo false;
        }
    } else {
        $query = "INSERT INTO favplace (userId,placeId) VALUES('$userid','$placeid')";
        if (mysqli_query($conn, $query)) {
            echo true;
        } else {
            echo false;
        }
    }
}

if (isset($_POST['setlike'])) {
    $sql = "SELECT * FROM likeplace WHERE userId='$userid' AND placeId='$placeid'";
    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0) {
        $sql = "SELECT likes FROM places WHERE placeId='$placeid'";
        $result = mysqli_query($conn, $sql);
        $row = mysqli_fetch_assoc($result);
        $likes=$row["likes"]-1;
        $sql="UPDATE places SET likes='$likes' WHERE placeId='$placeid";
        mysqli_query($conn, $sql);
        $query = "DELETE FROM likeplace WHERE userId='$userid' AND placeId='$placeid'";
        if (mysqli_query($conn, $query)) {
            echo true;
        } else {
            echo false;
        }
    } else {
        $sql = "SELECT likes FROM places WHERE placeId='$placeid'";
        $result = mysqli_query($conn, $sql);
        $row = mysqli_fetch_assoc($result);
        $likes=$row["likes"]+1;
        $sql="UPDATE places SET likes='$likes' WHERE placeId='$placeid";
        mysqli_query($conn, $sql);
        $query = "INSERT INTO likeplace (userId,placeId) VALUES('$userid','$placeid')";
        if (mysqli_query($conn, $query)) {
            echo true;
        } else {
            echo false;
        }
    }
}
mysqli_close($conn);
