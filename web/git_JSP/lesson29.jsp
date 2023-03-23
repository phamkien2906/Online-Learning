<%-- 
    Document   : lesson29
    Created on : Feb 4, 2023, 12:14:13 AM
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
                    <h1>Git <span class="color_h1">Quiz</span></h1>
                    <hr>
                    <p class="intro">You can test your Git skills with W3Schools' Quiz.</p>
                    <hr>
                    <h2>The Test</h2>
                    <p>The test contains 25 questions and there is no time limit.</p>
                    <p>The test is not official, it's just a nice way to see how much you know, or don't know, about Git.</p>
                    <h2>Count Your Score</h2>
                    <p>You will get 1 point for each correct answer. At the end of the Quiz,
                        your total score will be displayed. Maximum score is 25 points.</p>
                    <div class="ws-grey w3-round w3-padding w3-margin-top">
                        <h2>Start the Quiz</h2>
                        <p>Good luck!</p>
                        <p><a href="/quiztest/quiztest.asp?qtest=GIT" class="w3-btn w3-blue w3-round" style="margin-top:10px;padding:17px;font-size:17px">Start the Git Quiz ❯</a></p>
                    </div>

                    <div class="w3-note w3-panel">
                        <p>If you do not know Git, we suggest that you read our <a href="default.asp?remote=github">Git Tutorial</a> from scratch.</p>
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
