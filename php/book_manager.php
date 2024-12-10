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

    function DisplayBooks() {
        global $image_array, $file_directory;

        // display books
        foreach ($image_array as $key => $image_object) {
            $image_path = $file_directory.$image_object->id_file.$image_object->extension;

            echo "<img src=".$image_path." width='150' height='200'>";
        }
    }

    