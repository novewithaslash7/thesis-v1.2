<?php
    include('./db.php');
    if(isset($_GET['score'])){
        $score = $_GET['score'];
        $student_id = $_GET['student_id'];
        $name = $_GET['name'];
        $curriculum = $_GET['curriculum'];
        $year = $_GET['year'];
        $section = $_GET['section'];

        // add a clasification function
        $classification = 'pass';

        try {
            //code...
            $SELECT = "SELECT student_id FROM scores WHERE student_id='".$student_id."'";
            $INSERT = "INSERT INTO scores (student_id, name, curriculum, year, section, score, classification) VALUES (?,?,?,?,?,?,?)";
            $stmt = $conn->query($SELECT);
            if($stmt->num_rows == 0){
                $stmts = $conn->prepare($INSERT);
                $stmts->bind_param("sssssss", $student_id, $name, $curriculum, $year, $section, $score, $classification);

                if ($stmts->execute()) {
                    echo "Todo created successfully";
                    header("location: ../end.php");
                    exit();
                } else {
                    // echo "Error: " . $stmt->error;
                    header("location: ../end.php?msg");
                }
            }else{
                echo"<script>
                    alert('You have been already get the test')
                    window.location.href = '../../landing/index.php';
                </script>";
                // header("location: ../../landing/index.php");
            };
            $conn->close();
        } catch (\Throwable $th) {
            //throw $th;
            echo $th;
        };

        
        // Close the statement and connection
        
       

        // header("location: ../end.php");
    };
?>