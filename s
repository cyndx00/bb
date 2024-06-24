<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beber hoje?</title>
    <style>
        body, html {
            margin: 0;
            padding: 0;
            width: 100%;
            height: 100%;
            font-family: sans-serif;
            background: #EFE7DA;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        #conteudo {
            text-align: center;
        }
        .btn-container {
            display: flex;
            justify-content: center;
            gap: 20px;
            position: relative;
        }
        .btn {
            background: black;
            color: white;
            border: none;
            padding: 10px;
            width: 80px;
            border-radius: 5px;
            cursor: pointer;
        }
        @media (max-width: 600px) {
            .btn {
                width: 70px;
                padding: 8px;
            }
        }
    </style>
</head>
<body>
    <div id="conteudo">
        <h2>Bora tomar uma?</h2>
        <div class="btn-container">
            <button class="btn" onclick="sim()">SIM</button>
            <button class="btn" onclick="desvia(this)" onmouseover="desvia(this)">NÃO</button>
        </div>
    </div>

    <script>
        function sim() {
            alert("Segundou :)");
            // Redireciona para um URL após clicar no SIM
            location.href = "https://open.spotify.com/playlist/2i9qV95CeJ4qNpbLsWstuo?si=SQZjLsnbT02fW7UPa2CFwg&pi=u-WWSJZgc9S4an";
        }

        function desvia(btn) {
            btn.style.position = 'absolute';
            btn.style.bottom = geraPosicao(10, 90);
            btn.style.left = geraPosicao(10, 90);
            console.log('Opa, desviei...');
        }

        function geraPosicao(min, max) {
            return (Math.random() * (max - min) + min) + "%";
        }
    </script>
</body>
</html>
