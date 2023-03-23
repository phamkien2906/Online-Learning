<%-- 
    Document   : lesson55
    Created on : Feb 4, 2023, 9:27:48 AM
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
                <h1>SQL <span class="color_h1">CREATE INDEX</span> Statement</h1>

                <hr>

                <h2>SQL CREATE INDEX Statement</h2>
                <p>The <code class="w3-codespan">CREATE INDEX</code> statement is used to create indexes in tables.</p>
                <p>Indexes are used to retrieve data from the database more quickly than 
                    otherwise. The users cannot see the indexes, they are just used to speed up searches/queries.</p>

                <div class="w3-panel w3-note">
                    <p><strong>Note:</strong> Updating a table with indexes takes more time than updating a table without (because the indexes also need an update).
                        So, only create indexes on columns that will be frequently searched against.</p>
                </div>

                <h3>CREATE INDEX Syntax</h3>
                <p>Creates an index on a table. Duplicate values are allowed:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">CREATE</span> <span class="sqlkeywordcolor" style="color:mediumblue">INDEX</span> <em>index_name</em><br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">ON</span> <em>table_name</em> (<em>column1</em>, <em>column2</em>, ...); </span></div></div>

                <h3>CREATE UNIQUE INDEX Syntax</h3>
                <p>Creates a unique index on a table. Duplicate values are not allowed:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">CREATE</span> <span class="sqlkeywordcolor" style="color:mediumblue">UNIQUE</span> <span class="sqlkeywordcolor" style="color:mediumblue">INDEX</span> <em>index_name</em><br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">ON</span> <em>table_name</em> (<em>column1</em>, <em>column2</em>, ...); </span></div></div>
                <p><b>Note:</b> The syntax for creating indexes varies among different databases. Therefore: Check the syntax for creating indexes in your database.</p>
                <hr>

                <h2>CREATE INDEX Example</h2>
                <p>The SQL statement below creates an index named "idx_lastname" on the "LastName" column in the "Persons" table:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">CREATE</span> <span class="sqlkeywordcolor" style="color:mediumblue">INDEX</span> idx_lastname<br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">ON</span> Persons (LastName); </span></div></div>

                <p>If you want to create an index on a combination of columns, you can list the column names within the parentheses, separated by commas:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">CREATE</span> <span class="sqlkeywordcolor" style="color:mediumblue">INDEX</span> idx_pname<br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">ON</span> Persons (LastName, FirstName); </span></div></div>
                <hr>
                <style>

                    #coursera_img {
                        position: absolute;
                        right: 5%;
                        width: 45%;
                        max-width:350px;
                        bottom: -5%;
                    }


                    #guided {
                        position: relative;
                        padding: 0 60px 30px 60px;
                        margin-bottom: 20px;
                        border-radius: 16px;
                        background-color: #282A35;
                        color: #FFC0C7;
                        font-family: 'Source Sans Pro', sans-serif;
                    }

                    #guided h2 {
                        font-size:30px;
                        margin-top: 1em;
                        margin-bottom: 1em;
                        font-family: 'Source Sans Pro', sans-serif
                    }

                    #guided p {
                        font-size: 20px;
                        margin-top: 1em;
                        margin-bottom: 1em;
                        margin-right: 50%;
                        font-family: 'Source Sans Pro', sans-serif
                    }

                    #guided a {
                        border-radius: 50px;
                        margin-top: 50px;
                        font-size: 18px;
                        background-color: rgb(0, 86, 210);
                        padding: 17px 55px
                    }

                    #guided a:hover,
                    #guided a:active {
                        background-color: rgb(0, 96, 220)!important;
                    }


                    @media screen and (max-width: 1350px) {
                        #coursera_img {
                            bottom: -5%;
                            max-width:300px;
                        }

                    }


                    @media screen and (max-width: 1202px) {
                        #coursera_img {
                            bottom: 5%;
                        }

                    }

                    @media screen and (max-width: 992px) {
                        #coursera_img {
                            bottom: 5%;
                        }

                    }


                    @media screen and (max-width: 800px) {

                        #guided a {
                            width: 100%;
                        }
                        #coursera_img {

                            display:none;
                        }
                        #guided p {
                            display:none;
                        }

                        #guided {
                            margin-bottom: 10px;
                        }
                    }
                </style>

                <div class="w3-panel" id="guided">

                    <h2>Learn to Filter Data in SQL Like a Data Analyst</h2>
                    <p>Try a hands-on training sessions with step-by-step guidance from an expert. Try the guided project made in collaboration with Coursera now!</p>
                    <a class="w3-btn w3-margin-bottom" id="coursera_link" href="https://imp.i384100.net/b36bjb" target="_blank">Get started</a>
                </div>

                <hr>

                <h2>DROP INDEX Statement</h2>
                <p>The <code class="w3-codespan">DROP INDEX</code> statement is used to delete an index in a table.</p>

                <p><strong>MS Access:</strong></p>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">DROP</span> <span class="sqlkeywordcolor" style="color:mediumblue">INDEX</span> <em>index_name</em> <span class="sqlkeywordcolor" style="color:mediumblue">ON</span> <em>table_name</em>; </span></div></div>

                <p><strong>SQL Server:</strong></p>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">DROP</span> <span class="sqlkeywordcolor" style="color:mediumblue">INDEX</span> <em>table_name</em>.<em>index_name</em>; </span></div></div>

                <p><strong>DB2/Oracle:</strong></p>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">DROP</span> <span class="sqlkeywordcolor" style="color:mediumblue">INDEX</span> <em>index_name</em>; </span></div></div>

                <p><strong>MySQL:</strong></p>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">ALTER</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> <em>table_name<br></em><span class="sqlkeywordcolor" style="color:mediumblue">DROP</span> <span class="sqlkeywordcolor" style="color:mediumblue">INDEX</span> <em>index_name</em>; </span></div></div>

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
