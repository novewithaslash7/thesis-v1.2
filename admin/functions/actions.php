<?php

    include "./db.php";

    // add user
    if(isset($_POST['addUser'])){
        $name = $_POST['name'];
        $curriculum = $_POST['curriculum'];
        $year = $_POST['year'];
        $section = $_POST['section'];
        $student_id = $_POST['student_id'];
        $password = $_POST['password'];

        $SELECT = "SELECT student_id FROM users WHERE student_id='".$student_id."'";
        $INSERT = "INSERT INTO users (student_id, name, curriculum, year, section, password) VALUES (?,?,?,?,?,?)";
        $stmt = $conn->query($SELECT);
        if($stmt->num_rows == 0){
            $stmt = $conn->prepare($INSERT);
            $stmt->bind_param("ssssss", $student_id, $name, $curriculum, $year, $section, $password);

            if ($stmt->execute()) {
                echo "Todo created successfully";
                header("location: ../users.php");
                exit();
            } else {
                // echo "Error: " . $stmt->error;
                header("location: ../users.php?msg");
            }
        }else{
            echo"Someone already register using this email";
        }
        // Close the statement and connection
        
        $conn->close();
    };
    // updateUser
    if(isset($_POST['cancelUser'])){
        header('location:../users.php');
    };
    if(isset($_POST['updateUser'])){
        $name = $_POST['name'];
        $curriculum = $_POST['curriculum'];
        $year = $_POST['year'];
        $section = $_POST['section'];
        $student_id = $_POST['student_id'];
        $password = $_POST['password'];

        $UPDATE = "UPDATE users SET name = ?, curriculum = ?, year = ?, section = ?, student_id = ?, password = ? WHERE student_id = ? ";
		$stmt = $conn->prepare($UPDATE);
		$stmt->bind_param('sssssss', $name, $curriculum, $year, $section, $student_id, $password, $student_id);

		if($stmt->execute()){
			// echo 'Record Updated';
			header('location:../users.php');
		}else{
			echo 'Record update error';
		};
        
        $conn->close();
    };

    

    
    // add question
    if(isset($_POST['addQuestion'])){
        $question = $_POST['question'];
        $question = $_POST['question'];
        $incorrect_answer_1 = $_POST['incorrect_answer_1'];
        $incorrect_answer_2 = $_POST['incorrect_answer_2'];
        $incorrect_answer_3 = $_POST['incorrect_answer_3'];
        $correct_answer = $_POST['correct_answer'];
        $curriculum = $_POST['curriculum'];
        $year = $_POST['year'];

        $INSERT = "INSERT INTO questions (question, incorrect_answer_1, incorrect_answer_2, incorrect_answer_3, correct_answer, curriculum, year) VALUES (?,?,?,?,?,?,?)";
        
        $stmt = $conn->prepare($INSERT);
        $stmt->bind_param("sssssss", $question, $incorrect_answer_1, $incorrect_answer_2, $incorrect_answer_3, $correct_answer, $curriculum, $year);

        if ($stmt->execute()) {
            header("location: ../questions.php");
            exit();
        } else {
            // echo "Error: " . $stmt->error;
            header("location: ../questions.php?msg");
        }
        
        // Close the statement and connection
        
        $conn->close();
    };
    // update question
    if(isset($_POST['cancelQuestion'])){
        header('location:../questions.php');
    };
    if(isset($_POST['updateQuestion'])){
        $id = $_POST['id'];
        $question = $_POST['question'];
        $incorrect_answer_1 = $_POST['incorrect_answer_1'];
        $incorrect_answer_2 = $_POST['incorrect_answer_2'];
        $incorrect_answer_3 = $_POST['incorrect_answer_3'];
        $correct_answer = $_POST['correct_answer'];
        $curriculum = $_POST['curriculum'];
        $year = $_POST['year'];

        // echo `$id, $question, $incorrect_answer_1, $incorrect_answer_2, $incorrect_answer_3, $correct_answer, $curriculum `;

        $UPDATE = "UPDATE questions SET question=?, incorrect_answer_1=?, incorrect_answer_2=?, incorrect_answer_3=?, correct_answer=?, curriculum=?, year=?  WHERE id = ? ";
		$stmt = $conn->prepare($UPDATE);
		$stmt->bind_param("ssssssss", $question, $incorrect_answer_1, $incorrect_answer_2, $incorrect_answer_3, $correct_answer, $curriculum, $year, $id);

		if ($stmt->execute()) {
            header("location: ../questions.php");
            exit();
        } else {
            // echo "Error: " . $stmt->error;
            header("location: ../questions.php?msg");
        }
        
        $conn->close();
    };
    // delete question


    
    // get scores with filter


    // get scores

    



?>