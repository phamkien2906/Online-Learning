<%-- 
    Document   : lesson67
    Created on : Feb 4, 2023, 10:40:37 AM
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
            <div class="w3-col l10 m12" class="main" style="margin: 0 100px;padding-top: 0px"> 
                <h1>SQL <span class="color_h1">Quiz</span></h1>

                <hr>
                <p class="intro">You can test your SQL skills with W3Schools' Quiz.</p>
                <hr>
                <h2>The Test</h2>
                <p>The test contains 25 questions and there is no time limit.</p>
                <p>The test is not official, it's just a nice way to see how much you know, or don't know, about SQL.</p>
                <h2>Count Your Score</h2>
                <p>You will get 1 point for each correct answer. At the end of the Quiz, your total score will be displayed. Maximum score is 25 points.</p>
                <div class="ws-grey w3-round w3-padding w3-margin-top">
                    <h2>Start the Quiz</h2>
                    <p>Good luck!</p>
                    <p><a href="/quiztest/quiztest.asp?qtest=SQL" class="w3-btn w3-blue w3-round" style="margin-top:10px;padding:17px;font-size:17px">Start the SQL Quiz ❯</a></p>
                </div>
                <div class="w3-note w3-panel">
                    <p>If you don't know SQL, we suggest that you read our <a href="default.asp">SQL Tutorial</a> from scratch.</p>
                </div>

                <hr>
                <style>

                    #w3_cert_badge {
                        position: absolute;
                        right: 5%;
                        width: 220px;
                        transform: rotate(10deg);
                        bottom: -20%;
                    }

                    #w3_cert_arrow {
                        position: absolute;
                        right: 220px;
                        width: 220px;
                        transform: rotate(10deg);
                        bottom: 0;
                        z-index: 1;
                    }

                    #getdiploma {
                        position: relative;
                        padding: 0 60px 50px 60px;
                        margin-bottom: 125px;
                        border-radius: 16px;
                        background-color: #282A35;
                        color: #FFC0C7;
                        font-family: 'Source Sans Pro', sans-serif;
                    }

                    #getdiploma h2 {
                        font-size:50px;
                        margin-top: 1em;
                        margin-bottom: 1em;
                        font-family: 'Source Sans Pro', sans-serif
                    }

                    #getdiploma p {
                        font-size: 42px;
                        margin-top: 1em;
                        margin-bottom: 1em;
                        font-family: 'Source Sans Pro', sans-serif
                    }

                    #getdiploma a {
                        border-radius: 50px;
                        mxargin-top: 50px;
                        font-size: 18px;
                        background-color: #04AA6D;
                        padding: 17px 55px
                    }

                    #getdiploma a:hover,
                    #getdiploma a:active {
                        background-color: #059862 !important;
                    }


                    @media screen and (max-width: 1442px) {
                        #w3_cert_arrow {
                            right: 212px;
                            bottom: -15px;
                        }
                    }


                    @media screen and (max-width: 1202px) {
                        #w3_cert_arrow {
                            display: none;
                        }
                    }

                    @media screen and (max-width: 992px) {
                        #w3_cert_arrow {
                            display: block;
                        }
                    }


                    @media screen and (max-width: 800px) {
                        #w3_cert_arrow {
                            display: none;
                        }
                        #getdiploma h2 {
                            font-size: 44px;
                        }
                        #getdiploma p {
                            font-size: 30px;
                        }

                        #getdiploma a {
                            width: 100%;
                        }
                        #w3_cert_badge {
                            top: -16px;
                            right: -8px;
                            width: 100px;
                        }
                        #getdiploma  {
                            margin-bottom: 55px;
                        }
                    }
                </style>

                <div class="w3-panel" id="getdiploma">

                    <h2>Kickstart your career</h2>
                    <p>Get certified by completing <span id="hey">the</span> <span id="coursetopic">SQL</span> course</p>
                    <script>
                        var foldername;
                        function getCourseFolder() {
                            var pathname = window.location.pathname;
                            if (pathname.substr(0, 1) == "/") {
                                pathname = pathname.substr(1);
                            }
                            pos = pathname.indexOf("/");
                            foldername = pathname.substr(0, pos);
                            foldername = foldername.toUpperCase();
                            if (foldername == "JS")
                                foldername = "JavaScript";
                            if (foldername == "QUIZTEST" || foldername == "EXERCISES") {
                                document.getElementById("hey").innerText = "a";
                            }
                            if (foldername == "QUIZTEST" || foldername == "EXERCISES")
                                foldername = "";
                            if (foldername == "CS")
                                foldername = "C#";
                            if (foldername == "CYBERSECURITY")
                                foldername = "Cyber Security";
                            if (foldername == "CPP")
                                foldername = "C++";
                            document.getElementById("coursetopic").innerText = foldername;
                        }
                        getCourseFolder();
                    </script>
                    <a class="w3-btn w3-margin-bottom" href="https://shop.w3schools.com/collections/course-catalog" target="_blank">Get certified</a>

                    <svg id="w3_cert_arrow" viewBox="0 0 170 143" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M9.7747 42.7064C9.7747 42.7064 19.5575 77.2951 44.4558 84.8113C62.0225 90.1142 81.0061 80.1196 77.791 68.3309C76.0904 62.0955 69.0574 62.4735 65.5106 65.8444C59.1003 71.9368 67.8591 89.7423 77.9205 96.1324C112.816 118.295 161.943 84.5867 161.943 84.5867" stroke="white" stroke-width="2" stroke-linecap="round"></path>
                    <path d="M159.804 93.8429L162.704 84.4917L152.715 80.8293" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                    </svg>
                    <svg id="w3_cert_badge" data-name="w3_cert_badge" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 300 300"><defs><style>.cls-1{
                            fill:#04aa6b;
                        }
                        .cls-2{
                            font-size:23px;
                        }
                        .cls-2,.cls-3,.cls-4{
                            fill:#fff;
                        }
                        .cls-2,.cls-3{
                            font-family:RobotoMono-Medium, Roboto Mono;
                            font-weight:500;
                        }
                        .cls-3{
                            font-size:20.08px;
                        }</style></defs><circle class="cls-1" cx="150" cy="150" r="146.47" transform="translate(-62.13 150) rotate(-45)"></circle><text class="cls-2" transform="translate(93.54 63.89) rotate(-29.5)">w</text><text class="cls-2" transform="translate(107.13 56.35) rotate(-20.8)">3</text><text class="cls-2" transform="matrix(0.98, -0.21, 0.21, 0.98, 121.68, 50.97)">s</text><text class="cls-2" transform="translate(136.89 47.84) rotate(-3.47)">c</text><text class="cls-2" transform="translate(152.39 47.03) rotate(5.12)">h</text><text class="cls-2" transform="translate(167.85 48.54) rotate(13.72)">o</text><text class="cls-2" transform="translate(182.89 52.35) rotate(22.34)">o</text><text class="cls-2" transform="matrix(0.86, 0.52, -0.52, 0.86, 197.18, 58.36)">l</text><text class="cls-2" transform="matrix(0.77, 0.64, -0.64, 0.77, 210.4, 66.46)">s</text><text class="cls-3" transform="translate(35.51 186.66) rotate(69.37)"> </text><text class="cls-3" transform="matrix(0.47, 0.88, -0.88, 0.47, 41.27, 201.28)">C</text><text class="cls-3" transform="matrix(0.58, 0.81, -0.81, 0.58, 48.91, 215.03)">E</text><text class="cls-3" transform="matrix(0.67, 0.74, -0.74, 0.67, 58.13, 227.36)">R</text><text class="cls-3" transform="translate(69.16 238.92) rotate(39.44)">T</text><text class="cls-3" transform="matrix(0.85, 0.53, -0.53, 0.85, 81.47, 248.73)">I</text><text class="cls-3" transform="translate(94.94 256.83) rotate(24.36)">F</text><text class="cls-3" transform="translate(109.34 263.09) rotate(16.83)">I</text><text class="cls-3" transform="translate(124.46 267.41) rotate(9.34)">E</text><text class="cls-3" transform="translate(139.99 269.73) rotate(1.88)">D</text><text class="cls-3" transform="translate(155.7 270.01) rotate(-5.58)"> </text><text class="cls-3" transform="translate(171.32 268.24) rotate(-13.06)"> </text><text class="cls-2" transform="translate(187.55 266.81) rotate(-21.04)">.</text><text class="cls-3" transform="translate(203.27 257.7) rotate(-29.24)"> </text><text class="cls-3" transform="translate(216.84 249.83) rotate(-36.75)"> </text><text class="cls-3" transform="translate(229.26 240.26) rotate(-44.15)">2</text><text class="cls-3" transform="translate(240.39 229.13) rotate(-51.62)">0</text><text class="cls-3" transform="translate(249.97 216.63) rotate(-59.17)">2</text><text class="cls-3" transform="matrix(0.4, -0.92, 0.92, 0.4, 257.81, 203.04)">2</text><path class="cls-4" d="M196.64,136.31s3.53,3.8,8.5,3.8c3.9,0,6.75-2.37,6.75-5.59,0-4-3.64-5.81-8-5.81h-2.59l-1.53-3.48,6.86-8.13a34.07,34.07,0,0,1,2.7-2.85s-1.11,0-3.33,0H194.79v-5.86H217.7v4.28l-9.19,10.61c5.18.74,10.24,4.43,10.24,10.92s-4.85,12.3-13.19,12.3a17.36,17.36,0,0,1-12.41-5Z"></path><path class="cls-4" d="M152,144.24l30.24,53.86,14.94-26.61L168.6,120.63H135.36l-13.78,24.53-13.77-24.53H77.93l43.5,77.46.15-.28.16.28Z"></path></svg>

                </div>

                <br>

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
