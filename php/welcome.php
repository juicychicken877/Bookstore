<?php 
    error_reporting(E_ALL & ~E_NOTICE);
    session_start();

    if (isset($_SESSION["registered"])) {
        unset($_SESSION["registered"]);
    } else {
        header("Location: ../index.php");
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php include "components/font.php" ?>
    <link rel="stylesheet" href="../css/main.css">
    <title>WELCOME</title>
</head>
<body>
    <?php include "components/side_panel.php" ?>

    <main>
        <h2>Witaj na pokładzie księgarni!</h2>
        <p>Możesz się teraz zalogować!</p>
    </main>
</body>
</html>