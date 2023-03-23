<%-- 
    Document   : lesson33
    Created on : Feb 4, 2023, 1:56:10 AM
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
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>    </head>    </head>
<body>
    <jsp:include page="../Menu_lesson/header_menu.jsp"></jsp:include>
        <div class="w3-col l10 m12" class="main" style="margin: 0 100px;padding-top: 0px"> 
            <h1>SQL <span class="color_h1">INSERT INTO SELECT</span> Statement</h1>

            <hr>
            <h2>The SQL INSERT INTO SELECT Statement</h2>
            <p>The <code class="w3-codespan">INSERT INTO SELECT</code> statement copies data from one table and 
                inserts it into another table.</p>
            <p>The <code class="w3-codespan">INSERT INTO SELECT</code> statement requires that 
                the data types in source and target tables match.</p>
            <p><strong>Note:</strong> The existing records in the target table are unaffected.</p>

            <h3>INSERT INTO SELECT Syntax</h3>
            <p>Copy all columns from one table to another table:</p>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">INSERT</span> <span class="sqlkeywordcolor" style="color:mediumblue">INTO</span> <em>table2</em><br>
                        <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> <em>table1<br></em><span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> <em>condition</em>; </span></div></div>

            <p>Copy only some columns from one table into another table:</p>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">INSERT</span> <span class="sqlkeywordcolor" style="color:mediumblue">INTO</span> <em>table2 </em>(<em>column1</em>, <em>column2</em>, <em>column3</em>, ...)<br>
                        <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> <em>column1</em>, <em>column2</em>, <em>column3</em>, ...<br> <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> <em>table1</em><br>
                        <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> <em>condition</em>; </span></div>
            </div>
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

            <p>And a selection from the "Suppliers" table:</p>
            <div class="w3-responsive">
                <table class="ws-table-all notranslate">
                    <tbody><tr>
                            <th>SupplierID</th>
                            <th>SupplierName</th>
                            <th>ContactName</th>
                            <th>Address</th>
                            <th>City</th>
                            <th>Postal Code</th>
                            <th>Country</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>Exotic Liquid</td>
                            <td>Charlotte Cooper</td>
                            <td>49 Gilbert St.</td>
                            <td>Londona</td>
                            <td>EC1 4SD</td>
                            <td>UK</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>New Orleans Cajun Delights</td>
                            <td>Shelley Burke</td>
                            <td>P.O. Box 78934</td>
                            <td>New Orleans</td>
                            <td>70117</td>
                            <td>USA</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Grandma Kelly's Homestead</td>
                            <td>Regina Murphy</td>
                            <td>707 Oxford Rd.</td>
                            <td>Ann Arbor</td>
                            <td>48104</td>
                            <td>USA</td>
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

            <h2>SQL INSERT INTO SELECT Examples</h2>
            <p>The following SQL statement copies "Suppliers" into "Customers" (the columns 
                that are not filled with data, will contain NULL):</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                        </span> <span class="sqlkeywordcolor" style="color:mediumblue">INSERT</span> <span class="sqlkeywordcolor" style="color:mediumblue">INTO</span> Customers (CustomerName, <span class="sqlnumbercolor" style="color:">
                        </span>  City, Country)<br><span class="sqlnumbercolor" style="color:">
                        </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> SupplierName, City, Country <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Suppliers;<span class="sqlnumbercolor" style="color:">
                        </span> </span></div>
            </div>

            <p>The following SQL statement copies "Suppliers" into "Customers" (fill all 
                columns):</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                        </span>  <span class="sqlkeywordcolor" style="color:mediumblue">INSERT</span> <span class="sqlkeywordcolor" style="color:mediumblue">INTO</span> Customers (CustomerName, ContactName, Address, City, PostalCode, <span class="sqlnumbercolor" style="color:">
                        </span>  Country)<br><span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> SupplierName, ContactName, Address, City, PostalCode, <span class="sqlnumbercolor" style="color:">
                        </span>  Country <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Suppliers;<span class="sqlnumbercolor" style="color:">
                        </span> </span></div>
            </div>

            <p>The following SQL statement copies only the German suppliers into "Customers":</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                        </span> <span class="sqlkeywordcolor" style="color:mediumblue">INSERT</span> <span class="sqlkeywordcolor" style="color:mediumblue">INTO</span> Customers (CustomerName, <span class="sqlnumbercolor" style="color:">
                        </span>  City, Country)<br><span class="sqlnumbercolor" style="color:">
                        </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> SupplierName, City, Country <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Suppliers<br><span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> Country=<span class="sqlstringcolor" style="color:brown">'Germany'</span>;<span class="sqlnumbercolor" style="color:">
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
