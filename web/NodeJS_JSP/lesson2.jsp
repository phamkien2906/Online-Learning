<%-- 
    Document   : lesson2.jsp
    Created on : Feb 21, 2023, 1:16:02 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/left.css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.jss"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="../Menu_lesson/header_menu.jsp"></jsp:include>
            <div class="w3-col l10 m12" class="main" style="margin: 0 100px;padding-top: 0px">
                <h1>Node.js <span class="color_h1">Introduction</span></h1>

                <hr>
                <h2>What is Node.js?</h2>
                <ul>
                    <li>Node.js is an open source server environment</li>
                    <li>Node.js is free</li>
                    <li>Node.js runs on various platforms (Windows, Linux, Unix, Mac OS X, etc.)</li>
                    <li>Node.js uses JavaScript on the server</li>
                </ul>
                <hr>

                <h2>Why Node.js?</h2>


                <div class="w3-panel w3-note">
                    <p><strong>Node.js uses asynchronous programming!</strong></p>
                </div>

                <p>A common task for a web server can be to open a file on the server and return the content to 
                    the client.</p>
                <p>Here is how PHP or ASP handles a file request:</p>
                <ol>
                    <li>Sends the task to the computer's file system.</li>
                    <li>Waits while the file system opens and reads the 
                        file.</li>
                    <li>Returns the content to the client.</li>
                    <li>Ready to handle the next 
                        request.<br></li>
                </ol>
                <p>Here is how Node.js handles a file request:</p>
                <ol>
                    <li>Sends the task to the computer's file system.</li>
                    <li>Ready to handle the next request.</li>
                    <li>When the file system has 
                        opened and read the file, the server returns the content to the client.</li>
                </ol>
                <p>
                    Node.js eliminates the waiting, and simply continues with the next request. 
                </p>
                <p>Node.js runs single-threaded, non-blocking, asynchronous programming, which 
                    is very memory efficient.</p>


                <hr>

                <h2>What Can Node.js Do?</h2>
                <ul>
                    <li>Node.js can generate dynamic page content</li>
                    <li>Node.js can create, open, read, write, delete, and close files on the server</li>
                    <li>Node.js can collect form data</li>
                    <li>Node.js can add, delete, modify data in your database</li>
                </ul>
                <hr>
                <h2>What is a Node.js File?</h2>
                <ul>
                    <li>Node.js files contain tasks that will be executed on certain events</li>
                    <li>A typical event is someone trying to access a port on the server</li>
                    <li>Node.js files must be initiated on the server before having any effect</li>
                    <li>Node.js files have extension ".js"</li>
                </ul>
                <hr>
                <h2>Video Learning</h2>
                <p>Link full video: <a href="https://youtu.be/-iyVGz-0Fpc">https://youtu.be/-iyVGz-0Fpc</a>
                    <br>
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/-iyVGz-0Fpc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>                <hr>
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
