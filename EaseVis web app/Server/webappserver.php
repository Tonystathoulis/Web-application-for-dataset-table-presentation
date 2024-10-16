<?php
$serverName = "localhost:3307";
$userName = "pma";
$password = "";  
$dbName = "webdatabase";

//ESTABLISH CONNECTION
function connectToDatabase($serverName, $userName, $password, $dbName) {
    $con = mysqli_connect($serverName, $userName, $password, $dbName);
    if(mysqli_connect_errno()){
        return false;
    }
    return $con;
}

//FETCH DATA FROM A TABLE
function fetchDataFromTable($tableName, $con) {
    $query = "SELECT * FROM $tableName";
    $result = mysqli_query($con, $query);

    $data = array();
    while($row = mysqli_fetch_assoc($result)){
        $data[] = $row;
    }

    return $data;
}
    
    //FETCH DATA FROM TABLES IF GET IS REQUESTED
function handleGETRequest() {
    global $serverName, $userName, $password, $dbName;
    
    //CONNECT TO THE DATABASE
    $con = connectToDatabase($serverName, $userName, $password, $dbName);
    if (!$con) {
        http_response_code(500);
        echo json_encode(array("error" => "Failed to connect to the database"));
        return;
    }

    //ARRAY FOR TABLE DATA
    $allData = array();
    $tableNames = ["carbonandairfilt", "bioriverquality", "envbehaviours", "natura2k"];
    foreach ($tableNames as $tableName) {
        $tableData = fetchDataFromTable($tableName, $con);
        $allData[$tableName] = $tableData;
    }

    //CLOSE DATABASE CONNECTION
    mysqli_close($con);

    // RETURN DATA IN JSON FORM
    http_response_code(200);
    header('Content-Type: application/json');
    echo json_encode($allData);
}

    //IF GET IS REQUESTED THE FUNCTION IS CALLED
if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    handleGETRequest();
} else {
    http_response_code(405); //ERROR MESSAGE IF THE REQUEST IS NOT GET
    echo json_encode(array("error" => "Method not allowed"));
}
?>
