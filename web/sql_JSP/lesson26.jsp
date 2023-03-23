<%-- 
    Document   : lesson26
    Created on : Feb 4, 2023, 1:44:11 AM
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
                <h1>SQL <span class="color_h1">Self Join</span></h1>

                <hr>
                <h2>SQL Self Join</h2>
                <p>A self join is a regular join, but the table is joined with itself.</p>

                <h3>Self Join Syntax</h3>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> <em>column_name(s)</em><br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> <em>table1 T1, table1 T2</em><br><span class="sqlnumbercolor" style="color:">
                            </span>  <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> <em>condition</em>;<span class="sqlnumbercolor" style="color:">
                            </span> </span></div></div>
                <p><em>T1</em> and <em>T2</em> are different table aliases for the same table.</p>
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
                <hr>

                <h2>SQL Self Join Example</h2>
                <p>The following SQL statement matches customers that are from the same city:</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span>  <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> A.CustomerName <span class="sqlkeywordcolor" style="color:mediumblue">AS</span> CustomerName1, B.CustomerName <span class="sqlkeywordcolor" style="color:mediumblue">AS</span> CustomerName2, <span class="sqlnumbercolor" style="color:">
                            </span>  A.City<br><span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers A, Customers B<br><span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> A.CustomerID &lt;&gt; B.CustomerID<br><span class="sqlnumbercolor" style="color:">
                            </span>  <span class="sqlkeywordcolor" style="color:mediumblue">AND</span> A.City = B.City <br><span class="sqlkeywordcolor" style="color:mediumblue">ORDER</span> <span class="sqlkeywordcolor" style="color:mediumblue">BY</span> A.City;<span class="sqlnumbercolor" style="color:">
                            </span> </span></div>
                </div>

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
