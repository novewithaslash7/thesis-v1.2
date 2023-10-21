<?php
    session_start();

    // Check if the user is authenticated and has the 'admin' role
    if (!(isset($_SESSION['status']) && $_SESSION['status'] && isset($_SESSION['role']) && $_SESSION['role'] === 'user')) {
        // Redirect the user to a login page or display an access denied message
        header("Location: ../index.php"); // Replace login.php with your login page URL
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
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        table, th, td{
            border: 1px solid black;
            border-collapse: collapse;    
        }
    </style>
</head>
<body>
    <div class="flex gap-3 w-full flex flex-row justify-between items-center p-5 bg-[#EC4646]">
        <div class="flex items-center gap-3 ml-10">
            
            <img class="h-[70px]" src="./wvsu.png"> 
            <img class="h-[70px]" src="./ICT.png">

        </div>
            
        <div class="mr-10">
            <li class="flex flex-row gap-10 items-center">
                <ul><a class="hover:underline font-bold" href="./index.php">Home</a></ul>
                <ul><a class="hover:underline font-bold" href="./faculty.php">Faculty</a></ul>
                <ul><a class="hover:underline font-bold" href="./course.php">Courses</a></ul>
                <ul><a class="hover:underline font-bold" href="../functions/logout.php">Log Out</a></ul>
            </li>
        </div>
    </div>

    <div class="w-full  bg-[url(./top.jpg)] bg-cover bg-center  ">
        <div class="bg-gray-800/40 w-full h-full flex items-center justify-center py-20">
            <h1 class="font-bold text-white drop-shadow-2xl text-9xl">Courses</h1>
        </div>
        
    </div>

    <!-- left image -->
    <div class="flex bg-[#BBF1FA] gap-3 p-3 border border-0 border-b-2 border-black">
        <!-- image -->
        <div class="w-1/2 p-20 flex justify-center">
            <img src="https://picsum.photos/300/200" alt="">
        </div>

        <div class="flex w-1/2 flex-col justify-center items-end p-10">
            <h1 class="text-6xl text-end font-bold">BACHELOR OF SCIENCE IN INFORMATION TECHNOLOGY</h1>
            <p class="text-end text-xl mt-5">The BS Information Technology aims to produce quality graduates who study, analyze, design, develop, implement, and evaluate ICT solutions. The program focuses on the use of ICT for a variety of applications, such as in business, governance, education, personal and entertainment. Professional subjects including logic design, microcomputer technology, computer system organization, networking technologies, and system resource management.</p>
        </div>  
    </div>
    <!-- <hr class="w-full h-1 mx-auto my-4 bg-gray-100 border-0 rounded md:my-10 dark:bg-gray-700"> -->
    <!-- right image -->
    <div class="flex bg-[#BBF1FA] gap-3 p-3 pt-10">
     


        <div class="flex w-1/2 flex-col justify-center items-end p-10">
            <!-- use text-start to start the paragraph in left and end to right -->
            <h1 class="text-6xl text-start font-bold">BACHELOR OF SCIENCE IN INFORMATION SYSTEMS</h1>
            <p class="text-start text-xl mt-5">The BS Information Systems program aims to equip students with the knowledge, skills and attitude in the design and implementation of solutions that integrate information technology with business processes. This program prepares students to be IT professionals who could harness ICT as a strategic resource to meet business and organizational objectives.  Graduates of BSIS are expected to have acquired but not limited to the following competencies; (a)personal skills, (b)interpersonal skills, (c)technical understanding on information abstraction, representation, and organization; computing architecture and delivery system concepts of information system distribution; information management in system development; and computing tools and knowledge applications.</p>
        </div>
        <!-- image -->
        <div class="w-1/2 p-20 flex justify-center">
            <img src="https://picsum.photos/300/200" alt="">
        </div>  
    </div>

    
    
    
</body>
</html>