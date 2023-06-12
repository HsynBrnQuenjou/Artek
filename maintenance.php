<?php

require_once 'system/function.php';
if($arow->sitedurum == 1){
    go(site);
}
?>
<!DOCTYPE html>
<html lang='en' class=''>

<head>
    <meta charset='UTF-8'>
    <meta name="robots" content="noindex">
    <style>
        body {
            background: #222;
            font-family: "Helvetica Neue", "Helvetica", Arial, "Lucida   Grande", sans-serif;
        }
        h2 {
            font-size: 2em;
            font-weight: 100;
            letter-spacing: 1em;
            text-transform: uppercase;
            text-shadow: 0px 0px 20px #730362;
        }

        h3 {
            font-size: 1.5em;
            font-weight: 100;
            letter-spacing: 1em;
            text-transform: uppercase;
            text-shadow: 0px 0px 20px #730362;
            color: #730362;
            display: inline-block;
        }

        h3:nth(1) {
            animation: bounce 1s ease-in-out forwards;
        }

        .container {
            font-size: 16px;
            top: 30%;
            left: 20%;
            position: absolute;
            color: limegreen;
            text-align: center;
        }

        .bar {
            height: .3em;
            width: 30em;
            border-radius: 10px;
            background: transparent;
            box-shadow: inset 0px 0px 8px #323232;
            overflow: hidden;
            padding: 20px;
            margin: 0 auto;
        }

        .progress {
            height: inherit;
            border-radius: inherit;
            width: 0;
            background: white;
            animation: load 3s linear infinite;
            animation-delay: 2s;
        }

        @keyframes bounce {
            0% {
                transform: translateY(0px);
            }
            50% {
                transform: translateY(-100px);
            }
            100% {
                transform: translateY(0px);
            }
        }

        @keyframes load {
            0% {
                width: 0%;
            }
            50% {
                width: 100%;
            }
            100% {
                width: 0%;
                float: right;
            }
        }

    </style>
</head>

<body>
<div class="container">
    <h2>ARTEK</h2>
    <h3>ÇOK YAKINDA SİZLERLEYİZ</h3>
    <div class="bar">
        <div class="progress"></div>
    </div>
</div>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
</body>

</html>
