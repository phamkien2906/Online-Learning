<%-- 
    Document   : lesson24
    Created on : Feb 21, 2023, 1:50:25 PM
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
                <h1>Node.js <span class="color_h1">MongoDB</span></h1>

                <hr>
                <p class="intro">Node.js can be used in database applications.</p>
                <p class="intro">One of the most popular NoSQL database is MongoDB.</p>
                <hr>

                <h2>MongoDB</h2>
                <p>To be able to experiment with the code examples, you will need access to a MongoDB database.</p>
                <p>You can download a free MongoDB database at
                    <a href="https://www.mongodb.com/" target="_blank">https://www.mongodb.com</a>.</p>
                <p>Or get started right away with a MongoDB cloud service at 
                    <a href="https://www.mongodb.com/cloud/atlas" target="_blank">https://www.mongodb.com/cloud/atlas</a>.</p>
                <hr>
                <h2>Install MongoDB Driver</h2>
                <p>Let us try to access a MongoDB database with Node.js.</p>
                <p>To download and install the official MongoDB driver, open the Command Terminal and execute the following:</p>

                <div class="w3-example">
                    <p>Download and install mongodb package:</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;npm install mongodb
                    </div>
                </div>
                <p>Now you have downloaded and installed a mongodb database driver.</p>
                <p>Node.js can use this module to manipulate MongoDB databases:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> mongo = require(<span class="jsstringcolor" style="color:brown">'mongodb'</span>); </span></div>
                </div>

                <hr>

                <div id="mypagediv2" style="position:relative;text-align:center;"></div>
                <hr>
                <h2>Video Learning</h2>
                <p>Link full video: <a href="https://youtu.be/ZEpiQcb5xJ0">https://youtu.be/ZEpiQcb5xJ0</a>
                    <br>
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/ZEpiQcb5xJ0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                <hr>
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
