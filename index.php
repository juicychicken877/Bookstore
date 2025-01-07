<?php 
    error_reporting(E_ALL & ~E_NOTICE);
    session_start();

    $_SESSION["root_directory"] = "/PHP_Websites/Ksiegarnia/";
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php include "php/components/font.php" ?>
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/sliders.css">
    <title>Księgarnia</title>
</head>
<body>
    <?php include "php/components/side_panel.php" ?>
    
    <main>
        <!-- Sliders -->
         <div class="text_slider_container">
            <div class="text_slider">
                <div class="text">
                    Witamy na naszej stronie!
                </div>
                <div class="text">
                    Witamy na naszej stronie!
                </div>
            </div>
         </div>

         <div class="clock_container">
            <h2 id="clock">00:00:00</h2>
        </div>

         <div class="image_slider_container box_shadow">
            <div class="wrapper">
                <img src="img/slider_images/bieszczady.jpg" alt="">
                <img src="img/slider_images/jelen.jpg" alt="">
                <img src="img/slider_images/zubr.jpg" alt="">
                <img src="img/slider_images/bieszczady.jpg" alt="">
            </div>
        </div>
        <h2 class="main_header">Przeczytaj cośniecoś</h2>
        <section class="category_blocks_list">
            <?php 
                require_once "php/components/connect.php";
                require_once "php/components/book_manager.php";

                $select_query = "SELECT DISTINCT books.category FROM books";
                $db_connection = DatabaseConnect();

                $query_result = $db_connection->query($select_query);

                while ($row = $query_result->fetch_assoc()) {
                    $category = $row["category"];
                    
                    // select first book of the category and place it as a background image
                    $select_query2 = "SELECT books.id_image FROM books WHERE books.category = '$category' LIMIT 1";

                    $query_result2 = $db_connection->query($select_query2);

                    $row2 = $query_result2->fetch_assoc();

                    echo 
                        "<a href='php/category.php?category=".urlencode($category)."'>
                            <div class='category_block box_shadow'>
                                ".DisplayImage($row2["id_image"])."
                                <p>".$category."</p>
                            </div>
                        </a>";
                }
            ?>
        </section>

        <section class="icons">
            <a href="https://www.cke.gov.pl">
                <div class="icon">
                    <img src="<?php echo $root?>img/cke.png" alt="cke logo">
                </div>
            </a>
            <a href="https://helion.pl">
                <div class="icon">
                    <img src="<?php echo $root?>img/helion.png" alt="helion logo">
                </div>
            </a>
            <a href="https://www.men.gov.pl">
                <div class="icon">
                    <img src="<?php echo $root?>img/men.png" alt="men logo">
                </div>
            </a>
        </section>
    </main>

    <script src="js/clock.js"></script>
</body>
</html>