<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Тест для детей</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 20px;
        }
        .question {
            margin-bottom: 20px;
        }
        .question p {
            font-size: 18px;
        }
        .answers {
            margin-top: 10px;
        }
        .answers input {
            margin: 5px;
            cursor: pointer;
        }
        .result {
            margin-top: 20px;
            font-size: 20px;
        }
    </style>
</head>
<body>

    <h1>Простой тест</h1>

    <div class="question">
        <p>1. Сколько будет 2 + 2?</p>
        <div class="answers">
            <input type="radio" name="q1" value="1"> 3<br>
            <input type="radio" name="q1" value="2"> 4<br>
            <input type="radio" name="q1" value="3"> 5<br>
        </div>
    </div>

    <div class="question">
        <p>2. Какого цвета небо?</p>
        <div class="answers">
            <input type="radio" name="q2" value="1"> Зеленое<br>
            <input type="radio" name="q2" value="2"> Голубое<br>
            <input type="radio" name="q2" value="3"> Желтое<br>
        </div>
    </div>
    <div class="question">
        <p>3. Сколько ног у собаки?</p>
        <div class="answers">
            <input type="radio" name="q3" value="1"> 2<br>
            <input type="radio" name="q3" value="2"> 4<br>
            <input type="radio" name="q3" value="3"> 6<br>
        </div>
    </div>
    <button onclick="calculateScore()">Проверить результат</button>
    <div class="result" id="result"></div>
    <script>
        function calculateScore() {
            let score = 0;
            const questions = document.querySelectorAll('.question');
            questions.forEach((question, index) => {
                const selectedAnswer = question.querySelector('input[type="radio"]:checked');
                if (selectedAnswer) {
                    const correctAnswers = ['2', '2', '2'];
                    if (selectedAnswer.value === correctAnswers[index]) {
                        score += 1;  }}});
            document.getElementById('result').innerText = `Ваш результат: ${score} баллов.`;}
    </script>
</body>
</html>
