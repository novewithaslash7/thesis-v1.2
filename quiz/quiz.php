<?php
    session_start();

    // Check if the user is authenticated and has the 'admin' role
    if (!(isset($_SESSION['status']) && $_SESSION['status'] && isset($_SESSION['role']) && $_SESSION['role'] === 'user')) {
        // Redirect the user to a login page or display an access denied message
        header("Location: ../index.php"); // Replace login.php with your login page URL
        exit();
    }else{
      include "./functions/db.php";
      $student_id = $_SESSION['student_id'];
      $SELECT = "SELECT student_id FROM scores WHERE student_id='".$student_id."'";
      $stmt = $conn->query($SELECT);
      if($stmt->num_rows != 0){
        echo"<script>
            alert('You have been already get the test')
            window.location.href = '../landing/index.php';
        </script>";
      }
      $conn->close();
// Sa quiz dun ja kung e pa debug ni maam meg
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assessment</title>
    <link rel="stylesheet" href="app.css" />
    <link rel="stylesheet" href="game.css" />

    <!-- <script src="https://cdn.tailwindcss.com"></script> -->
</head>
<body>
    
    <div class="container">
      <div id="loader"></div>
      <div id="game" class="justify-center flex-column hidden">
        <div>
          <h3>
            <?php
              echo "".$_SESSION['name']." ".$_SESSION['curriculum']." ".$_SESSION['year']." ".$_SESSION['section']."";
            ?>
          </h3>
        </div>
        <div id="hud">
          <div id="hud-item">
            <p id="progressText" class="hud-prefix">
              Question
            </p>
            <div id="progressBar">
              <div id="progressBarFull"></div>
            </div>
          </div>
          <div id="hud-item">
            <!-- <p class="hud-prefix">
              Score
            </p> -->
            <!-- <h1 class="hud-main-text" id="score">
              0
            </h1> -->
         <!-- Mga pirilian nga answer sa questions -->
          </div>
        </div>
        <h3 id="question"></h3>
        <div class="choice-container">
          <p class="choice-prefix">A</p>
          <p class="choice-text" data-number="1"></p>
        </div>
        <div class="choice-container">
          <p class="choice-prefix">B</p>
          <p class="choice-text" data-number="2"></p>
        </div>
        <div class="choice-container">
          <p class="choice-prefix">C</p>
          <p class="choice-text" data-number="3"></p>
        </div>
        <div class="choice-container">
          <p class="choice-prefix">D</p>
          <p class="choice-text" data-number="4"></p>
        </div>
      </div>
    </div>
    
    <?php
      echo "
        <script>
          var student_id = '".$_SESSION['student_id']."';
          var name = '".$_SESSION['name']."';
          var curriculum = '".$_SESSION['curriculum']."';
          var year = '".$_SESSION['year']."';
          var section = '".$_SESSION['section']."';
          
        </script>
      "
    ?>
    <script>
        const question = document.getElementById('question');
        const choices = Array.from(document.getElementsByClassName('choice-text'));
        const progressText = document.getElementById('progressText');
        // const scoreText = document.getElementById('score');
        const progressBarFull = document.getElementById('progressBarFull');
        const loader = document.getElementById('loader');
        const game = document.getElementById('game');
        let currentQuestion = {};
        let acceptingAnswers = false;
        let score = 0;
        let questionCounter = 0;
        let availableQuesions = [];

        let questions = [];
        console.log(curriculum)
        fetch(`./functions/getQuestions.php?curriculum=${curriculum}&year=${year}`).then((res) => {
            // console.log(res)
            return res.json()
        }).then((loadedQuestions) => {
            // console.log(loadedQuestions)
            questions = loadedQuestions.map((loadedQuestion) => {
                // console.log(loadedQuestion)
                const formattedQuestion = {
                    question: loadedQuestion.question,
                };
                
                const answerChoices = [loadedQuestion.incorrect_answer_1,loadedQuestion.incorrect_answer_2,loadedQuestion.incorrect_answer_3];
                formattedQuestion.answer = Math.floor(Math.random() * 4) + 1;
                answerChoices.splice(
                    formattedQuestion.answer - 1,
                    0,
                    loadedQuestion.correct_answer
                );

                answerChoices.forEach((choice, index) => {
                    // console.log(choice)
                    formattedQuestion['choice' + (index + 1)] = choice;
                });

                // console.log(formattedQuestion)

                return formattedQuestion;

            });

            startGame();
        })
        // console.log('legth', questions.length, questions)

        // console.log(student_id, name);

        //CONSTANTS
        const CORRECT_BONUS = 1;
        var MAX_QUESTIONS = 0;

        startGame = () => {
            questionCounter = 0;
            score = 0;
            availableQuesions = [...questions];
            MAX_QUESTIONS = questions.length
            // console.log(availableQuesions)
            getNewQuestion();
            game.classList.remove('hidden');
            loader.classList.add('hidden');
        };

        getNewQuestion = () => {
            if (availableQuesions.length === 0 || questionCounter >= MAX_QUESTIONS) {
                localStorage.setItem('mostRecentScore', score);
                //go to the end page
                return window.location.assign(`./functions/saveScore.php?score=${score}&name=${name}&student_id=${student_id}&curriculum=${curriculum}&year=${year}&section=${section}`);
            }
            questionCounter++;
            progressText.innerText = `Question ${questionCounter}/${MAX_QUESTIONS}`;
            //Update the progress bar
            progressBarFull.style.width = `${(questionCounter / MAX_QUESTIONS) * 100}%`;

            const questionIndex = Math.floor(Math.random() * availableQuesions.length);
            currentQuestion = availableQuesions[questionIndex];
            question.innerHTML = currentQuestion.question;

            choices.forEach((choice) => {
                const number = choice.dataset['number'];
                choice.innerHTML = currentQuestion['choice' + number];
            });

            availableQuesions.splice(questionIndex, 1);
            acceptingAnswers = true;
        };

        choices.forEach((choice) => {
            choice.addEventListener('click', (e) => {
                if (!acceptingAnswers) return;

                acceptingAnswers = false;
                const selectedChoice = e.target;
                const selectedAnswer = selectedChoice.dataset['number'];

                const classToApply =
                    selectedAnswer == currentQuestion.answer ? 'correct' : 'incorrect';

                if (classToApply === 'correct') {
                    incrementScore(CORRECT_BONUS);
                }

                selectedChoice.parentElement.classList.add(classToApply);

                setTimeout(() => {
                    selectedChoice.parentElement.classList.remove(classToApply);
                    getNewQuestion();
                }, 1000);
            });
        });

        incrementScore = (num) => {
            score += num;
            // scoreText.innerText = score;
        };
    </script>
    
</body>
</html>