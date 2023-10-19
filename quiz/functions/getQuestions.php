<?php
    include('./db.php');

    if(isset($_GET['curriculum'])){
        $curriculum = $_GET['curriculum'];
        $year = $_GET['year'];
        // SQL query to fetch data from the table (you can modify this query to fit your database)
        $sql = "SELECT * FROM questions WHERE curriculum = '".$curriculum."' AND year = '".$year."'";  // Change 'your_table' to your actual table name
        $result = $conn->query($sql);

        // Check if there are rows in the result
        if ($result->num_rows > 0) {
            // Create an array to hold the results
            $data = array();

            // Fetch data and add it to the array
            while ($row = $result->fetch_assoc()) {
                $data[] = $row;
            }

            // Close the database connection
            $conn->close();

            // Set the HTTP response header to JSON
            header("Content-type: application/json");
            
            // Output the data as JSON
            echo json_encode($data);
        } else {
            // If no data was found, return an empty JSON object
            echo json_encode(array());
        };
    };
    

?>
