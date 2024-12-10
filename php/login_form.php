<?php 
    session_start();
    
    if (isset($_SESSION["logged"])) {
        header("Location: ../index.php");
    }
    
    if (isset($_SESSION["root_directory"])) $root = $_SESSION["root_directory"];
    else header("Location: ../index.php");
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php include "components/font.php" ?>
    <link rel="stylesheet" href="../css/main.css">
    <title>LOGIN</title>
</head>
<body>
    <?php include "components/side_panel.php" ?>

    <main>
        <h3>Zaloguj się</h3>
        <form method="post" action="login.php">
            Nazwa użytkownika: <input type="text" name="login"> <br />
            Hasło: <input type="password" name="password"><br />
            <?php 
                if (isset($_SESSION["e_login"])) {
                    echo "<span class='error'>".$_SESSION["e_login"]."</span> <br />";
                    unset($_SESSION["e_login"]);
                }
            ?>
            <input type="submit" value="Zaloguj"> <br />

            <a href="<?php echo $root?>php/registration.php">Nie masz konta? Zarejestruj się</a>
        </form>
    </main>
</body>
</html>