<?php 
    $root = "/PHP_Websites/Ksiegarnia/";
?>

<section id="side_panel">
    <div id="logo">
        <img src="<?php echo $root?>img/zaba_small.png">
    </div>
    <ul id="nav">
        <?php 
            if (isset($_SESSION["logged"])) {
                echo "<span> Witaj ".$_SESSION["user"]."!</span>";
            }
        ?>
        <?php 
            if (!isset($_SESSION["logged"])) {
                echo '<li><a href="'.$root.'php/login_form.php">ZALOGUJ SIĘ</a></li>'; 
            } else {
                echo '<li><a href="'.$root.'php/logout.php">WYLOGUJ</a></li>';
            }
        
        ?>
        <li><a href="<?php echo $root?>index.php">STRONA GŁÓWNA</a></li>
        <li>
            <span>KATEGORIE</span>
            <ul class="categories">
                <li>Neuronauka</li>
                <li>Technologia</li>
                <li>Astronomia</li>
                <li>Fikcja</li>
                <li>Psychologia</li>
                <li>Historia</li>
                <li>Biografia</li>
                <li>Nauki Ścisłe</li>
                <li>Podręczniki Szkolne</li>
                <li>Inne</li>
            </ul>
        </li>
    </ul>
</section>