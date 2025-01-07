<?php 
    error_reporting(E_ALL & ~E_NOTICE);
    session_start();

    $ok = true;
    function CheckUsername(string $username, mysqli $db_connection) {
        global $ok;

        if (!ctype_alnum($username)) {
            $_SESSION["e_username"] = "Nazwa użytkownika musi zawierać tylko litery i cyfry!";
            $ok = false;
        }

        if (strlen($username) < 5 || strlen($username) > 20) {
            $_SESSION["e_username"] = "Nazwa użytkownika musi zawierać od 5 do 20 znaków!";
            $ok = false;
        }

        // check if username is avaliable
        try {
            $query_result = $db_connection->query("SELECT id_user FROM users WHERE users.username = '$username'");

            if (!$query_result) throw new Exception($db_connection->error);
        
            $num_rows = $query_result->num_rows;

            if ($num_rows > 0) {
                $_SESSION["e_username"] = "Konto z podaną nazwą użytkownika już istnieje!";
                $ok = false;
            }
        } catch (Exception $e) {
            echo "Błąd: ".$e;
        }
    }
    function CheckEmail(string $email, mysqli $db_connection) {
        global $ok;
        // check email
        $processed_email = filter_var($email, FILTER_SANITIZE_EMAIL);
        
        if ((filter_var($processed_email, FILTER_VALIDATE_EMAIL)==false) || ($processed_email!=$email))
        {
            $_SESSION["e_email"] = "Wprowadź poprawny adres email!";
            $ok = false;
        }

        try {
            $query_result = $db_connection->query("SELECT id_user FROM users WHERE users.email = '$email'");

            if (!$query_result) throw new Exception($db_connection->error);
        
            $num_rows = $query_result->num_rows;

            if ($num_rows > 0) {
                $_SESSION["e_email"] = "Konto z tym adresem email już istnieje!";
                $ok = false;
            }
        } catch (Exception $e) {
            echo "Błąd: ".$e;
        }
    }
    function CheckNames(string $name, string $surname) {
        global $ok;

        if (!ctype_alnum($name)) {
            $_SESSION["e_name"] = "Imie musi składać się tylko z liter!";
            $ok = false;
        }
        if (!ctype_alnum($surname)) {
            $_SESSION["e_surname"] = "Nazwisko musi składać się tylko z liter!";
            $ok = false;
        }
    }
    function CheckPasswords(string $password1, string $password2) {
        global $ok;

        if ($password1 != $password2) {
            $_SESSION["e_password"] = "Hasła nie są identyczne!";
            $ok = false;
        }

        if (strlen($password1) < 5 || strlen($password2) > 20) {
            $_SESSION["e_password"] = "Hasło musi zawierać od 5 do 20 znaków!";
            $ok = false;
        }
    }

    session_start();

    if (isset($_POST["username"])) $username = $_POST["username"];
    if (isset($_POST["name"])) $name = $_POST["name"];
    if (isset($_POST["surname"])) $surname = $_POST["surname"];
    if (isset($_POST["password1"])) $password1 = $_POST["password1"];
    if (isset($_POST["password2"])) $password2 = $_POST["password2"];
    if (isset($_POST["email"])) $email = $_POST["email"];

    if (isset($_POST["username"])) {
        require_once "components/connect.php";

        $db_connection = DatabaseConnect();

        // validate data
        CheckUsername($username, $db_connection);
        CheckEmail($email, $db_connection);
        CheckNames($name, $surname);
        CheckPasswords($password1, $password2);

        // remember data
        $_SESSION["r_username"] = $username;
        $_SESSION["r_email"] = $email;
        $_SESSION["r_name"] = $name;
        $_SESSION["r_surname"] = $surname;
        $_SESSION["r_password1"] = $password1;
        $_SESSION["r_password2"] = $password2;

        // create an account
        if ($ok) {
            $password_hashed = password_hash($password1, PASSWORD_DEFAULT);

            try {
                $query_result = $db_connection->query("INSERT INTO users VALUES (NULL, '$username', '$name', '$surname', '$password_hashed', '$email')");
            
                if (!$query_result) throw new Exception($db_connection->error);
                else {
                    $_SESSION["registered"] = true;
                    header("Location: welcome.php");
                }
            } catch (Exception $e) {
                echo "Błąd: ".$e;
            }
        }

        $db_connection->close();
    }
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
        <section class="registration">  
            <h2 class="main_header">Zarejestruj się</h2>
            <form method="post" action="registration.php">
                <!-- Username -->
                <span>Nazwa użytkownika </span><br /><input type="text" name="username" value="<?php 
                    if (isset($_SESSION["r_username"])) { 
                        echo $_SESSION["r_username"]; 
                        unset($_SESSION["r_username"]); 
                    } 
                ?>" required> 
                <br />
                <!-- Error -->
                <?php 
                    if (isset($_SESSION["e_username"])) { 
                        echo "<span class='error'>".$_SESSION["e_username"]."</span> <br />"; 
                        unset($_SESSION["e_username"]); 
                    } 
                ?>
                <!-- Imie -->
                <span>Imie</span><br /><input type="text" name="name" value="<?php 
                    if (isset($_SESSION["r_name"])) { 
                        echo $_SESSION["r_name"]; 
                        unset($_SESSION["r_name"]); 
                    } 
                ?>" required>
                <br />
                <!-- Error -->
                <?php 
                    if (isset($_SESSION["e_name"])) { 
                        echo "<span class='error'>".$_SESSION["e_name"]."</span> <br />"; 
                        unset($_SESSION["e_name"]); 
                    } 
                ?>
                <!-- Nazwisko -->
                <span>Nazwisko</span><br /><input type="text" name="surname" value="<?php 
                    if (isset($_SESSION["r_surname"])) { 
                        echo $_SESSION["r_surname"]; 
                        unset($_SESSION["r_surname"]); 
                    }
                ?>" required>
                <br />
                <!-- Error -->
                <?php 
                    if (isset($_SESSION["e_surname"])) { 
                        echo "<span class='error'>".$_SESSION["e_surname"]."</span> <br />"; 
                        unset($_SESSION["e_surname"]); 
                    } 
                ?>
                <!-- Email -->
                <span>E-mail </span><br /><input type="email" name="email" value="<?php 
                    if (isset($_SESSION["r_email"])) { 
                        echo $_SESSION["r_email"]; 
                        unset($_SESSION["r_email"]); 
                    } 
                ?>" required>
                <br />
                <!-- Error -->
                <?php 
                    if (isset($_SESSION["e_email"])) { 
                        echo "<span class='error'>".$_SESSION["e_email"]."</span> <br />"; 
                        unset($_SESSION["e_email"]); 
                    } 
                ?>
                <!-- Passwords -->
                <span>Hasło</span> <br /><input type="password" name="password1" value="<?php 
                    if (isset($_SESSION["r_password1"])) { 
                        echo $_SESSION["r_password1"]; 
                        unset($_SESSION["r_password1"]); 
                    } 
                ?>" required> 
                <br />
                <!-- Error -->
                <?php 
                    if (isset($_SESSION["e_password"])) { 
                        echo "<span class='error'>".$_SESSION["e_password"]."</span> <br />"; 
                        unset($_SESSION["e_password"]); 
                    } 
                ?>
                <!-- Password2 -->
                <span>Powtórz hasło</span><br /><input type="password" name="password2" value="<?php 
                    if (isset($_SESSION["r_password2"])) { 
                        echo $_SESSION["r_password2"]; 
                        unset($_SESSION["r_password2"]); 
                    } 
                ?>" required> 
                <br />
                <input type="submit" value="Zarejestruj się"> <br />
            </form>

            <a href="login_form.php" class="form_link">Masz konto? Zaloguj się</a>
        </section>
    </main>
</body>
</html>