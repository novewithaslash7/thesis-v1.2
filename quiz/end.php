<?php
    session_start();

    // Check if the user is authenticated and has the 'admin' role
    if (!(isset($_SESSION['status']) && $_SESSION['status'] && isset($_SESSION['role']) && $_SESSION['role'] === 'user')) {
        // Redirect the user to a login page or display an access denied message
        header("Location: ../index.php"); // Replace login.php with your login page URL
        exit();
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- <script src="https://cdn.tailwindcss.com"></script> -->
    <script src="../tailwind/3.3.5.js"></script>
</head>
<body>

<div class="h-screen flex w-screen flex-col justify-center p-10">
            <!-- use text-start to start the paragraph in left and end to right -->
            <h1 class="text-7xl text-center font-bold">WELL DONE!</h1>
            <p class="text-center text-xl mt-5">Congratulations on completing your assessment! You have shown great dedication and commitment to your learning, and we are proud of your achievements. Your results demonstrate your hard work and dedication, and we are confident that you will continue to excel in your studies. Keep up the great work!</p>
</div>

</body>
</html>