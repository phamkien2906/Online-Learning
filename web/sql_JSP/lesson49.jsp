<%-- 
    Document   : lesson49
    Created on : Feb 4, 2023, 9:18:42 AM
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
                <h1>SQL <span class="color_h1">NOT NULL</span> Constraint</h1>

                <hr>
                <h2>SQL NOT NULL Constraint</h2>
                <p>By default, a column can hold NULL values.</p>
                <p>The <code class="w3-codespan">NOT NULL</code> constraint enforces a column to NOT accept NULL values.</p>
                <p>This enforces a field to always contain a value, which means that you cannot insert a new record, or update a record without adding a value to this field.</p>

                <hr>

                <h2>SQL NOT NULL on CREATE TABLE</h2>
                <p>The following SQL ensures that the "ID", "LastName", and 
                    "FirstName" columns 
                    will NOT accept NULL values when the "Persons" table is created:</p>

                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span>  <span class="sqlkeywordcolor" style="color:mediumblue">CREATE</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> Persons (<br>&nbsp;&nbsp;&nbsp; ID int <span class="sqlkeywordcolor" style="color:mediumblue">NOT</span> <span class="sqlkeywordcolor" style="color:mediumblue">NULL</span>,<br>&nbsp;&nbsp;&nbsp; <span class="sqlnumbercolor" style="color:">
                            </span>  LastName varchar(<span class="sqlnumbercolor" style="color:">255</span>) <span class="sqlkeywordcolor" style="color:mediumblue">NOT</span> <span class="sqlkeywordcolor" style="color:mediumblue">NULL</span>,<br>&nbsp;&nbsp;&nbsp; FirstName varchar(<span class="sqlnumbercolor" style="color:">255</span>) <span class="sqlnumbercolor" style="color:">
                            </span>  <span class="sqlkeywordcolor" style="color:mediumblue">NOT</span> <span class="sqlkeywordcolor" style="color:mediumblue">NULL</span>,<br>&nbsp;&nbsp;&nbsp; Age int<br>);  </span></div>
                </div>
                <hr>

                <h2>SQL NOT NULL on ALTER TABLE</h2>
                <p>To create a <code class="w3-codespan">NOT NULL</code> constraint on the "Age" column when the "Persons" table is already created, use the following SQL:</p>

                <p><strong>SQL Server / MS Access:</strong></p>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">ALTER</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> Persons<br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">ALTER</span> <span class="sqlkeywordcolor" style="color:mediumblue">COLUMN</span> Age int <span class="sqlkeywordcolor" style="color:mediumblue">NOT</span> <span class="sqlkeywordcolor" style="color:mediumblue">NULL</span>; </span></div></div>

                <p><strong>My SQL / Oracle (prior version 10G):</strong></p>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">ALTER</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> Persons<br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">MODIFY</span> <span class="sqlkeywordcolor" style="color:mediumblue">COLUMN</span> Age int <span class="sqlkeywordcolor" style="color:mediumblue">NOT</span> <span class="sqlkeywordcolor" style="color:mediumblue">NULL</span>; </span></div></div>

                <p><strong>Oracle 10G and later:</strong></p>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">ALTER</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> Persons<br><span class="sqlnumbercolor" style="color:">
                            </span>  <span class="sqlkeywordcolor" style="color:mediumblue">MODIFY</span> Age int <span class="sqlkeywordcolor" style="color:mediumblue">NOT</span> <span class="sqlkeywordcolor" style="color:mediumblue">NULL</span>; </span></div></div>

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
