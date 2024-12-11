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
    <title>Księgarnia</title>
</head>
<body>
    <?php include "components/side_panel.php" ?>

    <main>
        <?php 
            require_once "components/book_manager.php";

            DisplayImage($book_data->id_image);
        ?>

        <p><?php echo $book_data->title ?></p>
        <p><?php echo $book_data->price ?></p>
        <p><?php echo $book_data->description ?></p>
    </main>
</body>
</html>