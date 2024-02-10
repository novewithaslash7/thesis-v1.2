
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
        table, th, td, tr{
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
    <div class="flex flex-col justify-center gap-5 p-5" >
        <!-- filter form -->
        <div>
            <form class="flex gap-3">

                <!-- studet Id -->
                <input class="p-3 bg-white border rounded-xl border-solid" type="text" name="student_id" placeholder="Student ID">
                
                <!-- year -->
                <select class="p-3 bg-white border rounded-xl border-solid" name="year" placeholder="Year">
                    <option selected hidden value="">Year</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                </select>
                <!-- section -->
                <select class="p-3 bg-white border rounded-xl border-solid" name="section" placeholder="Section">
                    <option selected hidden value="">Section</option>
                    <option value="A">A</option>
                    <option value="B">B</option>
                    <option value="C">C</option>
                    <option value="D">D</option>
                </select>

                <!-- curriculumn -->
                <select class="p-3 bg-white border rounded-xl border-solid" name="curriculum" placeholder="Year">
                    <option selected hidden value="">Curriculum</option>
                    <option value="BS Information Technology">BS Information Technology</option>
                    <option value="BS Information Systems">BS Information Systems</option>

                </select>


                <!-- ACTION -->
                <input class="bg-gray-100 p-3 border rounded-xl hover:bg-gray-300 " name="filter" type="submit" value="Filter">
                <input class="bg-gray-100 p-3 border rounded-xl hover:bg-gray-300 " onclick="printDiv()" type="button" value="Print">
            </form>

        </div>
        <!-- table -->
        <div id="printable">
            <script src="https://cdn.tailwindcss.com"></script>
            <table class="table-fixed border border-1 border-solid w-full">
                <tr>
                    <th>Student ID</th>
                    <th>Name</th>
                    <th>Year</th>
                    <th>Section</th>
                    <th>Curriculum</th>
                    <th>Score</th>
                    <th>Date Finished</th>                        
                    <th>Classification</th>
                </tr>
                <?php 
                    include "./functions/db.php";

                    $query = "SELECT * FROM scores"; // Default query to select all

                    if(isset($_GET['year']) || isset($_GET['curriculum']) || isset($_GET['section']) || isset($_GET['student_id'])){
                        $query .= " WHERE 1=1"; // Start with 1=1 to simplify adding subsequent conditions

                        if(isset($_GET['year']) && $_GET['year'] !== ''){
                            $year = $_GET['year'];
                            $query .= " AND year='$year'";
                        }

                        if(isset($_GET['curriculum']) && $_GET['curriculum'] !== ''){
                            $curriculum = $_GET['curriculum'];
                            $query .= " AND curriculum='$curriculum'";
                        }

                        if(isset($_GET['section']) && $_GET['section'] !== ''){
                            $section = $_GET['section'];
                            $query .= " AND section='$section'";
                        }

                        if(isset($_GET['student_id']) && $_GET['student_id'] !== ''){
                            $student_id = $_GET['student_id'];
                            $query .= " AND student_id='$student_id'";
                        }

                        $query .= " ORDER BY name ASC"; // Add ordering to the end of the query
                    }
                    
                    $result = mysqli_query($conn, $query);
                    if(mysqli_num_rows($result) > 0){
                        while($row = mysqli_fetch_assoc($result)){
                ?>
                <tr>
                    <td class='p-3'><?php echo $row['student_id'] ?></td>
                    <td class='p-3'><?php echo $row['name'] ?></td>
                    <td class='p-3'><?php echo $row['year'] ?></td>
                    <td class='p-3'><?php echo $row['section'] ?></td>
                    <td class='p-3'><?php echo $row['curriculum'] ?></td>
                    <td class='p-3'><?php echo $row['score'] ?></td>
                    <td class='p-3'><?php echo $row['dateFinished'] ?></td>
                    <td class='p-3'><?php echo $row['classification'] ?></td>
                </tr>
                <?php 
                        }
                    }
                ?>
            </table>
        </div>
    </div>

    <script>
        function printDiv() {
            var divContents = document.getElementById("printable").innerHTML;
            var a = window.open('', 'Print-Window');
            a.document.open();
            a.document.write('<html>');
            a.document.write('<head>');
            a.document.write('<meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1"> <style>table, th, td, tr{border: 1px solid black;border-collapse: collapse;}</style><title>Yearly Assesment For ICT Students | Print</title></head>')
            a.document.write('<body >');
            a.document.write(divContents);
            a.document.write('</body></html>');
            a.document.close();
            setTimeout(function(){a.print();},1000);
            
        };  
    </script>

    
    
    
    
</body>
</html>
