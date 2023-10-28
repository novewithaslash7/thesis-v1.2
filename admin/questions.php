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
    <!-- <script src="https://cdn.tailwindcss.com"></script> -->
    <script src="../tailwind/3.3.5.js"></script>
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

    <div class=" flex flex-col w-screen">
        <div class="p-10 flex justify-center items-center w-full m-5 ">
            <div class="bg-[#FF6D60]/70 flex flex-col p-5 border w-1/2 rounded-xl">
                <form action="./functions/actions.php" method="POST" class="flex flex-col justify-center items-center gap-5">
                    <?php
                        if(isset($_GET['id'])){
                            $id = $_GET['id'];
                            $question = $_GET['question'];
                            $incorrect_answer_1 = $_GET['incorrect_answer_1'];
                            $incorrect_answer_2 = $_GET['incorrect_answer_2'];
                            $incorrect_answer_3 = $_GET['incorrect_answer_3'];
                            $correct_answer = $_GET['correct_answer'];
                            $curriculum = $_GET['curriculum'];
                            $year = $_GET['year'];
                            echo '
                                <h2 class="font-bold">Questions</h2>
                                <input required class="p-3 w-full border rounded-xl border-solid" type="text" name="question" placeholder="Question" value="'.$question.'">
            
                                <input required class="p-3 w-full border rounded-xl border-solid" type="text" name="incorrect_answer_1" placeholder="1 Answer" value="'.$incorrect_answer_1.'">
                                <input required class="p-3 w-full border rounded-xl border-solid" type="text" name="incorrect_answer_2" placeholder="2 Answer" value="'.$incorrect_answer_2.'">
                                <input required class="p-3 w-full border rounded-xl border-solid" type="text" name="incorrect_answer_3" placeholder="3 Answer" value="'.$incorrect_answer_3.'"> 
                                <input required class="p-3 w-full border rounded-xl border-solid" type="text" name="correct_answer" placeholder="Correct Answer" value="'.$correct_answer.'">
                                <select required class="p-3 bg-white w-full border rounded-xl border-solid" name="curriculum">
                                    <option '.(($curriculum == "BS Information Technology")? 'selected':'').' value="BS Information Technology">BS Information Technology</option>
                                    <option '.(($curriculum == "BS Information Systems")? 'selected':'').' value="BS Information Systems">BS Information Systems</option>
                                </select>
                                <select class="p-3 bg-white w-full border rounded-xl border-solid" name="year">
                                        <option '.(($year == 1)? 'selected':'').' value="1">1</option>
                                        <option '.(($year == 2)? 'selected':'').' value="2">2</option>
                                        <option '.(($year == 3)? 'selected':'').' value="3">3</option>
                                        <option '.(($year == 4)? 'selected':'').' value="4">4</option>
                                    </select>
                                <input hidden class="p-3 w-full border rounded-xl border-solid" type="text" name="id" placeholder="id" value="'.$id.'">
                                
                                <div class="flex gap-3 w-full">
                                    <input class="bg-gray-100 p-3 flex-grow border rounded-xl hover:bg-[#F3E99F] " type="submit" name="updateQuestion" value="UPDATE"> 
                                    <input class="bg-gray-100 p-3 flex-grow border rounded-xl hover:bg-[#F3E99F] " type="submit" name="cancelQuestion" value="CANCEL">
                                
                                </div>
                            ';

                        }else{
                            echo '
                                <h2 class="font-bold">Questions</h2>
                                <input required class="p-3 w-full border rounded-xl border-solid" type="text" name="question" placeholder="Question">
            
                                <input required class="p-3 w-full border rounded-xl border-solid" type="text" name="incorrect_answer_1" placeholder="1 Answer">
                                <input required class="p-3 w-full border rounded-xl border-solid" type="text" name="incorrect_answer_2" placeholder="2 Answer">
                                <input required class="p-3 w-full border rounded-xl border-solid" type="text" name="incorrect_answer_3" placeholder="3 Answer"> 
                                <input required class="p-3 w-full border rounded-xl border-solid" type="text" name="correct_answer" placeholder="Correct Answer">
                                <select required class="p-3 bg-white w-full border rounded-xl border-solid" name="curriculum">
                                    <option selected hidden value="">Curriculum</option>
                                    <option value="BS Information Technology">BS Information Technology</option>
                                    <option value="BS Information Systems">BS Information Systems</option>
                                </select>
                                <select class="p-3 bg-white w-full border rounded-xl border-solid" name="year">
                                        <option selected hidden value="">Year</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                    </select>
                                
                                <input class="bg-gray-100 p-3 w-full border rounded-xl hover:bg-[#F3E99F] " type="submit" name="addQuestion" value="ADD">
                            ';
                        };
                    ?>
                    
                </form>
            </div>
        </div>

        <div class="p-5 py-10 flex justify-center items-start w-full">
            <div>
                <table class="table-fixed border border-1 border-solid w-full">
                
                <tr>
                    <th>No.</th>
                    <th>Question</th>
                    <th>1 Answer</th>
                    <th>2 Answer</th>
                    <th>3 Answer</th>
                    <th>Correct Answer</th>
                    <th>Curriculum</th>
                    <th>Year</th>
                    <th>Actions</th>
                </tr>
                <?php 
                    include "./functions/db.php";
                    
                    $query = "SELECT * FROM questions";
                    $result = mysqli_query($conn, $query);
                    $count = 0;
                    if(mysqli_num_rows($result) > 0){
                        while($row = mysqli_fetch_assoc($result)){
                            $count++;
                ?>
                <tr>
                    <td><?php echo $count ?></td>
                    <td><?php echo $row['question'] ?></td>
                    <td><?php echo $row['incorrect_answer_1'] ?></td>
                    <td><?php echo $row['incorrect_answer_2'] ?></td>
                    <td><?php echo $row['incorrect_answer_3'] ?></td>
                    <td><?php echo $row['correct_answer'] ?></td>
                    <td><?php echo $row['curriculum'] ?></td>
                    <td><?php echo $row['year'] ?></td>
                    <td>
                        <div class="flex justify-around">
                            <button><a class="hover:underline" href="./questions.php?id=<?php echo $row['id']; ?>&question=<?php echo $row['question'] ?>&incorrect_answer_1=<?php echo $row['incorrect_answer_1'] ?>&incorrect_answer_2=<?php echo $row['incorrect_answer_2'] ?>&incorrect_answer_3=<?php echo $row['incorrect_answer_3'] ?>&correct_answer=<?php echo $row['correct_answer'] ?>&curriculum=<?php echo $row['curriculum'] ?>&year=<?php echo $row['year'] ?>">Edit</a></button>

                            <button class="hover:underline" onclick="questionDelete(`<?php echo $row['id'] ?>`)">Delete</button>
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
        function questionDelete(id){
            console.log(id)
            var confirmDelete = confirm("Are you sure you want to delete this record?");
            if (confirmDelete) {
                window.location.href = `./functions/deleteQuestion.php?id=${id}`;
            } else {
                // window.location.href = "./questions.php";
            };
        }
    </script>
    
    
</body>
</html>
