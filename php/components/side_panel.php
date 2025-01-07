<?php 
    if (isset($_SESSION["root_directory"])) $root = $_SESSION["root_directory"];
    else header("Location: ../../index.php");
?>

<section id="side_panel">
    <div id="logo">
        <img src="<?php echo $root?>img/logo/logo.png">
    </div>
    <ul id="nav">
        <li><a href="<?php echo $root?>index.php" class="header link">Strona Główna</a></li>
        <li>
            <span class="header">Kategorie</span>
            <ul class="categories">
                <?php 
                    // display all existing categories in a database in a list
                    require_once "connect.php";

                    $select_query = "SELECT DISTINCT books.category FROM books";
                    $db_connection = DatabaseConnect();

                    $query_result = $db_connection->query($select_query);

                    while ($row = $query_result->fetch_assoc()) {
                        $category = $row["category"];

                        echo "<a href=".$root."php/category.php?category=".urlencode($category)." class='link'><li>".$category."</li></a>";
                    }
                ?>
            </ul>
        </li>
        <?php 
            if (!isset($_SESSION["logged"])) {
                echo '<li><a href="'.$root.'php/login_form.php" class="header link">Zaloguj się</a></li>'; 
            } else {
                echo '<li><a href="'.$root.'php/components/logout.php" class="header link">Wyloguj się</a></li>';
                echo '<li><a href="'.$root.'php/user_profile.php" class="header link">Twój profil</a></li>';
                echo '<li><a href="'.$root.'php/koszyk.php" class="header link">Koszyk</a></li>';
            }
        
        ?>
    </ul>
</section>

<section id="side_panel_substitute"></section>