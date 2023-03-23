<%-- 
    Document   : lesosn39
    Created on : Feb 4, 2023, 2:05:08 AM
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
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>    </head>
</head>
<body>
    <jsp:include page="../Menu_lesson/header_menu.jsp"></jsp:include>
        <div class="w3-col l10 m12" class="main" style="margin: 0 100px;padding-top: 0px"> 
            <h1>SQL <span class="color_h1">CREATE DATABASE</span> Statement</h1>

            <hr>

            <h2>The SQL CREATE DATABASE Statement</h2>
            <p>The <code class="w3-codespan">CREATE DATABASE</code> statement is used to create a new SQL database.</p>
            <h3>Syntax</h3>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">CREATE</span> <span class="sqlkeywordcolor" style="color:mediumblue">DATABASE</span> <em>databasename</em>; </span></div>
            </div>
            <hr>

            <h2>CREATE DATABASE Example</h2>
            <p>The following SQL statement creates a database called "testDB":</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">CREATE</span> <span class="sqlkeywordcolor" style="color:mediumblue">DATABASE</span> testDB;<span class="sqlnumbercolor" style="color:">
                        </span> </span></div>
            </div>

            <div class="w3-panel w3-note">
                <p><b>Tip:</b> Make sure you have admin privilege before creating any database. Once a 
                    database is created, you can check it in the list of databases with the 
                    following SQL command: <code class="w3-codespan">SHOW DATABASES</code>;</p>
            </div>

            <hr>

            <form autocomplete="off" id="w3-exerciseform" action="exercise.asp?filename=exercise_database1" method="post" target="_blank">
                <h2>Test Yourself With Exercises</h2>
                <div class="exercisewindow">
                    <h2>Exercise:</h2>
                    <p>Write the correct SQL statement to create a new database called <code class="w3-codespan">testDB</code>.</p>

                    <br>

                </div>
            </form>

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
