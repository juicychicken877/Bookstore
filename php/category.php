<?php 
    session_start();

    require_once "components/book_manager.php";

    $current_category = "";

    if (isset($_GET["category"])) {
        $current_category = urldecode($_GET["category"]);
    }
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
        <h2 class="main_header">Kategoria: <?php echo $current_category?></h2>
        <section class="books">
            <?php
                DisplayBooks($current_category);
            ?>
        </section>
    </main>

    <script src="../js/books.js"></script>
</body>
</html>