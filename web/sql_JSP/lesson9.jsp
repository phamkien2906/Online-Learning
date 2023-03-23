<%-- 
    Document   : lesson9
    Created on : Feb 4, 2023, 12:58:56 AM
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
                <h1>SQL <span class="color_h1">INSERT INTO</span> Statement</h1>

                <hr>
                <h2>The SQL INSERT INTO Statement</h2>
                <p>The <code class="w3-codespan">INSERT INTO</code> statement is used to insert new records in a table.</p>

                <h3>INSERT INTO Syntax</h3>
                <p>It is possible to write the <code class="w3-codespan">INSERT INTO</code> 
                    statement in two ways:</p>

                <p>1. Specify both the column names and the values to be inserted:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">INSERT</span> <span class="sqlkeywordcolor" style="color:mediumblue">INTO</span> <em>table_name</em> (<em>column1</em>,<em> column2</em>,<em> column3</em>, ...)<br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">VALUES</span> (<em>value1</em>,<em> value2</em>,<em> value3</em>, ...); </span></div></div>

                <p>2. If you are adding values for all the columns of the table, you do not need to 
                    specify the column names in the SQL query. However, make sure the order of the 
                    values is in the same order as the columns in the table. Here, the <code class="w3-codespan">
                        INSERT INTO</code> syntax 
                    would be as follows:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">INSERT</span> <span class="sqlkeywordcolor" style="color:mediumblue">INTO</span> <em>table_name</em><br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">VALUES</span> (<em>value1</em>,<em> value2</em>,<em> value3</em>, ...); </span></div></div>

                <hr>

                <h2>Demo Database</h2>
                <p>Below is a selection from the "Customers" table in the Northwind 
                    sample database:</p>
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
                                <td>89</td>
                                <td>White Clover Markets</td>
                                <td>Karl Jablonski</td>
                                <td>305 - 14th Ave. S. Suite 3B</td>
                                <td>Seattle</td>
                                <td>98128</td>
                                <td>USA</td>
                            </tr>
                            <tr>
                                <td>90<br><br></td>
                                <td>Wilman Kala</td>
                                <td>Matti Karttunen</td>
                                <td>Keskuskatu 45</td>
                                <td>Helsinki</td>
                                <td>21240</td>
                                <td>Finland</td>
                            </tr>
                            <tr>
                                <td>91<br><br></td>
                                <td>Wolski</td>
                                <td>Zbyszek</td>
                                <td>ul. Filtrowa 68</td>
                                <td>Walla</td>
                                <td>01-012</td>
                                <td>Poland</td>
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

                <h2>INSERT INTO Example</h2>
                <p>The following SQL statement inserts a new record in the "Customers" table:</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">INSERT</span> <span class="sqlkeywordcolor" style="color:mediumblue">INTO</span> Customers (CustomerName, ContactName, Address, City, PostalCode, Country)<br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">VALUES</span> (<span class="sqlstringcolor" style="color:brown">'Cardinal'</span>, <span class="sqlstringcolor" style="color:brown">'Tom B. Erichsen'</span>, <span class="sqlstringcolor" style="color:brown">'Skagen 21'</span>, <span class="sqlstringcolor" style="color:brown">'Stavanger'</span>, <span class="sqlstringcolor" style="color:brown">'4006'</span>, <span class="sqlstringcolor" style="color:brown">'Norway'</span>);<span class="sqlnumbercolor" style="color:">
                            </span> </span></div>

                </div>

                <p>The selection from the "Customers" table will now look like this:</p>
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
                                <td>89</td>
                                <td>White Clover Markets</td>
                                <td>Karl Jablonski</td>
                                <td>305 - 14th Ave. S. Suite 3B</td>
                                <td>Seattle</td>
                                <td>98128</td>
                                <td>USA</td>
                            </tr>
                            <tr>
                                <td>90<br><br></td>
                                <td>Wilman Kala</td>
                                <td>Matti Karttunen</td>
                                <td>Keskuskatu 45</td>
                                <td>Helsinki</td>
                                <td>21240</td>
                                <td>Finland</td>
                            </tr>
                            <tr>
                                <td>91<br><br></td>
                                <td>Wolski</td>
                                <td>Zbyszek</td>
                                <td>ul. Filtrowa 68</td>
                                <td>Walla</td>
                                <td>01-012</td>
                                <td>Poland</td>
                            </tr>
                            <tr>
                                <td>92</td>
                                <td>Cardinal</td>
                                <td>Tom B. Erichsen</td>
                                <td>Skagen 21</td>
                                <td>Stavanger</td>
                                <td>4006</td>
                                <td>Norway</td>
                            </tr>
                        </tbody></table>
                </div>

                <div class="w3-panel w3-note">
                    <p><strong>Did you notice that we did not insert any number into the CustomerID 
                            field?</strong><br>The CustomerID column is 
                        an <a href="sql_autoincrement.asp">auto-increment</a> field and will be 
                        generated automatically when a new record is inserted into the table.</p>
                </div>
                <hr>

                <h2>Insert Data Only in Specified Columns</h2>
                <p>It is also possible to only insert data in specific columns.</p>
                <p>The following SQL statement will insert a new record, but only insert data in the "CustomerName", 
                    "City", and "Country" columns (CustomerID will 
                    be updated automatically):</p>

                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">INSERT</span> <span class="sqlkeywordcolor" style="color:mediumblue">INTO</span> Customers (CustomerName, City, Country)<br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">VALUES</span> (<span class="sqlstringcolor" style="color:brown">'Cardinal'</span>, <span class="sqlstringcolor" style="color:brown">'Stavanger'</span>, <span class="sqlstringcolor" style="color:brown">'Norway'</span>);<span class="sqlnumbercolor" style="color:">
                            </span> </span></div>

                </div>

                <p>The selection from the "Customers" table will now look like this:</p>
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
                                <td>89</td>
                                <td>White Clover Markets</td>
                                <td>Karl Jablonski</td>
                                <td>305 - 14th Ave. S. Suite 3B</td>
                                <td>Seattle</td>
                                <td>98128</td>
                                <td>USA</td>
                            </tr>
                            <tr>
                                <td>90<br><br></td>
                                <td>Wilman Kala</td>
                                <td>Matti Karttunen</td>
                                <td>Keskuskatu 45</td>
                                <td>Helsinki</td>
                                <td>21240</td>
                                <td>Finland</td>
                            </tr>
                            <tr>
                                <td>91<br><br></td>
                                <td>Wolski</td>
                                <td>Zbyszek</td>
                                <td>ul. Filtrowa 68</td>
                                <td>Walla</td>
                                <td>01-012</td>
                                <td>Poland</td>
                            </tr>
                            <tr>
                                <td>92</td>
                                <td>Cardinal</td>
                                <td>null</td>
                                <td>null&nbsp;</td>
                                <td>Stavanger</td>
                                <td>null</td>
                                <td>Norway</td>
                            </tr>
                        </tbody></table>
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
