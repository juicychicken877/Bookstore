<?php
    // a class representing each row in images table
    class ImageObject {
        public $id_image;
        public $id_file;
        public $extension;

        public function __construct($id_image, $id_file, $extension) {
            $this->id_image = $id_image;
            $this->id_file = $id_file;
            $this->extension = $extension;
        }
    }
    
    require_once "connect.php";

    $file_directory = $_SESSION["root_directory"]."img/book_images/";
    $image_array = [];

    AddImages();
    
    function AddImages() {
        global $image_array;

        $select_query = "SELECT images.id_image, images.id_file, images.extension FROM images INNER JOIN books ON books.id_image = images.id_image";
    
        $db_connection = DatabaseConnect();

        $query_result = $db_connection->query($select_query);

        while ($row = $query_result->fetch_assoc()) {
            $id_image = $row["id_image"];

            $image_array[$id_image] = new ImageObject($id_image, $row["id_file"], $row["extension"]);
        }
    }
    function DisplayImage($id_image) {
        global $image_array, $file_directory;

        $image_path = "";

        // if theres an image, display it, otherwise display "no image avaliable" image
        if (isset($image_array[$id_image])) {
            $image_object = $image_array[$id_image];
            $id_file = $image_object->id_file;
            $extension = $image_object->extension;

            $image_path = $file_directory.$id_file.$extension;
        } else {
            $image_path = $file_directory."no_image.png";
        }

        echo "<div class='image_container'><img src='$image_path'></div>"; 
    }

    function DisplayBooks($category) {
        $select_query = "SELECT * FROM books WHERE books.category = '$category'";

        $db_connection = DatabaseConnect();

        $query_result = $db_connection->query($select_query);

        while ($row = $query_result->fetch_assoc()) {
            $id_image = $row["id_image"];

            $json_data = json_encode($row);

            $get_command = "?book_data=".urlencode($json_data);

            // return html
            echo "<a href='./book.php".$get_command."'>";
            echo "<div class='book'>";
                DisplayImage($id_image);
                // echo "<br />";
                echo "<p class='book_title'>".$row["title"]."</p>";
                echo "<p class='book_price'>".$row["price"]." PLN</p>";
            echo "</div></a>";
        }
    }

    