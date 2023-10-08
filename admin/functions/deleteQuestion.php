<?php
    include "./db.php";
    if(isset($_GET['id'])){
		$id = $_GET["id"];
		// echo $lib_ID;
		$sql = "DELETE FROM questions WHERE id='" . $id . "'";
	    if(mysqli_query($conn, $sql)){
	    	header('location:../questions.php');
	    };	    
	};
?>