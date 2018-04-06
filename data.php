<!doctype html>
<html lang="it">
<head>
<meta charset="utf-8">
<title>index</title>
</head>
<body>
<!-- connessione al DB -->
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "faraba";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

//COMANDI da inserimento nella tabella e inserimenti multipli
$sql = "INSERT INTO newsletter (mail)
VALUES ('pesce@gmail.com');";
$sql .= "INSERT INTO newsletter (mail)
VALUES ('gay@gmail.com');";
$sql .= "INSERT INTO newsletter (mail)
VALUES ('mutandinesporche2099@gmail.com')";

//verificare se tutto è andato bene
if ($conn->multi_query($sql) === TRUE) {
    echo "New records created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}


//chiusura della connessione al DB
$conn->close();



?>



</body>
</html>