<?php 
    if (isset($_SESSION["root_directory"])) $root = $_SESSION["root_directory"];
    else header("Location: ../index.php");
?>

<section id="side_panel">
    <div id="logo">
        <img src="<?php echo $root?>img/zaba_small.png">
    </div>
    <ul id="nav">
        <?php 
            // if user is logged then display logout button and the other way around
            if (isset($_SESSION["logged"])) {
                echo "<span> Witaj ".$_SESSION["user"]."!</span>";
            }
        ?>
        <?php 
            if (!isset($_SESSION["logged"])) {
                echo '<li><a href="'.$root.'php/login_form.php" class="header link">Zaloguj się</a></li>'; 
            } else {
                echo '<li><a href="'.$root.'php/logout.php" class="header link">Wyloguj się</a></li>';
            }
        
        ?>
        <li><a href="<?php echo $root?>index.php" class="header link">Strona Główna</a></li>
        <li>
            <span class="header">Kategorie</span>
            <ul class="categories">
                <?php 
                    // display all existing categories in a database in a list
                    require_once "connect.php";

                    $category_array = array();
                    $select_query = "SELECT books.category FROM books";
                    $db_connection = DatabaseConnect();

                    $query_result = $db_connection->query($select_query);

                    while ($row = $query_result->fetch_assoc()) {
                        $category = $row["category"];

                        if (!in_array($category, $category_array)) {
                            array_push($category_array, $category);
                        }
                    }

                    foreach($category_array as $category) {
                        echo "<a href=".$root."php/category.php?category=".urlencode($category)." class='link'><li>".$category."</li></a>";
                    }
                ?>
            </ul>
        </li>
    </ul>
</section>