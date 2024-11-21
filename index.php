<?php 
    require_once "php/connect.php";

    $db_connection = DatabaseConnect();

    if ($db_connection) {
        echo "Udało się połączyć z bazą danych";
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Księgarnia</title>
</head>
<body>
    
</body>
</html>