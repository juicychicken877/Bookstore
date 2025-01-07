<?php 
    error_reporting(E_ALL & ~E_NOTICE);
    session_start();

    if (isset($_SESSION["logged"])) {
        header("Location: ../../index.php");
    }

    if (!isset($_SESSION["login"]) || !isset($_SESSION["password"])) {
        header("Location: ../login_form.php");
    }

    try {
        $login = $_POST["login"];
        $password = $_POST["password"];

        require_once "connect.php";

        $db_connection = DatabaseConnect();

        // check if there is an account with this username
        $query_result = $db_connection->query("SELECT * FROM users WHERE users.username = '$login'");

        if (!$query_result) throw new Exception($db_connection->error);

        if ($query_result->num_rows > 0) {
            // there is
            $data = $query_result->fetch_assoc();

            $fetched_password = $data["password"];
            
            if (password_verify($password, $fetched_password)) {
                // logged in
                $_SESSION["logged"] = true;
                
                $user_data = array(
                    "username" => $data["username"],
                    "email" => $data["email"],
                    "name" => $data["name"],
                    "surname" => $data["surname"]
                );

                $_SESSION["user"] = $user_data;
                
                header("Location: ../../index.php");
            } else {
                $_SESSION["e_login"] = "Try again bozo";
                header("Location: ../login_form.php");
            }

            $query_result->free_result();

        } else {
            $_SESSION["e_login"] = "Try again bozo";
            header("Location: ../login_form.php");
        }

        $db_connection->close();

    } catch (Exception $e) {
        echo "Błąd: ".$e;
    }
?>