<%-- 
    Document   : leson43
    Created on : Feb 4, 2023, 2:11:51 AM
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
            <h1>SQL <span class="color_h1">DROP TABLE</span> Statement</h1>

            <hr>
            <h2>The SQL DROP TABLE Statement</h2>
            <p>The <code class="w3-codespan">DROP TABLE</code> statement is used to drop an existing table in a database.</p>

            <h3>Syntax</h3>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                        </span>  <span class="sqlkeywordcolor" style="color:mediumblue">DROP</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> <em>table_name</em>; </span></div>
            </div>

            <div class="w3-panel w3-note">
                <p><strong>Note</strong><b>:</b> Be careful before dropping a table. Deleting a 
                    table will result in loss of complete information stored in the table!</p>
            </div>
            <hr>

            <h2>SQL DROP TABLE Example</h2>
            <p>The following SQL statement drops the existing table "Shippers":</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                        </span>  <span class="sqlkeywordcolor" style="color:mediumblue">DROP</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> Shippers;<span class="sqlnumbercolor" style="color:">
                        </span> </span></div>
            </div>
            <hr>

            <h2>SQL TRUNCATE TABLE</h2>
            <p>The <code class="w3-codespan">TRUNCATE TABLE</code> statement is used to delete the data inside a table, but 
                not the table itself.</p>

            <h3>Syntax</h3>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                        </span>  <span class="sqlkeywordcolor" style="color:mediumblue">TRUNCATE</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> <em>table_name</em>; </span></div>
            </div>
            <hr>

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
