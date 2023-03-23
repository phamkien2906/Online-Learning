<%-- 
    Document   : lesson23
    Created on : Feb 4, 2023, 1:35:53 AM
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
                <h1>SQL <span class="color_h1">LEFT JOIN</span> Keyword</h1>

                <hr>
                <h2>SQL LEFT JOIN Keyword</h2>
                <p>The <code class="w3-codespan">LEFT JOIN</code> keyword returns all records from the left table (table1), and the 
                    matching records from the right table (table2). The result is 0 records from the right side, 
                    if there is no match.</p>

                <h3>LEFT JOIN Syntax</h3>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> <em>column_name(s)</em><br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> <em>table1</em><br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">LEFT</span> <span class="sqlkeywordcolor" style="color:mediumblue">JOIN</span> <em>table2<br> </em><span class="sqlkeywordcolor" style="color:mediumblue">ON</span> <em>table1.column_name </em>=<em> table2.column_name</em>;<span class="sqlnumbercolor" style="color:">
                            </span> </span></div></div>
                <p><b>Note:</b> In some databases LEFT JOIN is called LEFT OUTER JOIN.</p>
                <p style="text-align:center;"><img class="invert-on-dark" alt="SQL LEFT JOIN" height="145" src="img_leftjoin.gif" width="200"></p>
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

                <h2>SQL LEFT JOIN Example</h2>
                <p>The following SQL statement will select all customers, and any orders they 
                    might have:</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> Customers.CustomerName, Orders.OrderID<br><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers<br><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">LEFT</span> <span class="sqlkeywordcolor" style="color:mediumblue">JOIN</span> Orders
                            <span class="sqlkeywordcolor" style="color:mediumblue">ON</span> Customers.CustomerID = Orders.CustomerID<br><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">ORDER</span> <span class="sqlkeywordcolor" style="color:mediumblue">BY</span> Customers.CustomerName;<span class="sqlnumbercolor" style="color:">
                            </span> </span></div>

                </div>
                <p><strong>Note:</strong> The <code class="w3-codespan">LEFT JOIN</code> keyword returns all records from the 
                    left table (Customers), even if there are no matches in the right table 
                    (Orders).</p>
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
