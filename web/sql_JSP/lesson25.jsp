<%-- 
    Document   : lesson25
    Created on : Feb 4, 2023, 1:40:15 AM
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
                <h1>SQL <span class="color_h1">FULL OUTER JOIN</span> Keyword</h1>

                <hr>

                <h2>SQL FULL OUTER JOIN Keyword</h2>
                <p>The <code class="w3-codespan">FULL OUTER JOIN</code> keyword returns all records when there is a match in 
                    left (table1) or right (table2) table records.</p>
                <p><strong>Tip:</strong> <code class="w3-codespan">FULL OUTER JOIN</code> and 
                    <code class="w3-codespan">FULL JOIN</code> are the same.</p>

                <h3>FULL OUTER JOIN Syntax</h3>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> <em>column_name(s)</em><br><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> <em>table1</em><br><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">FULL</span> <span class="sqlkeywordcolor" style="color:mediumblue">OUTER</span> <span class="sqlkeywordcolor" style="color:mediumblue">JOIN</span> <em>table2<br> </em><span class="sqlkeywordcolor" style="color:mediumblue">ON</span> <em>table1.column_name </em>=<em> table2.column_name<br></em>
                            <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> <em>condition</em>; </span></div></div>
                <p><strong>Note:</strong> <code class="w3-codespan">FULL OUTER JOIN</code> can potentially return very large 
                    result-sets!</p>
                <hr>

                <h2>Demo Database</h2>
                <p>In this tutorial we will use the well-known Northwind sample database.</p>
                <p>Below is a selection from the "Customers" table:</p>
                <div class="w3-responsive">
                    <table class="ws-table-all notranslate">
                        <tbody><tr>
                                <th style="width:15%">CustomerID</th>
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
                        </tbody></table>
                </div>

                <p>And a selection from the "Orders" table:</p>
                <div class="w3-responsive">
                    <table class="ws-table-all notranslate">
                        <tbody><tr>
                                <th style="width:15%">OrderID</th>
                                <th>CustomerID</th>
                                <th>EmployeeID</th>
                                <th>OrderDate</th>
                                <th>ShipperID</th>
                            </tr>
                            <tr>
                                <td>10308</td>
                                <td>2</td>
                                <td>7</td>
                                <td>1996-09-18</td>
                                <td>3</td>
                            </tr>
                            <tr>
                                <td>10309</td>
                                <td>37</td>
                                <td>3</td>
                                <td>1996-09-19</td>
                                <td>1</td>
                            </tr>
                            <tr>
                                <td>10310</td>
                                <td>77</td>
                                <td>8</td>
                                <td>1996-09-20</td>
                                <td>2</td>
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

                <h2>SQL FULL OUTER JOIN Example</h2>
                <p>The following SQL statement selects all customers, and all orders:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span>  <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> Customers.CustomerName, Orders.OrderID<br><span class="sqlnumbercolor" style="color:">
                            </span>  <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers<br><span class="sqlnumbercolor" style="color:">
                            </span>  <span class="sqlkeywordcolor" style="color:mediumblue">FULL</span> <span class="sqlkeywordcolor" style="color:mediumblue">OUTER</span> <span class="sqlkeywordcolor" style="color:mediumblue">JOIN</span> Orders
                            <span class="sqlkeywordcolor" style="color:mediumblue">ON</span> Customers.CustomerID=Orders.CustomerID<br><span class="sqlnumbercolor" style="color:">
                            </span>  <span class="sqlkeywordcolor" style="color:mediumblue">ORDER</span> <span class="sqlkeywordcolor" style="color:mediumblue">BY</span> Customers.CustomerName;<span class="sqlnumbercolor" style="color:">
                            </span> </span></div></div>

                <p>A selection from the result set may look like this:</p>
                <div class="w3-responsive">
                    <table class="ws-table-all notranslate">
                        <tbody><tr>
                                <th>CustomerName</th>
                                <th>OrderID</th>
                            </tr>
                            <tr>
                                <td><em>Null</em></td>
                                <td>10309</td>
                            </tr>
                            <tr>
                                <td><em>Null</em></td>
                                <td>10310</td>
                            </tr>
                            <tr>
                                <td>Alfreds Futterkiste</td>
                                <td><em>Null</em></td>
                            </tr>
                            <tr>
                                <td>Ana Trujillo Emparedados y helados </td>
                                <td>10308</td>
                            </tr>
                            <tr>
                                <td>Antonio Moreno Taquería </td>
                                <td><em>Null</em></td>
                            </tr>
                        </tbody></table>
                </div>

                <p><strong>Note:</strong> The <code class="w3-codespan">FULL OUTER JOIN</code> keyword returns all matching 
                    records from both tables whether the other table matches or not. So, if 
                    there are rows in "Customers" that do not have matches in "Orders", or if there 
                    are rows in "Orders" that do not have matches in "Customers", those rows will be 
                    listed as well.</p>

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
