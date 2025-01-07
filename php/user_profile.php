<?php 
    session_start();

    if (!isset($_SESSION["logged"])) {
        header("Location: ../index.php");
    } else {
        if (isset($_SESSION["user"])) {
            $user_data = $_SESSION["user"];
        }
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
        <h2 class="main_header">
            Witaj <?php echo $user_data["username"] ?>!
        </h2>

        <ul class="user_profile_list">
            <li>Twoje dane osobowe</li>
            <ul>
                <li>Nazwa użytkownika: <?php echo $user_data["username"] ?></li>
                <li>Imię: <?php echo $user_data["name"] ?></li>
                <li>Nazwisko: <?php echo $user_data["surname"] ?></li>
                <li>E-mail: <?php echo $user_data["email"] ?></li>
            </ul>
            <li><a href="order_history.php">Historia zamówień</a></li>
        </ul>
    </main>
</body>
</html>