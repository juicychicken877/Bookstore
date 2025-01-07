<?php 
    session_start();

    if (!isset($_SESSION["logged"])) {
        header("Location: ../index.php");
    }
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <?php include "components/font.php"?>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/main.css">
    <title>KSIĄŻKI</title>
</head>
<body>
    <?php include "components/side_panel.php" ?>

    <main>
        <h2 class="main_header">Historia zamówień</h2>
    </main>
</body>
</html>