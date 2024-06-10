<?php
if(isset($_POST['login'])){
        $user = $_POST['user'];
        $passwrd = $_POST['password'];
    }

    $host = "localhost";
    $username = "root";
    $passwd = "";
    $dbname = "parishaycrochetcollectiondb";

    // creating a connection
    $con = mysqli_connect($host, $username, $passwd, $dbname);

    if(!$con){
        die("connection died!". mysqli_connect_error());
    }
    $checkuser ="SELECT username FROM form_enteries WHERE username = '$user'";
    $checkquery= $con->query($checkuser);
    $flag =false;
    if($checkquery->num_rows >0){
        header("Location: index.html");
        exit;
    }
    else{
        echo "user not found";
    }
    
    mysqli_close($con);



?>