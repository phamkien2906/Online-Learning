<%-- 
    Document   : lesson8
    Created on : Feb 4, 2023, 12:57:28 AM
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
                <h1>SQL <span class="color_h1">ORDER BY</span> Keyword</h1>

                <hr>

                <h2>The SQL ORDER BY Keyword</h2>
                <p>The <code class="w3-codespan">ORDER BY</code> keyword is used to sort the result-set in ascending or 
                    descending order.</p>
                <p>The <code class="w3-codespan">ORDER BY</code> keyword sorts the records in ascending order by default. To sort the records in descending order, use the <code class="w3-codespan">
                        DESC</code> keyword.</p>

                <h3>ORDER BY Syntax</h3>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> <em>column1</em>,<em> column2, ...</em><br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> <em>table_name</em><br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">ORDER</span> <span class="sqlkeywordcolor" style="color:mediumblue">BY</span> <em>column1, column2, ... </em><span class="sqlkeywordcolor" style="color:mediumblue">ASC</span>|<span class="sqlkeywordcolor" style="color:mediumblue">DESC</span>; </span></div></div>
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

                <h2>ORDER BY Example</h2>
                <p>The following SQL statement selects all customers from the "Customers" table, 
                    sorted by the "Country" column:</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers<br><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">ORDER</span> <span class="sqlkeywordcolor" style="color:mediumblue">BY</span> Country;<span class="sqlnumbercolor" style="color:">
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

                </div>

                <hr>

                <h2>ORDER BY DESC Example</h2>
                <p>The following SQL statement selects all customers from the "Customers" table, 
                    sorted DESCENDING by the "Country" column:</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers<br><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">ORDER</span> <span class="sqlkeywordcolor" style="color:mediumblue">BY</span> Country <span class="sqlkeywordcolor" style="color:mediumblue">DESC</span>; </span></div>

                </div>
                <hr>

                <h2>ORDER BY Several Columns Example</h2>
                <p>The following SQL statement selects all customers from the "Customers" table, 
                    sorted by the "Country" and the "CustomerName" column. This means that it orders 
                    by Country, but if some rows have the same Country, it orders them by 
                    CustomerName:</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers<br><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">ORDER</span> <span class="sqlkeywordcolor" style="color:mediumblue">BY</span> Country, CustomerName; </span></div>

                </div>
                <hr>

                <h2>ORDER BY Several Columns Example 2</h2>
                <p>The following SQL statement selects all customers from the "Customers" table, 
                    sorted ascending by the "Country" and descending by the "CustomerName" column:</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers<br><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">ORDER</span> <span class="sqlkeywordcolor" style="color:mediumblue">BY</span> Country <span class="sqlkeywordcolor" style="color:mediumblue">ASC</span>, CustomerName <span class="sqlkeywordcolor" style="color:mediumblue">DESC</span>; </span></div>

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
