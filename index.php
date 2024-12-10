<?php 
    error_reporting(E_ALL & ~E_NOTICE);
    session_start();

    $_SESSION["root_directory"] = "/PHP_Websites/Ksiegarnia/";
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/main.css">
    <title>Księgarnia</title>
</head>
<body>
    <?php include "php/side_panel.php" ?>
    
    <main>
        <?php 
            require_once "php/book_manager.php";

            DisplayBooks();
        ?>
    </main>
</body>
</html>