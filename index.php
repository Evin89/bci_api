<?php
include "config.php";

$method = $_SERVER["REQUEST_METHOD"];
$accept = $_SERVER['HTTP_ACCEPT'];
$query = $_SERVER['QUERY_STRING'];

$result = null;
$tag = "id";

switch ( $method ) {

    // GET //
    case "GET" :
        // Get with ID
        if (isset($_GET['type']) && isset($_GET['id'])){

            $id = $_GET['id'];
            $type = $_GET['type'];

           switch ($type){
                    case "objective":
                    $tag = "number";
                break;
                    case  "scenario":
                    $tag = "id";
                break;
           }

            $sql = "SELECT * FROM $type WHERE $tag = ".$id;
            // echo $sql."<br>";
            $result = $conn->query($sql);
            
            if ($result->num_rows > 0) {

                // echo 'je krijgt json terug. ';
                http_response_code(200);
                header("content-type: application/json");
    
                // Array om each result in te stoppen
                $resultArray = [];

                switch ( $type ){
                    case "objective":

                    while($row = mysqli_fetch_assoc($result)) {
                        array_push($resultArray, array(
                            'id' => $row['id'],
                            'number' => $row['number'],
                            'name' => $row['name'],
                            'description' => $row['description'],
                            'type' => $row['type'])  
                        );
                        $aantalItems++;
                    }       
                    print_r(json_encode(array('objective' => $resultArray)));
                    break;
                        
                    case "scenario":
                    while($row = mysqli_fetch_assoc($result)) {
                        array_push($resultArray, array(
                            'id' => $row['id'],
                            'type' => $row['type'],
                            'title' => $row['title'],
                            'armies' => $row['armies'],
                            'battlefield' => $row['battlefield'],
                            'deployment' => $row['deployment'],
                            'firstTurn' => $row['firstTurn'],
                            'length' => $row['length'],
                            'victoryConditions' => $row['victoryConditions'],
                            'strategem' => $row['strategem'],
                            'tacticalObjectives' => $row['tacticalObjectives'])
                        );
                        $aantalItems++;
                    }
                    print_r(json_encode(array('scenario' => $resultArray)));
                    break; 
                }
                
                // print_r(json_encode(array('scenario' => $resultArray)));
            } 
            else {
                echo "Get ".$type. " with id".$id." gives 0 results";
            }
            $conn->close();
        }
        
        // GET ALL //
        
        else if (isset($_GET['type'])){

            $type = $_GET['type'];
            $sql = "SELECT * FROM ".$type;
            $result = $conn->query($sql);
            $resultArray = [];

            if ($result->num_rows > 0) {
        
                // echo 'je krijgt json terug. ';
                http_response_code(200);
                header("content-type: application/json");

                switch ( $type ){

                    // IF TYPE IS OBJECTIVE //
                    
                    case "objective":
                        while($row = mysqli_fetch_assoc($result)) {
                            array_push($resultArray, array(
                                'id' => $row['id'],
                                'number' => $row['number'],
                                'name' => $row['name'],
                                'description' => $row['description'],
                                'type' => $row['type'])  
                            );
                            $aantalItems++;
                        }
                        print_r(json_encode(array('objectives' => $resultArray)));
                        break;
    
                    // IF TYPE IS SCENARIO //
                    case "scenario":
                        while($row = mysqli_fetch_assoc($result)) {
                            array_push($resultArray, array(
                                'id' => $row['id'],
                                'type' => $row['type'],
                                'title' => $row['title'],
                                'armies' => $row['armies'],
                                'battlefield' => $row['battlefield'],
                                'deployment' => $row['deployment'],
                                'firstTurn' => $row['firstTurn'],
                                'length' => $row['length'],
                                'victoryConditions' => $row['victoryConditions'],
                                'strategem' => $row['strategem'],
                                'tacticalObjectives' => $row['tacticalObjectives'])
                            );
                            $aantalItems++;
                        }
                        print_r(json_encode(array('scenarios' => $resultArray)));
                        break;
    
                    default:
                        echo 'no such type';
                }
    
                // print_r(json_encode(array('scenarios' => $resultArray)));
    
               
            } 
            else {
                http_response_code(204);
                echo "Get all ".$type." gives 0 results";
            }
            $conn->close();
          
        }
    break;
}

?>