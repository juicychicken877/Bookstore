<?php
    $db_name = "bookstore";
    $db_host = "localhost";
    $db_password = "";
    $db_user = "root";
    
    // Connects to database and return the connection
    function DatabaseConnect() {
        mysqli_report(MYSQLI_REPORT_STRICT);

        global $db_host, $db_user, $db_password, $db_name;

        try {
            $db_connection = new mysqli($db_host, $db_user, $db_password, $db_name);

            if ($db_connection->connect_errno != 0) {
                throw new Exception($db_connection->connect_errno);
            } else {
                return $db_connection;
            }
        } catch (Exception $e) {
            echo "Przepraszamy za utrudnienia ale nie udało się nawiązać kontaktu z bazą danych.";
            echo "Error: " . $e;

            return null;
        }
    }