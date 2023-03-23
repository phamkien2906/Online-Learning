<%-- 
    Document   : lesson28
    Created on : Feb 4, 2023, 12:11:52 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/mystyle.css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.jss"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="../Menu_lesson/header_menu.jsp"></jsp:include>
            <div class="w3-col l10 m12" class="main" style="margin: 0 100px;padding-top: 0px"
                 <div id="mainLeaderboard" style="overflow:hidden;">

                <div id="adngin-main_leaderboard-0"></div>
                <section id="mainContent">
                    <h1>Git <span class="color_h1">Exercises</span></h1>


                    <hr><p class="intro">You can test your Git skills with W3Schools' Exercises.</p>

                    <hr><h2>Exercises</h2>
                    <p>We have gathered a variety of Git exercises (with answers) for each Git Chapter.</p>
                    <p>Try to solve an exercise by filling in the missing parts of a code. If you're stuck, hit the "Show Answer" button to see what you've done wrong.</p>
                    <h2>Count Your Score</h2>
                    <p>You will get 1 point for
                        each correct answer. Your score and total score will always be displayed.</p>
                    <div class="ws-black w3-padding w3-margin-top w3-round">
                        <h2>Start Git Exercises</h2>
                        <p>Good luck!</p>
                        <p><a href="exercise.asp" target="_blank" class="ws-btn" style="margin-top:10px;padding:15px 25px;font-size:18px">Start Git Exercises ❯</a></p>
                    </div>
                    <div class="w3-note w3-panel">
                        <p>If you don't know Git, we suggest that you read our <a href="default.asp">Git Tutorial</a> from scratch.</p>
                    </div>
                    <hr>

                    <br>

                </section>
                <script src="https://www.w3schools.com/lib/w3.js"></script>
                <script src="prism_coy.js" data-manual=""></script>
                <script src="git_remote.js"></script>
                <script>
                    updateParts();
                </script>
                <div id="mypagediv2" style="position:relative;text-align:center;"></div>
                <br>
                <form action="lesson?id=${requestScope.lid}" method="post">
                <div class="finish_lesson" style="margin-top: 20px">
                    <input style="color: white;
                           margin-top: 20px;
                           background: green;
                           height: 50px;
                           text-align: center;
                           width: 100px;
                           margin: 0 auto;" type="submit" value="Finish">        
                </div>
            </form>
        </div>
    </body>
</html>
