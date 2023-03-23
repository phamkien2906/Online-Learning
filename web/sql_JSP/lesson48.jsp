<%-- 
    Document   : lesson48
    Created on : Feb 4, 2023, 9:15:11 AM
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
                <h1>SQL <span class="color_h1">Constraints</span></h1>

                <hr>
                <p class="intro">SQL constraints are used to specify rules for data in a table.</p>
                <hr>

                <h2>SQL Create Constraints</h2>
                <p>Constraints can be specified when the table is created with the 
                    <code class="w3-codespan">CREATE TABLE</code> statement, or after the table is created 
                    with the <code class="w3-codespan">ALTER TABLE</code> statement.</p>

                <h3>Syntax</h3>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">CREATE</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> <em>table_name </em>(<br><span class="sqlnumbercolor" style="color:">
                            </span> <em>&nbsp;&nbsp;&nbsp; column1 datatype</em> <em><span class="sqlkeywordcolor" style="color:mediumblue">constraint</span></em>,<br><span class="sqlnumbercolor" style="color:">
                            </span> <em>&nbsp;&nbsp;&nbsp; column2 datatype</em> <em><span class="sqlkeywordcolor" style="color:mediumblue">constraint</span></em>,<br><span class="sqlnumbercolor" style="color:">
                            </span> <em>&nbsp;&nbsp;&nbsp; column3 datatype</em> <em><span class="sqlkeywordcolor" style="color:mediumblue">constraint</span></em>,<br><span class="sqlnumbercolor" style="color:">
                            </span>&nbsp;&nbsp;&nbsp;
                            ....<br><span class="sqlnumbercolor" style="color:">
                            </span>);<span class="sqlnumbercolor" style="color:">
                            </span> </span></div>
                </div>
                <hr>

                <h2>SQL Constraints</h2>
                <p>SQL constraints are used to specify rules for the data in a table.</p>
                <p>Constraints are used to limit the type of data that can go into a table. This 
                    ensures the accuracy and reliability of the data in the table. If there is any violation between the constraint and the data action, 
                    the action is aborted.</p>
                <p>Constraints can be column level or table level. Column level constraints 
                    apply to a column, and table level constraints apply to the whole table.</p>
                <p>The following constraints are commonly used in SQL:</p>
                <ul>
                    <li><code class="w3-codespan"><a href="#">NOT NULL</a></code> - Ensures that a column cannot have a NULL value</li>
                    <li><code class="w3-codespan"><a href="#">UNIQUE</a></code> - Ensures that all values in a column are 
                        different</li>
                    <li><code class="w3-codespan"><a href="#">PRIMARY KEY</a></code> - A combination of a 
                        <code class="w3-codespan">NOT NULL</code> and <code class="w3-codespan">UNIQUE</code>. 
                        Uniquely identifies each row in a table</li>
                    <li><code class="w3-codespan"><a href="#">FOREIGN KEY</a></code> 
                        - Prevents actions that would destroy links between tables</li>
                    <li> <code class="w3-codespan"><a href="#">CHECK</a></code> - Ensures that 
                        the values in a column satisfies a specific condition</li>
                    <li> <code class="w3-codespan"><a href="#">DEFAULT</a></code> - Sets a default value for a column 
                        if no value 
                        is specified</li>
                    <li> <code class="w3-codespan"><a href="#">CREATE INDEX</a></code> - Used to create and retrieve data from the database 
                        very quickly</li>
                </ul>

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
