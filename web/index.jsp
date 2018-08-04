<%-- 
    Document   : TicTacToe
    Created on : Aug 3, 2018, 7:49:35 PM
    Author     : acer
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>`
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
        <style>
            .bg-black{
                background-color: black;
            }
            .white{
                color: white;
            }
            .heading{
                font-size: 50px;
                font-weight: bold;
                font-family: 'Raleway';
                letter-spacing: 5px;
                padding: 2%;
            }
            .table{
                cursor: pointer;
            }
            .board td {
                height: 100px;
                width: 100px;
                vertical-align: middle;
                font-size: 40px;
            }
            .board #R1_C1{
                border-right: 7px solid white;
                border-bottom: 7px solid white;
            }
            .board #R1_C2{
                border-right: 7px solid white;
                border-bottom: 7px solid white;
            }
            .board #R1_C3{
                border-bottom: 7px solid white;
            }
            .board #R2_C1{
                border-right: 7px solid white;
                border-bottom: 7px solid white;
            }
            .board #R2_C2{
                border-right: 7px solid white;
                border-bottom: 7px solid white;
            }
            .board #R2_C3{
                border-bottom: 7px solid white;
            }
            .board #R3_C1{
                border-right: 7px solid white;
            }
            .board #R3_C2{
                border-right: 7px solid white;
            }
            .scoreBoard{
                font-size: 35px;
                font-family: 'Raleway';
                padding: 1.5%;
                font-weight: bold;
                font-family: 'Raleway';
            }
        </style>   
        <title>TIC-TAC-TOE GAME</title>
    </head>
    <body class="bg-black">
        <div class="container">
            <div class="heading white text-center">
                TIC - TAC - TOE
            </div>
            <table class="table table-borderless board white text-center" id="board">
                <tr >
                    <td id="R1_C1" onclick="choosePosition(this)">0</td>
                    <td id="R1_C2" onclick="choosePosition(this)">1</td>
                    <td id="R1_C3" onclick="choosePosition(this)">2</td>
                </tr>
                <tr>
                    <td id="R2_C1" onclick="choosePosition(this)">3</td>
                    <td id="R2_C2" onclick="choosePosition(this)">4</td>
                    <td id="R2_C3" onclick="choosePosition(this)">5</td>
                </tr>
                <tr>
                    <td id="R3_C1" onclick="choosePosition(this)">6</td>
                    <td id="R3_C2" onclick="choosePosition(this)">7</td>
                    <td id="R3_C3" onclick="choosePosition(this)">8</td>
                </tr>
            </table>
            
            <div class="row white text-center scoreBoard">
                <div class="col-4">
                    Player1 (X)
                </div>
                <div class="col-4">
                    Tie
                </div>
                <div class="col-4" >
                    Player2 (O)
                </div>
                <div class="col-4" id="player1Score">
                    0
                </div>
                <div class="col-4" id="tieScore">
                    0
                </div>
                <div class="col-4" id="player2Score">
                    0
                </div>
            </div>
        </div>
        <!-- Script -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script >
            function choosePosition(x) {
//                var clicks=0;
//                document.getElementById('board').value = clicks++;    
//                if (clicks%2===0) {
//                    x.style.fontWeight = "bold";
//                    x.innerHTML = "O";
//                }else{
                    x.style.fontWeight = "bold";
                    x.innerHTML = "X";
//                }
            }
        </script>
    </body>
</html>
