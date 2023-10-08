<?php
    include "./db.php";
    if(isset($_GET['student_id'])){
		$student_id = $_GET["student_id"];
		// echo $lib_ID;
		$sql = "DELETE FROM users WHERE student_id='" . $student_id . "'";
	    if(mysqli_query($conn, $sql)){
	    	header('location:../users.php');
	    };	    
	};
?>