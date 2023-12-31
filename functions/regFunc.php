<?php

    include "./db.php";

    if(isset($_POST['register'])){
        $firstName = $_POST['firstName'];
        $middleName = $_POST['middleName'];
        $lastName = $_POST['lastName'];
        $curriculum = $_POST['curriculum'];
        $year = $_POST['year'];
        $section = $_POST['section'];
        $student_id = $_POST['student_id'];
        $password = $_POST['password'];
        $re_password = $_POST['re_password'];

        $SELECT = "SELECT student_id FROM users WHERE student_id='".$student_id."'";
        $INSERT = "INSERT INTO users (student_id, firstName, middleName, lastName, curriculum, year, section, password) VALUES (?,?,?,?,?,?,?,?)";
        if($password == $re_password){
            $stmt = $conn->query($SELECT);
            if($stmt->num_rows == 0){
                $stmt = $conn->prepare($INSERT);
                $stmt->bind_param("ssssssss", $student_id, $firstName, $middleName, $lastName,  $curriculum, $year, $section, $password);

                if ($stmt->execute()) {
                    echo "Todo created successfully";
                    header("location: ../index.php");
                    exit();
                } else {
                    // echo "Error: " . $stmt->error;
                    header("location: ../register.php?msg");
                }
            }else{
                echo"Someone already register using this ID Number!";
            }
        }else{
            echo"Password is not the same";
        }
        
        // Close the statement and connection
        
        $conn->close();
    };

?>