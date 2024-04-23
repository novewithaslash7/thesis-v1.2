<?php 
    include "./db.php";

    // login function
    // here is a statement that check is POST with a name of login. If true it will run the code inside
    if(isset($_POST['login'])){
        // session start is a fucntion that prevent unwanted user to go in the other page without login
        session_start();
        // data store for input variable - ang gina storan ka credentials ni user
        $student_id = $_POST['student_id'];
        $password = $_POST['password'];

        // code below is preparing the query with a username checking
        $stmt = $conn->prepare('SELECT * FROM users WHERE student_id = ?');
        //  get user data
        $stmt->bind_param("s", $student_id);
        // code below execute the query
        $stmt->execute();
        $stmt_result = $stmt->get_result();
        if($stmt_result->num_rows > 0) {
            $data = $stmt_result->fetch_assoc();
            // checking if sakto ang password nga gn input
            if($data['password'] === $password){
                session_start();
                // save user data to session
                $_SESSION['student_id']=$student_id;
                $_SESSION['status']=true;
                $_SESSION['role'] = 'user';

                $_SESSION['name'] = $data['lastName']. ', '. $data['firstName']. ' '. $data['middleName'];
                $_SESSION['curriculum'] = $data['curriculum'];
                $_SESSION['year'] = $data['year'];
                $_SESSION['section'] = $data['section'];
                // ma direct sa landing page if successful ang pag reg
                header("location:../landing/index.php");

                // if invali ang user ma warning
            }else{
                echo "invalid";
            }
        }else{
            echo "<h2>Invalid Username or Password</h2>";
        } 
    }
?>