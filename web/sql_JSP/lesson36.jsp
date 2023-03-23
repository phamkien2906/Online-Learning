<%-- 
    Document   : lesson36
    Created on : Feb 4, 2023, 2:00:49 AM
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
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>    </head>
</head>
<body>
    <jsp:include page="../Menu_lesson/header_menu.jsp"></jsp:include>
        <div class="w3-col l10 m12" class="main" style="margin: 0 100px;padding-top: 0px"> 
            <h1>SQL <span class="color_h1">Stored Procedures for SQL Server</span></h1>

            <hr>

            <h2>What is a Stored Procedure?</h2>
            <p>A stored procedure is a prepared SQL code that you can save, so the 
                code can be reused over and over again.</p>
            <p>So if you have an SQL query that you write over and over again, save 
                it as a stored procedure, and then just call it to execute it.</p>
            <p>You can also pass parameters to a stored procedure, so that the stored procedure can act based on the parameter value(s) 
                that is passed.</p>
            <h3>Stored Procedure Syntax</h3>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                        </span>  <span class="sqlkeywordcolor" style="color:mediumblue">CREATE</span> <span class="sqlkeywordcolor" style="color:mediumblue">PROCEDURE</span> <em>procedure_name</em><br><span class="sqlnumbercolor" style="color:">
                        </span>  <span class="sqlkeywordcolor" style="color:mediumblue">AS</span><br><em>sql_statement</em><br><span class="sqlnumbercolor" style="color:">
                        </span>  GO; </span></div></div>
            <h3>Execute a Stored Procedure</h3>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                        </span>  <span class="sqlkeywordcolor" style="color:mediumblue">EXEC</span> <em>procedure_name</em>; </span></div></div>
            <hr>

            <h2>Demo Database</h2>
            <p>Below is a selection from the "Customers" table in the Northwind sample database:</p>
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
            <hr>

            <h2>Stored Procedure Example</h2>
            <p>The following SQL statement creates a stored procedure named "SelectAllCustomers" 
                that selects all records from the "Customers" table:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                        </span>  <span class="sqlkeywordcolor" style="color:mediumblue">CREATE</span> <span class="sqlkeywordcolor" style="color:mediumblue">PROCEDURE</span> SelectAllCustomers<br><span class="sqlkeywordcolor" style="color:mediumblue">AS</span><br><span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers<br>GO;<span class="sqlnumbercolor" style="color:">
                        </span> </span></div>
            </div>
            <p>Execute the stored procedure above as follows:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                        </span>  <span class="sqlkeywordcolor" style="color:mediumblue">EXEC</span> SelectAllCustomers;<span class="sqlnumbercolor" style="color:">
                        </span> </span></div>
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

            <h2>Stored Procedure With One Parameter</h2>
            <p>The following SQL statement creates a stored procedure  
                that selects Customers from a particular City from the "Customers" table:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                        </span>  <span class="sqlkeywordcolor" style="color:mediumblue">CREATE</span> <span class="sqlkeywordcolor" style="color:mediumblue">PROCEDURE</span> SelectAllCustomers <span class="sqlnumbercolor" style="color:">
                        </span>  @City nvarchar(<span class="sqlnumbercolor" style="color:">30</span>)<br><span class="sqlkeywordcolor" style="color:mediumblue">AS</span><br><span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> <span class="sqlnumbercolor" style="color:">
                        </span>  City = @City<br>GO;<span class="sqlnumbercolor" style="color:">
                        </span> </span></div>
            </div>
            <p>Execute the stored procedure above as follows:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                        </span>  <span class="sqlkeywordcolor" style="color:mediumblue">EXEC</span> SelectAllCustomers @City = <span class="sqlstringcolor" style="color:brown">'London'</span>; </span></div>
            </div>
            <hr>

            <h2>Stored Procedure With Multiple Parameters</h2>
            <p>Setting up multiple parameters is very easy. Just list each parameter and the 
                data type separated by a comma as shown below.</p>
            <p>The following SQL statement creates a stored procedure  
                that selects Customers from a particular City with a particular PostalCode from the "Customers" table:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                        </span>  <span class="sqlkeywordcolor" style="color:mediumblue">CREATE</span> <span class="sqlkeywordcolor" style="color:mediumblue">PROCEDURE</span> SelectAllCustomers <span class="sqlnumbercolor" style="color:">
                        </span>  @City nvarchar(<span class="sqlnumbercolor" style="color:">30</span>), @PostalCode nvarchar(<span class="sqlnumbercolor" style="color:">10</span>)<br><span class="sqlkeywordcolor" style="color:mediumblue">AS</span><br><span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> <span class="sqlnumbercolor" style="color:">
                        </span>  City = @City <span class="sqlkeywordcolor" style="color:mediumblue">AND</span> PostalCode = @PostalCode<br>GO;<span class="sqlnumbercolor" style="color:">
                        </span> </span></div>
            </div>
            <p>Execute the stored procedure above as follows:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                        </span>  <span class="sqlkeywordcolor" style="color:mediumblue">EXEC</span> SelectAllCustomers @City = <span class="sqlstringcolor" style="color:brown">'London'</span>, @PostalCode = <span class="sqlstringcolor" style="color:brown">'WA1 1DP'</span>; </span></div>
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
