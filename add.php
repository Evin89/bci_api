<?php
	$servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "40kgenerator";
    
    // Create connection
    $conn = mysqli_connect($servername, $username, $password, $dbname);
    
    $br = '<br>';

    $json = file_get_contents('../result.json');
    $obj = json_decode($json, true);

    $results = $obj["results"];
    // print_r($results);
    // -- Works --

    // $details = $results[0]["details"];
    // print_r($details);
    // echo $br;
    // $lastUpdate = $results[0]["lastUpdate"];
    // print_r($lastUpdate);
    // echo $br;

    // $objectives = $results[1];
    // print_r($objectives);

    $objectives = $obj['results'][1]["scenarios"];
    // print_r($objectives);

    $objectiveOne = $obj['results'][1]["objectives"][0]["name"];
    // print_r($objectiveOne);

    $nObjectives = count($objectives);

    for ($i = 0; $i < $nObjectives; $i++){
        
        $type           = $objectives[$i]["type"];
        $title           = $objectives[$i]["title"];
        $armies           = $objectives[$i]["armies"];
        $battlefield           = $objectives[$i]["battlefield"];
        $deployment           = $objectives[$i]["deployment"];
        $firstTurn           = $objectives[$i]["firstTurn"];
        $length           = $objectives[$i]["length"];
        $victoryConditions           = $objectives[$i]["victoryConditions"];
        $tacticalObjectives = $objectives[$i]["tacticalObjectives"]

        
        // Create connection
        // $conn = new mysqli($servername, $username, $password, $dbname);
        $conn = new mysqli($servername, $username, $password, $dbname);
        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        } 

        $sql = "INSERT INTO scenario (type, title, armies, battlefield, deployment, firstTurn, length, victoryConditions, strategem, tacticalObjectives)
        VALUES ('$number', '$name', '$type', '$description', '$description')";

        if ($conn->query($sql) === TRUE) {
            echo "New record created successfully";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }

        $conn->close();

    }

?>