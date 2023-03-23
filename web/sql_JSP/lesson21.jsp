<%-- 
    Document   : lesson21
    Created on : Feb 4, 2023, 1:28:25 AM
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
                <h1>SQL <span class="color_h1">Joins</span></h1>

                <hr>
                <h2>SQL JOIN</h2>
                <p>A <code class="w3-codespan">JOIN</code> clause is used to combine rows from two or more tables, based on 
                    a related column between them.</p>
                <p>Let's look at a selection from the "Orders" table:</p>
                <div class="w3-responsive">
                    <table class="ws-table-all notranslate">
                        <tbody><tr>
                                <th style="width:15%">OrderID</th>
                                <th>CustomerID</th>
                                <th>OrderDate</th>
                            </tr>
                            <tr>
                                <td>10308</td>
                                <td>2</td>
                                <td>1996-09-18</td>
                            </tr>
                            <tr>
                                <td>10309</td>
                                <td>37</td>
                                <td>1996-09-19</td>
                            </tr>
                            <tr>
                                <td>10310</td>
                                <td>77</td>
                                <td>1996-09-20</td>
                            </tr>
                        </tbody></table>
                </div>

                <p>Then, look at a selection from the "Customers" table:</p>
                <div class="w3-responsive">
                    <table class="ws-table-all notranslate">
                        <tbody><tr>
                                <th style="width:15%">CustomerID</th>
                                <th>CustomerName</th>
                                <th>ContactName</th>
                                <th>Country</th>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>Alfreds Futterkiste</td>
                                <td>Maria Anders</td>
                                <td>Germany</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Ana Trujillo Emparedados y helados</td>
                                <td>Ana Trujillo</td>
                                <td>Mexico</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>Antonio Moreno Taquería</td>
                                <td>Antonio Moreno</td>
                                <td>Mexico</td>
                            </tr>
                        </tbody></table>
                </div>

                <p>Notice that the "CustomerID" column in the "Orders" table refers to the 
                    "CustomerID" in the "Customers" table. The relationship between the two tables above 
                    is the "CustomerID" column.</p>
                <p>Then, we can create the following SQL statement (that contains an <code class="w3-codespan">
                        INNER JOIN</code>), 
                    that selects records that have matching values in both tables:</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> Orders.OrderID, Customers.CustomerName, Orders.OrderDate<br><span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Orders<br><span class="sqlkeywordcolor" style="color:mediumblue">INNER</span> <span class="sqlkeywordcolor" style="color:mediumblue">JOIN</span> Customers <span class="sqlkeywordcolor" style="color:mediumblue">ON</span> Orders.CustomerID=Customers.CustomerID;<span class="sqlnumbercolor" style="color:">
                            </span> </span></div>
                </div>
                <p>and it will produce something like this:</p>
                <div class="w3-responsive">
                    <table class="ws-table-all notranslate">
                        <tbody><tr>
                                <th style="width:15%">OrderID</th>
                                <th style="width:70%">CustomerName</th>
                                <th style="width:15%">OrderDate</th>
                            </tr>
                            <tr>
                                <td>10308</td>
                                <td>Ana Trujillo Emparedados y helados</td>
                                <td>9/18/1996</td>
                            </tr>
                            <tr>
                                <td>10365</td>
                                <td>Antonio Moreno Taquería</td>
                                <td>11/27/1996</td>
                            </tr>
                            <tr>
                                <td>10383</td>
                                <td>Around the Horn</td>
                                <td>12/16/1996</td>
                            </tr>
                            <tr>
                                <td>10355</td>
                                <td>Around the Horn</td>
                                <td>11/15/1996</td>
                            </tr>
                            <tr>
                                <td>10278</td>
                                <td>Berglunds snabbköp</td>
                                <td>8/12/1996</td>
                            </tr>
                        </tbody></table>
                </div>
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

                <h2>Different Types of SQL JOINs</h2>
                <p>Here are the different types of the JOINs in SQL:</p>
                <ul>
                    <li><code class="w3-codespan">(INNER) JOIN</code>: Returns records that have matching values in both tables</li>
                    <li><code class="w3-codespan">LEFT (OUTER) JOIN</code>: Returns all records from the left table, and the matched records from the right table</li>
                    <li><code class="w3-codespan">RIGHT (OUTER) JOIN</code>: Returns all records from the right table, and the matched 
                        records from the left table</li>
                    <li><code class="w3-codespan">FULL (OUTER) JOIN</code>: Returns all records when there is a match in either left 
                        or right table</li>
                </ul>


                <p>
                    <img class="invert-on-dark" alt="SQL INNER JOIN" height="145" src="img_innerjoin.gif" width="200">&nbsp;
                    <img class="invert-on-dark" alt="SQL LEFT JOIN" height="145" src="img_leftjoin.gif" width="200">&nbsp;
                    <img class="invert-on-dark" alt="SQL RIGHT JOIN" height="145" src="img_rightjoin.gif" width="200">&nbsp;
                    <img class="invert-on-dark" alt="SQL FULL OUTER JOIN" height="145" src="img_fulljoin.gif" width="200">
                </p>

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
