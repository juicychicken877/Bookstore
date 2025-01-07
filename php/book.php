<?php 
    error_reporting(E_ALL & ~E_NOTICE);
    session_start();

    if (isset($_GET["book_data"])) $book_data = json_decode(urldecode($_GET["book_data"]));
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php include "components/font.php" ?>
    <link rel="stylesheet" href="../css/main.css">
    <link rel="stylesheet" href="../css/book.css">
    <title>Księgarnia</title>
</head>
<body>
    <?php include "components/side_panel.php" ?>

    <main>
        <?php require_once "components/book_manager.php"; ?>
        <div class="main_image_container"><?php echo DisplayImage($book_data->id_image) ?></div>
        <div class="book_right_panel">
            <p class="main_book_title"><?php echo $book_data->title ?></p>
            <p class="main_book_author">
                <?php 
                    require_once "components/connect.php";

                    $db_connection = DatabaseConnect();

                    $select_author = "SELECT full_name FROM authors WHERE authors.id_author = '$book_data->id_author'";

                    $query_result = $db_connection->query($select_author);

                    $author = $query_result->fetch_assoc();

                    echo $author["full_name"];
                
                ?>
            </p>
            <p class="main_book_price"><?php echo $book_data->price ?> PLN</p>
            <p>Brak opinii i recenzji</p>
            <button class="buy_button">Dodaj do koszyka</button>
        </div>
        <div style="clear: both"></div>
        <hr />
        <h2 class="main_header">Opis</h2>
        <p class="main_book_description">
            <?php echo $book_data->description ?>
        </p>
    </main>
</body>
</html>