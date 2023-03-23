<%-- 
    Document   : lesson29
    Created on : Feb 4, 2023, 1:26:11 AM
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
                <h1>SQL <span class="color_h1">Aliases</span></h1>

                <hr>
                <h2>SQL Aliases</h2>
                <p>SQL aliases are used to give a table, or a column in a table, a temporary name.</p>
                <p>Aliases are often used to make column names more readable.</p>
                <p>An alias only exists for the duration of that query.</p>
                <p>An alias is created with the <code class="w3-codespan">AS</code> keyword.</p>
                <h3>Alias Column Syntax</h3>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> <em>column_name</em> <span class="sqlkeywordcolor" style="color:mediumblue">AS</span> <em>alias_name</em><br><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> <em>table_name;</em> </span></div></div>

                <h3>Alias Table Syntax</h3>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> <em>column_name(s)</em><br><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> <em>table_name </em><span class="sqlkeywordcolor" style="color:mediumblue">AS</span> <em>alias_name;</em>
                        </span></div></div>
                <hr>

                <h2>Demo Database</h2>
                <p>In this tutorial we will use the well-known Northwind sample database.</p>
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
                                <td>4</td>
                                <td>Around the Horn</td>
                                <td>Thomas Hardy</td>
                                <td>120 Hanover Sq.</td>
                                <td>London</td>
                                <td>WA1 1DP</td>
                                <td>UK</td>
                            </tr>
                        </tbody></table>
                </div>

                <p>And a selection from the "Orders" table:</p>
                <div class="w3-responsive">
                    <table class="ws-table-all notranslate">
                        <tbody><tr>
                                <th>OrderID</th>
                                <th>CustomerID</th>
                                <th>EmployeeID</th>
                                <th>OrderDate</th>
                                <th>ShipperID</th>
                            </tr>
                            <tr>
                                <td>10354</td>
                                <td>58</td>
                                <td>8</td>
                                <td>1996-11-14</td>
                                <td>3</td>
                            </tr>
                            <tr>
                                <td>10355</td>
                                <td>4</td>
                                <td>6</td>
                                <td>1996-11-15</td>
                                <td>1</td>
                            </tr>
                            <tr>
                                <td>10356</td>
                                <td>86</td>
                                <td>6</td>
                                <td>1996-11-18</td>
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

                <h2>Alias for Columns Examples</h2>
                <p>The following SQL statement creates two aliases, one for the CustomerID 
                    column and one for the CustomerName column:</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> CustomerID <span class="sqlkeywordcolor" style="color:mediumblue">AS</span> ID, CustomerName <span class="sqlkeywordcolor" style="color:mediumblue">AS</span> Customer<br><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers; </span></div>
                </div>

                <p>The following SQL statement creates two aliases, one for the CustomerName 
                    column and one for the ContactName column. <strong>Note:</strong> It requires 
                    double quotation marks or square brackets if the alias name contains spaces:</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> CustomerName <span class="sqlkeywordcolor" style="color:mediumblue">AS</span> Customer, ContactName <span class="sqlkeywordcolor" style="color:mediumblue">AS</span> [Contact Person]<br><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers; </span></div>
                </div>

                <p>The following SQL statement creates an alias named "Address" that combine four columns (Address, PostalCode, 
                    City and Country):</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span>  <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> CustomerName, Address + <span class="sqlstringcolor" style="color:brown">', '</span> + PostalCode + <span class="sqlstringcolor" style="color:brown">' '</span> + City + <span class="sqlstringcolor" style="color:brown">', '</span> + Country <span class="sqlnumbercolor" style="color:">
                            </span>  <span class="sqlkeywordcolor" style="color:mediumblue">AS</span> Address<br><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers; </span></div>
                </div>

                <p><strong>Note:</strong> To get the SQL statement above to work in MySQL use the following:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> CustomerName, CONCAT(Address,<span class="sqlstringcolor" style="color:brown">', '</span>,PostalCode,<span class="sqlstringcolor" style="color:brown">', '</span>,City,<span class="sqlstringcolor" style="color:brown">', '</span>,Country) <span class="sqlkeywordcolor" style="color:mediumblue">AS</span> Address<br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers; </span></div></div>

                <p><strong>Note:</strong> To get the SQL statement above to work in Oracle use the following:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span>  <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> CustomerName, (Address || <span class="sqlstringcolor" style="color:brown">', '</span> || PostalCode || <span class="sqlstringcolor" style="color:brown">' '</span> || City || <span class="sqlstringcolor" style="color:brown">', '</span> || <span class="sqlnumbercolor" style="color:">
                            </span>  Country) <span class="sqlkeywordcolor" style="color:mediumblue">AS</span> Address<br><span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers; </span></div></div>

                <hr>

                <h2>Alias for Tables Example</h2>
                <p>The following SQL statement selects all the orders from the customer with 
                    CustomerID=4 (Around the Horn). We use the "Customers" and "Orders" tables, and 
                    give them the table aliases of "c" and "o" respectively (Here we use 
                    aliases to make the SQL shorter):</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> o.OrderID, o.OrderDate, c.CustomerName<br><span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers <span class="sqlkeywordcolor" style="color:mediumblue">AS</span> c, Orders <span class="sqlkeywordcolor" style="color:mediumblue">AS</span> o<br><span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> c.CustomerName=<span class="sqlstringcolor" style="color:brown">'Around the Horn'</span> <span class="sqlkeywordcolor" style="color:mediumblue">AND</span> c.CustomerID=o.CustomerID;<span class="sqlnumbercolor" style="color:">
                            </span> </span></div>
                </div>

                <p>The following SQL statement is the same as above, but without aliases:</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> Orders.OrderID, Orders.OrderDate, Customers.CustomerName<br><span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers, Orders<br><span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> Customers.CustomerName=<span class="sqlstringcolor" style="color:brown">'Around the Horn'</span> <span class="sqlkeywordcolor" style="color:mediumblue">AND</span> Customers.CustomerID=Orders.CustomerID;<span class="sqlnumbercolor" style="color:">
                            </span> </span></div>

                </div>

                <p>Aliases can be useful when:</p>
                <ul>
                    <li>There are more than one table involved in a query</li>
                    <li>Functions are used in the query</li>
                    <li>Column names are big or not very readable</li>
                    <li>Two or more columns are combined together</li>
                </ul>
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
