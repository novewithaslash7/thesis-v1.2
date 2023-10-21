<!-- kun naka doc type frontend code -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assesment Test</title>
    <!-- copy this in each html codes // important!!! -->
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
    <div class="flex justify-center h-screen items-center bg-[url(./bg1.JPG)] bg-cover">
        <div class="p-5
            w-1/2
            border-0
            rounded-xl
            bg-[#FF6D60]/70
            ">
            <form action="./functions/regFunc.php" method="POST" class="flex flex-col justify-center items-center gap-5">
                
                <h2 class="font-bold">Welcome to ICT Assessment Test</h2>
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
                    <input required class="p-3 grow border rounded-xl border-solid" type="password" name="re_password" placeholder="Re-Enter Password">
                </div>
                
                <input class="bg-gray-100 p-3 w-full border rounded-xl hover:bg-[#F3E99F] " name="register" type="submit" value="REGISTER">
                <!-- <a class="hover:bg-[#F3E99F]" href="./register.php"></a> -->
            </form>
        </div>
        
    </div>
    
    
    
</body>
</html>
