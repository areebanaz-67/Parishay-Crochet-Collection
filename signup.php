<?php
    if(isset($_POST['submit'])){
        $user = $_POST['user'];
        $email = $_POST['email'];
        $passwrd = $_POST['password'];
    }

    $host = "localhost";
    $username = "root";
    $password = "";
    $dbname = "parishaycrochetcollectiondb";

    // creating a connection
    $con = mysqli_connect($host, $username, $password, $dbname);

    if(!$con){
        die("connection died!". mysqli_connect_error());
    }
    $checkuser ="SELECT username FROM form_enteries WHERE username = '$user'";
    $checkquery= $con->query($checkuser);
    $flag =false;
    if($checkquery->num_rows >0){
        echo "Entry already exists for username: $user";
    }
    else{
            //added values using sql queries 
            $sqlquery = "INSERT INTO form_enteries(username , email, password) VALUES ('$user','$email', '$passwrd')";
            $query = mysqli_query($con, $sqlquery);
            echo "Entry added successfully!";
            if($query){
                echo "Entry added successfully!";
            } else {
                echo "Error: " . mysqli_error($con);
            }
    }
    mysqli_close($con);
?>

