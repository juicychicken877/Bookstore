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
    <link rel="stylesheet" href="../css/form.css">
    <title>Księgarnia</title>
</head>
<body>
    <?php include "components/side_panel.php" ?>

    <main>
        <h2 class="main_header">Zaloguj się</h2>
        <form method="post" action="components/login.php">
            <span>Nazwa użytkownika</span> <br /><input type="text" name="login"> <br />
            <span>Hasło</span><br /> <input type="password" name="password"><br />
            <?php 
                if (isset($_SESSION["e_login"])) {
                    echo "<span class='error'>".$_SESSION["e_login"]."</span> <br />";
                    unset($_SESSION["e_login"]);
                }
            ?>
            <input type="submit" value="Zaloguj"> <br />
        </form>
        <a href="<?php echo $root?>php/registration.php" class="form_link">Nie masz konta? Zarejestruj się</a>
    </main>
</body>
</html>