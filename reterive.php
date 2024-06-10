<?php
   $host = "localhost";
    $username = "root";
    $password = "";
    $dbname = "parishaycrochetcollectiondb";

    // creating a connection
    $con = mysqli_connect($host, $username, $password, $dbname);

    if($con->connect_error){
        die("connection died!". mysqli_connect_error());
    }

    $sqlquery = "SELECT username, email, password FROM form_enteries";
    $result = $con->query($sqlquery);
    

    if ($result->num_rows > 0) {
        //echo "<table><tr><th>User Name </th> <th>Email</th> <th>Password</th></td>";
        echo "<table><tr><th>User Name</th><th>Email</th><th>Password</th></tr>";


        while($row = $result->fetch_assoc()){
            echo "<tr><td>". $row["username"]. "</td> <td>". $row["email"]. "</td><td>". $row["password"]. "</td></tr><br> " ;
        }
    }else {
        echo "no entery found";

    }

    $con->close();

?>