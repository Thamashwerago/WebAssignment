<?php

$conn = mysqli_connect('localhost','root','','travel');

if(isset($_POST['Favourite'])){
    $query = "SELECT placeId FROM homecategory WHERE category='favourite' AND userId='1'";


    $result = mysqli_query($conn,$query);
    $places = mysqli_fetch_all($result,MYSQLI_ASSOC);
    echo json_encode($places);
    /*while($row = mysqli_fetch_array($result)){
        $sql = "SELECT placeName FROM places WHERE placeId='$row'";
        $res = mysqli_query($conn,$sql);
        $places = mysqli_fetch_all($places,MYSQLI_ASSOC);
        
    }*/

}


?>