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
        <img class="h-[80px]" src="./logo.png">

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
            <h1 class="font-bold text-white drop-shadow-2xl text-9xl">Faculty</h1>
        </div>
        
    </div>
    <!-- left image -->
    <div class="flex h-screen bg-[#BBF1FA] gap-3 p-3">
        <!-- image -->
        <div class="w-1/2 p-20 flex justify-center">
            <img src="1k.jpg" alt="">
        </div>

        <div class="flex w-1/2 flex-col justify-center items-end p-10">
            <h1 class="text-7xl text-end font-bold">DR. ROSIE JANE P. SIOSAN</h1>
            <p class="text-end text-xl mt-5">An ICT Assessment Test is a comprehensive evaluation of an individual's proficiency in information technology, covering topics such as hardware, software, networking, and cybersecurity. It is commonly used in education and employment settings to assess digital competence and readiness.</p>
        </div>  
    </div>
    <!-- right image -->
    <div class="flex h-screen bg-[#BBF1FA] gap-3 p-3">
        

        <div class="flex w-1/2 flex-col justify-center items-end p-10">
            <!-- use text-start to start the paragraph in left and end to right -->
            <h1 class="text-7xl text-start font-bold">ENGR. MARILYN P. MONCAL</h1>
            <p class="text-start text-xl mt-5">An ICT Assessment Test is a comprehensive evaluation of an individual's proficiency in information technology, covering topics such as hardware, software, networking, and cybersecurity. It is commonly used in education and employment settings to assess digital competence and readiness.</p>
        </div>
        <!-- image -->
        <div class="w-1/2 p-20 flex justify-center">
            <img src="1b.jpg" alt="">
        </div>  
    </div>
    <!-- left image -->
    <div class="flex h-screen bg-[#BBF1FA] gap-3 p-3">
        <!-- image -->
        <div class="w-1/2 p-20 flex justify-center">
            <img src="1h.jpg" alt="">
        </div>

        <div class="flex w-1/2 flex-col justify-center items-end p-10">
            <h1 class="text-7xl text-end font-bold">ENGR. MA. ELENA GRACE P. PARCON</h1>
            <p class="text-end text-xl mt-5">An ICT Assessment Test is a comprehensive evaluation of an individual's proficiency in information technology, covering topics such as hardware, software, networking, and cybersecurity. It is commonly used in education and employment settings to assess digital competence and readiness.</p>
        </div>  
    </div>
    <!-- right image -->
    <div class="flex h-screen bg-[#BBF1FA] gap-3 p-3">
        

        <div class="flex w-1/2 flex-col justify-center items-end p-10">
            <!-- use text-start to start the paragraph in left and end to right -->
            <h1 class="text-7xl text-start font-bold">PROF. JANET FRANCISCO</h1>
            <p class="text-start text-xl mt-5">An ICT Assessment Test is a comprehensive evaluation of an individual's proficiency in information technology, covering topics such as hardware, software, networking, and cybersecurity. It is commonly used in education and employment settings to assess digital competence and readiness.</p>
        </div>
        <!-- image -->
        <div class="w-1/2 p-20 flex justify-center">
            <img src="1o.jpg" alt="">
        </div>  
    </div>
    <!-- left image -->
    <div class="flex h-screen bg-[#BBF1FA] gap-3 p-3">
        <!-- image -->
        <div class="w-1/2 p-20 flex justify-center">
            <img src="1L.JPG" alt="">
        </div>

        <div class="flex w-1/2 flex-col justify-center items-end p-10">
            <h1 class="text-7xl text-end font-bold">DR. RITA JAUDIAN</h1>
            <p class="text-end text-xl mt-5">An ICT Assessment Test is a comprehensive evaluation of an individual's proficiency in information technology, covering topics such as hardware, software, networking, and cybersecurity. It is commonly used in education and employment settings to assess digital competence and readiness.</p>
        </div>  
    </div>
    <!-- right image -->
    <div class="flex h-screen bg-[#BBF1FA] gap-3 p-3">
        

        <div class="flex w-1/2 flex-col justify-center items-end p-10">
            <!-- use text-start to start the paragraph in left and end to right -->
            <h1 class="text-7xl text-start font-bold">PROF. BERNADETTE SILVEDERIO</h1>
            <p class="text-start text-xl mt-5">An ICT Assessment Test is a comprehensive evaluation of an individual's proficiency in information technology, covering topics such as hardware, software, networking, and cybersecurity. It is commonly used in education and employment settings to assess digital competence and readiness.</p>
        </div>
        <!-- image -->
        <div class="w-1/2 p-20 flex justify-center">
            <img src="1N.JPG" alt="">
        </div>  
    </div>
    <!-- left image -->
    <div class="flex h-screen bg-[#BBF1FA] gap-3 p-3">
        <!-- image -->
        <div class="w-1/2 p-20 flex justify-center">
            <img src="1F.JPG" alt="">
        </div>

        <div class="flex w-1/2 flex-col justify-center items-end p-10">
            <h1 class="text-7xl text-end font-bold">MR. WINSTON CORNEJA</h1>
            <p class="text-end text-xl mt-5">An ICT Assessment Test is a comprehensive evaluation of an individual's proficiency in information technology, covering topics such as hardware, software, networking, and cybersecurity. It is commonly used in education and employment settings to assess digital competence and readiness.</p>
        </div>  
    </div>
    <!-- right image -->
    <div class="flex h-screen bg-[#BBF1FA] gap-3 p-3">
        

        <div class="flex w-1/2 flex-col justify-center items-end p-10">
            <!-- use text-start to start the paragraph in left and end to right -->
            <h1 class="text-7xl text-start font-bold">PROF. LESTER DELA CRUZ</h1>
            <p class="text-start text-xl mt-5">An ICT Assessment Test is a comprehensive evaluation of an individual's proficiency in information technology, covering topics such as hardware, software, networking, and cybersecurity. It is commonly used in education and employment settings to assess digital competence and readiness.</p>
        </div>
        <!-- image -->
        <div class="w-1/2 p-20 flex justify-center">
            <img src="1I.JPG" alt="">
        </div>  
    </div>
    <!-- left image -->
    <div class="flex h-screen bg-[#BBF1FA] gap-3 p-3">
        <!-- image -->
        <div class="w-1/2 p-20 flex justify-center">
            <img src="1C.JPG" alt="">
        </div>

        <div class="flex w-1/2 flex-col justify-center items-end p-10">
            <h1 class="text-7xl text-end font-bold">PROF. EDISON SILVESTRE</h1>
            <p class="text-end text-xl mt-5">An ICT Assessment Test is a comprehensive evaluation of an individual's proficiency in information technology, covering topics such as hardware, software, networking, and cybersecurity. It is commonly used in education and employment settings to assess digital competence and readiness.</p>
        </div>  
    </div>
    <!-- right image -->
    <div class="flex h-screen bg-[#BBF1FA] gap-3 p-3">
        

        <div class="flex w-1/2 flex-col justify-center items-end p-10">
            <!-- use text-start to start the paragraph in left and end to right -->
            <h1 class="text-7xl text-start font-bold">PROF. JEANY ROSE IGNACIO</h1>
            <p class="text-start text-xl mt-5">An ICT Assessment Test is a comprehensive evaluation of an individual's proficiency in information technology, covering topics such as hardware, software, networking, and cybersecurity. It is commonly used in education and employment settings to assess digital competence and readiness.</p>
        </div>
        <!-- image -->
        <div class="w-1/2 p-20 flex justify-center">
            <img src="1A.JPG" alt="">
        </div>  
    </div>
    <!-- left image -->
    <div class="flex h-screen bg-[#BBF1FA] gap-3 p-3">
        <!-- image -->
        <div class="w-1/2 p-20 flex justify-center">
            <img src="1P.JPG" alt="">
        </div>

        <div class="flex w-1/2 flex-col justify-center items-end p-10">
            <h1 class="text-7xl text-end font-bold">MS. CLAUDINE MAE LEYSA</h1>
            <p class="text-end text-xl mt-5">An ICT Assessment Test is a comprehensive evaluation of an individual's proficiency in information technology, covering topics such as hardware, software, networking, and cybersecurity. It is commonly used in education and employment settings to assess digital competence and readiness.</p>
        </div>  
    </div>
    <!-- right image -->
    <div class="flex h-screen bg-[#BBF1FA] gap-3 p-3">
        

        <div class="flex w-1/2 flex-col justify-center items-end p-10">
            <!-- use text-start to start the paragraph in left and end to right -->
            <h1 class="text-7xl text-start font-bold">PROF. GENEFERE VA-AY</h1>
            <p class="text-start text-xl mt-5">An ICT Assessment Test is a comprehensive evaluation of an individual's proficiency in information technology, covering topics such as hardware, software, networking, and cybersecurity. It is commonly used in education and employment settings to assess digital competence and readiness.</p>
        </div>
        <!-- image -->
        <div class="w-1/2 p-20 flex justify-center">
            <img src="1J.JPG" alt="">
        </div>  
    </div>
    <!-- left image -->
    <div class="flex h-screen bg-[#BBF1FA] gap-3 p-3">
        <!-- image -->
        <div class="w-1/2 p-20 flex justify-center">
            <img src="1D.JPG" alt="">
        </div>

        <div class="flex w-1/2 flex-col justify-center items-end p-10">
            <h1 class="text-7xl text-end font-bold">MR. ALVIN VILLARUEL</h1>
            <p class="text-end text-xl mt-5">An ICT Assessment Test is a comprehensive evaluation of an individual's proficiency in information technology, covering topics such as hardware, software, networking, and cybersecurity. It is commonly used in education and employment settings to assess digital competence and readiness.</p>
        </div>  
    </div>
    <!-- right image -->
    <div class="flex h-screen bg-[#BBF1FA] gap-3 p-3">
        

        <div class="flex w-1/2 flex-col justify-center items-end p-10">
            <!-- use text-start to start the paragraph in left and end to right -->
            <h1 class="text-7xl text-start font-bold">MR. RICKY CYRIL PERUCHO</h1>
            <p class="text-start text-xl mt-5">An ICT Assessment Test is a comprehensive evaluation of an individual's proficiency in information technology, covering topics such as hardware, software, networking, and cybersecurity. It is commonly used in education and employment settings to assess digital competence and readiness.</p>
        </div>
        <!-- image -->
        <div class="w-1/2 p-20 flex justify-center">
            <img src="1G.JPG" alt="">
        </div>  
    </div>
    <!-- left image -->
    <div class="flex h-screen bg-[#BBF1FA] gap-3 p-3">
        <!-- image -->
        <div class="w-1/2 p-20 flex justify-center">
            <img src="1M.JPG" alt="">
        </div>

        <div class="flex w-1/2 flex-col justify-center items-end p-10">
            <h1 class="text-7xl text-end font-bold">MS. NICOLE GADONG</h1>
            <p class="text-end text-xl mt-5">An ICT Assessment Test is a comprehensive evaluation of an individual's proficiency in information technology, covering topics such as hardware, software, networking, and cybersecurity. It is commonly used in education and employment settings to assess digital competence and readiness.</p>
        </div>  
    </div>
    <!-- right image -->
    <div class="flex h-screen bg-[#BBF1FA] gap-3 p-3">
        

        <div class="flex w-1/2 flex-col justify-center items-end p-10">
            <!-- use text-start to start the paragraph in left and end to right -->
            <h1 class="text-7xl text-start font-bold">MR. RHENLY FANGO</h1>
            <p class="text-start text-xl mt-5">An ICT Assessment Test is a comprehensive evaluation of an individual's proficiency in information technology, covering topics such as hardware, software, networking, and cybersecurity. It is commonly used in education and employment settings to assess digital competence and readiness.</p>
        </div>
        <!-- image -->
        <div class="w-1/2 p-20 flex justify-center">
            <img src="https://picsum.photos/300/200" alt="">
        </div>  
    </div>



            
</body>
</html>