<%-- 
    Document   : lesson3
    Created on : Feb 4, 2023, 12:36:46 AM
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
                <h1>SQL <span class="color_h1">Syntax</span></h1>

                <hr>
                <h2>Database Tables</h2>
                <p>A database most often contains one or more tables. Each table is identified 
                    by a name (e.g. "Customers" or "Orders"). Tables contain records (rows) with 
                    data.</p>
                <p>In this tutorial we will use the well-known Northwind sample database 
                    (included in MS Access and MS SQL Server).</p>
                <p>Below is a selection from the "Customers" table:</p>
                <div class="w3-responsive">
                    <table class="ws-table-all notranslate">
                        <tbody><tr>
                                <th>CustomerID</th>
                                <th>CustomerName</th>
                                <th>ContactName</th>
                                <th>Address</th>
                                <th>City</th>
                                <th>PostalCode</th>
                                <th>Country</th>
                            </tr>
                            <tr>
                                <td>1<br><br></td>
                                <td>Alfreds Futterkiste</td>
                                <td>Maria Anders</td>
                                <td>Obere Str. 57</td>
                                <td>Berlin</td>
                                <td>12209</td>
                                <td>Germany</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Ana Trujillo Emparedados y helados</td>
                                <td>Ana Trujillo</td>
                                <td>Avda. de la Constitución 2222</td>
                                <td>México D.F.</td>
                                <td>05021</td>
                                <td>Mexico</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>Antonio Moreno Taquería</td>
                                <td>Antonio Moreno</td>
                                <td>Mataderos 2312</td>
                                <td>México D.F.</td>
                                <td>05023</td>
                                <td>Mexico</td>
                            </tr>
                            <tr>
                                <td>4<br><br></td>
                                <td>Around the Horn</td>
                                <td>Thomas Hardy</td>
                                <td>120 Hanover Sq.</td>
                                <td>London</td>
                                <td>WA1 1DP</td>
                                <td>UK</td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>Berglunds snabbköp</td>
                                <td>Christina Berglund</td>
                                <td>Berguvsvägen 8</td>
                                <td>Luleå</td>
                                <td>S-958 22</td>
                                <td>Sweden</td>
                            </tr>
                        </tbody></table>
                </div>
                <p>
                    The table above contains five records (one for each customer) and seven columns 
                    (CustomerID, CustomerName, ContactName, Address, City, PostalCode, and Country).</p>
                <hr>

                <h2>SQL Statements</h2>
                <p>Most of the actions you need to perform on a database are done with SQL 
                    statements.</p>
                <p>The following SQL statement selects all the records in the "Customers" table:</p>

                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers;<span class="sqlnumbercolor" style="color:">
                            </span> </span></div>

                </div>


                <p>In this tutorial we will teach you all about the different SQL statements.</p>
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
                <h2>Keep in Mind That...</h2>
                <ul>
                    <li>SQL keywords are NOT case sensitive: <code class="w3-codespan">select</code> is the same as <code class="w3-codespan">
                            SELECT</code></li>
                </ul>


                <p>In this tutorial we will write all SQL keywords in upper-case.</p>
                <hr>

                <h2>Semicolon after SQL Statements?</h2>
                <p>Some database systems require a semicolon at the end of each SQL statement.</p>
                <p>Semicolon is the standard way to separate each SQL statement in database 
                    systems that allow more than one SQL statement to be executed in the same call 
                    to the server.</p>
                <p>In this tutorial, we will use semicolon at the end of each SQL statement.</p>
                <hr>

                <h2>Some of The Most Important SQL Commands</h2>
                <ul>
                    <li><code class="w3-codespan">SELECT</code> - extracts data from a database</li>
                    <li><code class="w3-codespan">UPDATE</code> - updates data in a database</li>
                    <li><code class="w3-codespan">DELETE</code> - deletes data from a database</li>
                    <li><code class="w3-codespan">INSERT INTO</code> - inserts new data into a database</li>
                    <li><code class="w3-codespan">CREATE DATABASE</code> - creates a new database</li>
                    <li><code class="w3-codespan">ALTER DATABASE</code> - modifies a database</li>
                    <li><code class="w3-codespan">CREATE TABLE</code> - creates a new table</li>
                    <li><code class="w3-codespan">ALTER TABLE</code> - modifies a table</li>
                    <li><code class="w3-codespan">DROP TABLE</code> - deletes a table</li>
                    <li><code class="w3-codespan">CREATE INDEX</code> - creates an index (search key)</li>
                    <li><code class="w3-codespan">DROP INDEX</code> - deletes an index
                    </li>
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
