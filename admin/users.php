<?php
    session_start();

    // Check if the user is authenticated and has the 'admin' role
    if (!(isset($_SESSION['status']) && $_SESSION['status'] && isset($_SESSION['role']) && $_SESSION['role'] === 'admin')) {
        // Redirect the user to a login page or display an access denied message
        header("Location: ./index.php"); // Replace login.php with your login page URL
        exit();
    }
?>
<!-- kun naka doc type frontend code -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assesment Test</title>
    <!-- copy this in each html codes -->
    <script src="../tailwind/3.3.5.js"></script>
    <!-- <script src="https://cdn.tailwindcss.com"></script> -->
    <style>
        table, th, td{
            border: 1px solid black;
            border-collapse: collapse;    
        }
    </style>
</head>
<body>
    <div class="w-full flex flex-row items-center justify-between p-5 bg-gray-200">
        <div class="ml-10 flex">
            <img class="h-[70px]" src="./wvsu.png"> 
            <img class="h-[70px]" src="./ICT.png">
        </div>

        <div class="mr-10">
            <li class="flex flex-row gap-10 items-center">
                <ul><a class="hover:underline font-bold" href="./users.php">Users</a></ul>
                <ul><a class="hover:underline font-bold" href="./questions.php">Questions</a></ul>
                <ul><a class="hover:underline font-bold" href="./scores.php">Scores</a></ul>
                <ul><a class="hover:underline font-bold" href="./functions/logout.php">Log Out</a></ul>
            </li>
        </div>
    </div>

    <div class="flex flex-col">
        <div class="p-10 flex justify-center items-center h-full w-full ">
            <div class="bg-[#FF6D60]/70 flex flex-col p-5 border rounded-xl w-1/2">
                <form action="./functions/actions.php" method="POST" class="flex flex-col justify-center items-center gap-5">
                    <?php
                        if(isset($_GET['student_id'])){
                            $student_id = $_GET['student_id'];
                            $firstName = $_GET['firstName'];
                            $middleName = $_GET['middleName'];
                            $lastName = $_GET['lastName'];
                            $curriculum = $_GET['curriculum'];
                            $year = $_GET['year'];
                            $section = $_GET['section'];
                            $password = $_GET['password'];

                            echo '
                                <h2 class="font-bold">Users</h2>
                                <input required class="p-3 w-full border rounded-xl border-solid" type="text" name="firstName" value="'.$firstName.'" placeholder="First Name">
                                <input required class="p-3 w-full border rounded-xl border-solid" type="text" name="middleName" value="'.$middleName.'" placeholder="Middle Name">
                                <input required class="p-3 w-full border rounded-xl border-solid" type="text" name="lastName" value="'.$lastName.'" placeholder="Last Name">


                                
                                <div class="flex w-full flex-row gap-2">
                                    <select class="p-3 grow bg-white border rounded-xl border-solid" name="curriculum">
                                        <option '.(($curriculum == "BS Information Technology")? 'selected':'').' value="BS Information Technology">BS Information Technology</option>
                                        <option '.(($curriculum == "BS Information Systems")? 'selected':'').' value="BS Information Systems">BS Information Systems</option>

                                    </select>
                                    
                                    <select class="p-3 bg-white grow border rounded-xl border-solid" name="year">
                                        <option '.(($year == "1")? 'selected':'').' value="1">1</option>
                                        <option '.(($year == "2")? 'selected':'').' value="2">2</option>
                                        <option '.(($year == "3")? 'selected':'').' value="3">3</option>
                                        <option '.(($year == "4")? 'selected':'').' value="4">4</option>
                                    </select>
                                    
                                    <select class="p-3 bg-white grow border rounded-xl border-solid" name="section">
                                        <option '.(($section == "A")? 'selected':'').' value="A">A</option>
                                        <option '.(($section == "B")? 'selected':'').' value="B">B</option>
                                        <option '.(($section == "C")? 'selected':'').' value="C">C</option>
                                        <option '.(($section == "D")? 'selected':'').' value="D">D</option>
                                    </select>
                                    
                                </div>                

                                <input required class="p-3 bg-white w-full border rounded-xl border-solid" type="text" value="'.$student_id.'" name="student_id" placeholder="Student ID" hidden>
                                <input required class="p-3 w-full border rounded-xl border-solid" type="password" value="'.$password.'" name="password" placeholder="Password">
                                
                                <div class="flex gap-3 w-full">
                                    <input class="bg-gray-100 p-3 flex-grow border rounded-xl hover:bg-[#F3E99F] " type="submit" name="updateUser" value="UPDATE"> 
                                    <input class="bg-gray-100 p-3 flex-grow border rounded-xl hover:bg-[#F3E99F] " type="submit" name="cancelUser" value="CANCEL">
                                
                                </div>
                            ';

                        }else{
                            echo '
                                <h2 class="font-bold">Users</h2>
                                <input required class="p-3 w-full border rounded-xl border-solid" type="text" name="firstName" placeholder="First Name">
                                <input required class="p-3 w-full border rounded-xl border-solid" type="text" name="middleName" placeholder="Middle Name">
                                <input required class="p-3 w-full border rounded-xl border-solid" type="text" name="lastName" placeholder="Last Name">


                                
                                <!-- <input required class="p-3 w-full border rounded-xl border-solid" type="text" name="student_id" placeholder="Curriculum"> -->

                                <div class="flex w-full flex-row gap-2">
                                    <select class="p-3 grow border rounded-xl border-solid" name="curriculum" placeholder="curriculum">
                                        <option selected hidden value="">Curriculum</option>
                                        <option value="BS Information Technology">BS Information Technology</option>
                                        <option value="BS Information Systems">BS Information Systems</option>

                                    </select>
                                    
                                    <select class="p-3 grow border rounded-xl border-solid" name="year" placeholder="Year">
                                        <option selected hidden value="">Year</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                    </select>
                                    
                                    <select class="p-3 grow border rounded-xl border-solid" name="section" placeholder="Section">
                                        <option selected hidden value="">Section</option>
                                        <option value="A">A</option>
                                        <option value="B">B</option>
                                        <option value="C">C</option>
                                        <option value="D">D</option>
                                    </select>
                                    
                                </div>                

                                <input required class="p-3 w-full border rounded-xl border-solid" type="text" name="student_id" placeholder="Student ID">
                                <div class="flex w-full flex-row gap-2">
                                    <input required class="p-3 grow border rounded-xl border-solid" type="password" name="password" placeholder="Password">
                                </div>
                                
                                <input class="bg-gray-100 p-3 w-full border rounded-xl hover:bg-[#F3E99F] " type="submit" name="addUser" value="ADD">   
                            ';
                        };
                    
                    ?>
                    
                    <!-- <a class="hover:bg-[#F3E99F]" href="./register.php"></a> -->
                </form>
            </div>
        </div>

        <div class="p-10 flex justify-center items-start w-full overflow-scroll">
            <div>
                <table class="table-fixed border border-1 border-solid w-full">
                <!-- User information kag kung pass or failed tana -->
                    <tr>
                        <th>Student ID</th>
                        <th>First Name</th>
                        <th>Middle Name</th>
                        <th>Last Name</th>
                        <th>Curriculum</th>
                        <th>Year</th>
                        <th>Section</th>
                        <th>Actions</th>
                    </tr>
                <?php 
                    include "./functions/db.php";
                    
                    $query = "SELECT * FROM users";
                    $result = mysqli_query($conn, $query);
                    if(mysqli_num_rows($result) > 0){
                        while($row = mysqli_fetch_assoc($result)){
                ?>
                    <tr>
                        <td class="p-3"><?php echo $row['student_id'] ?></td>
                        <td class="p-3"><?php echo $row['firstName'] ?></td>
                        <td class="p-3"><?php echo $row['middleName'] ?></td>
                        <td class="p-3"><?php echo $row['lastName'] ?></td>
                        <td class="p-3"><?php echo $row['curriculum'] ?></td>
                        <td class="p-3"><?php echo $row['year'] ?></td>
                        <td class="p-3"><?php echo $row['section'] ?></td>
                        <td class="p-3">
                            <div class="flex justify-around">
                                <button><a class="hover:underline" href="users.php?student_id=<?php echo $row['student_id']; ?>&firstName=<?php echo $row['firstName'] ?>&middleName=<?php echo $row['middleName'] ?>&lastName=<?php echo $row['lastName'] ?>&curriculum=<?php echo $row['curriculum'] ?>&year=<?php echo $row['year'] ?>&section=<?php echo $row['section'] ?>&password=<?php echo $row['password'] ?>">Edit</a></button>
                                <button class="hover:underline" onclick="userDelete(`<?php echo $row['student_id'] ?>`)">Delete</button> 
                            </div>
                            
                        </td>
                    </tr>
                <?php 
                        }
                    }
                ?>
                
                </table>
            </div>
            
        </div>
    </div>
    
    <script>
        function userDelete(id){
            console.log(id)
            var confirmDelete = confirm("Are you sure you want to delete this record?");
            if (confirmDelete) {
                window.location.href = `./functions/deleteUser.php?student_id=${id}`;
            } else {
                // window.location.href = "./users.php";
            };
        }
    </script>
    
</body>
</html>
