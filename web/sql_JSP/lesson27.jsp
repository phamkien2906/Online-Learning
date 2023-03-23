<%-- 
    Document   : lesson27
    Created on : Feb 4, 2023, 1:45:32 AM
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
                <h1>SQL <span class="color_h1">UNION</span> Operator</h1>

                <hr>
                <h2>The SQL UNION Operator</h2>
                <p>The <code class="w3-codespan">UNION</code> operator is used to combine the result-set of two or more 
                    <code class="w3-codespan">SELECT</code> 
                    statements.</p>
                <ul>
                    <li>Every <code class="w3-codespan">SELECT</code> statement within
                        <code class="w3-codespan">UNION</code> must have the same number 
                        of columns</li>
                    <li>The columns must also have similar data types</li>
                    <li>The columns in 
                        every <code class="w3-codespan">SELECT</code> statement must also be in the same order</li>
                </ul>

                <h3>UNION Syntax</h3>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> <em>column_name(s)</em> <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> <em>table1</em><br><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">UNION</span><br><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> <em>column_name(s)</em> <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> <em>table2</em>; </span></div></div>

                <h3>UNION ALL Syntax</h3>

                <p>The <code class="w3-codespan">UNION</code> operator selects only distinct values by default. To allow 
                    duplicate values, use <code class="w3-codespan">UNION ALL</code>:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> <em>column_name(s)</em> <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> <em>table1</em><br><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">UNION</span> <span class="sqlkeywordcolor" style="color:mediumblue">ALL</span><br><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> <em>column_name(s)</em> <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> <em>table2</em>; </span></div></div>

                <p><b>Note:</b> The column names in the result-set are usually equal to 
                    the column names in the first <code class="w3-codespan">SELECT</code> statement.</p>
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
                                <th style="width:15%">SupplierID</th>
                                <th>SupplierName</th>
                                <th>ContactName</th>
                                <th>Address</th>
                                <th>City</th>
                                <th>PostalCode</th>
                                <th>Country</th>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>Exotic Liquid</td>
                                <td>Charlotte Cooper</td>
                                <td>49 Gilbert St.</td>
                                <td>London</td>
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

                <h2>SQL UNION Example</h2>
                <p>The following SQL statement returns the cities 
                    (only distinct values) from both the "Customers" and the "Suppliers" table:</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> City <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers<br><span class="sqlkeywordcolor" style="color:mediumblue">UNION</span><br><span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> City <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Suppliers<br><span class="sqlkeywordcolor" style="color:mediumblue">ORDER</span> <span class="sqlkeywordcolor" style="color:mediumblue">BY</span> City;<span class="sqlnumbercolor" style="color:">
                            </span> </span></div>

                </div>

                <p><b>Note:</b> If some customers or suppliers have the same city, each city will only be 
                    listed once, because <code class="w3-codespan">UNION</code> selects only distinct values. Use 
                    <code class="w3-codespan">UNION ALL</code> to also select 
                    duplicate values!</p>
                <hr>

                <h2>SQL UNION ALL Example</h2>
                <p>The following SQL statement returns the cities 
                    (duplicate values also) from both the "Customers" and the "Suppliers" table:</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> City <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers<br><span class="sqlkeywordcolor" style="color:mediumblue">UNION</span> <span class="sqlkeywordcolor" style="color:mediumblue">ALL</span><br><span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> City <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Suppliers<br><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">ORDER</span> <span class="sqlkeywordcolor" style="color:mediumblue">BY</span> City;<span class="sqlnumbercolor" style="color:">
                            </span> </span></div>

                </div>
                <hr>

                <h2>SQL UNION With WHERE</h2>
                <p>The following SQL statement returns the German cities 
                    (only distinct values) from both the "Customers" and the "Suppliers" table:</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> City, Country <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers<br><span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> Country=<span class="sqlstringcolor" style="color:brown">'Germany'</span><br><span class="sqlkeywordcolor" style="color:mediumblue">UNION</span><br><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> City, Country <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Suppliers<br><span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> Country=<span class="sqlstringcolor" style="color:brown">'Germany'</span><br><span class="sqlkeywordcolor" style="color:mediumblue">ORDER</span> <span class="sqlkeywordcolor" style="color:mediumblue">BY</span> City;<span class="sqlnumbercolor" style="color:">
                            </span> </span></div>

                </div>

                <hr>
                <h2>SQL UNION ALL With WHERE</h2>
                <p>The following SQL statement returns the German cities (duplicate values also) from 
                    both the "Customers" and the "Suppliers" table:</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> City, Country <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers<br><span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> Country=<span class="sqlstringcolor" style="color:brown">'Germany'</span><br><span class="sqlkeywordcolor" style="color:mediumblue">UNION</span> <span class="sqlkeywordcolor" style="color:mediumblue">ALL</span><br><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> City, Country <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Suppliers<br><span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> Country=<span class="sqlstringcolor" style="color:brown">'Germany'</span><br><span class="sqlkeywordcolor" style="color:mediumblue">ORDER</span> <span class="sqlkeywordcolor" style="color:mediumblue">BY</span> City;<span class="sqlnumbercolor" style="color:">
                            </span> </span></div>

                </div>
                <hr>

                <h2>Another UNION Example</h2>
                <p>The following SQL statement lists all customers and suppliers:</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span>  <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> <span class="sqlstringcolor" style="color:brown">'Customer'</span> <span class="sqlkeywordcolor" style="color:mediumblue">AS</span> Type, ContactName, City, Country<br><span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers<br><span class="sqlnumbercolor" style="color:">
                            </span>  <span class="sqlkeywordcolor" style="color:mediumblue">UNION</span><br><span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> <span class="sqlstringcolor" style="color:brown">'Supplier'</span>, ContactName, City, Country<br><span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Suppliers;<span class="sqlnumbercolor" style="color:">
                            </span> </span></div>

                </div>
                <p>Notice the "AS Type" above - it is an alias. <a href="sql_alias.asp">SQL 
                        Aliases</a> are used to give a table or a column a temporary name.
                    An alias only exists for the duration of the query. So, here we have created a 
                    temporary column named "Type", that list whether the contact person is a 
                    "Customer" or a "Supplier".</p>
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
