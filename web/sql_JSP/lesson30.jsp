<%-- 
    Document   : lesson30
    Created on : Feb 4, 2023, 1:51:08 AM
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
    <body>
        <jsp:include page="../Menu_lesson/header_menu.jsp"></jsp:include>
            <div class="w3-col l10 m12" class="main" style="margin: 0 100px;padding-top: 0px"> 
                <h1>SQL <span class="color_h1">EXISTS Operator</span></h1>

                <hr>
                <h2>The SQL EXISTS Operator</h2>
                <p>The <code class="w3-codespan">EXISTS</code> operator is used to test for the existence of any record in a subquery.</p>
                <p>The <code class="w3-codespan">EXISTS</code> operator returns TRUE if the subquery returns one or more records.</p>
                <h3>EXISTS Syntax</h3>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span>  <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> <em>column_name(s)</em><br><span class="sqlnumbercolor" style="color:">
                            </span>  <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> <em>table_name</em><br><span class="sqlnumbercolor" style="color:">
                            </span>  <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> <span class="sqlnumbercolor" style="color:">
                            </span>  <span class="sqlkeywordcolor" style="color:mediumblue">EXISTS</span><br>(<span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> <em>column_name </em><span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> <em>table_name</em> <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span><span class="sqlnumbercolor" style="color:">
                            </span>  <em>condition</em>); </span></div></div>

                <hr>

                <h2>Demo Database</h2>
                <p>Below is a selection from the "Products" table in the Northwind sample database:</p>
                <div class="w3-responsive">
                    <table class="ws-table-all notranslate">
                        <tbody><tr>
                                <th>ProductID</th>
                                <th>ProductName</th>
                                <th>SupplierID</th>
                                <th>CategoryID</th>
                                <th>Unit</th>
                                <th>Price</th>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>Chais</td>
                                <td>1</td>
                                <td>1</td>
                                <td>10 boxes x 20 bags</td>
                                <td>18</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Chang</td>
                                <td>1</td>
                                <td>1</td>
                                <td>24 - 12 oz bottles</td>
                                <td>19</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>Aniseed Syrup</td>
                                <td>1</td>
                                <td>2</td>
                                <td>12 - 550 ml bottles</td>
                                <td>10</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>Chef Anton's Cajun Seasoning</td>
                                <td>2</td>
                                <td>2</td>
                                <td>48 - 6 oz jars</td>
                                <td>22</td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>Chef Anton's Gumbo Mix</td>
                                <td>2</td>
                                <td>2</td>
                                <td>36 boxes</td>
                                <td>21.35</td>
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
                            <tr>
                                <td>4</td>
                                <td>Tokyo Traders</td>
                                <td>Yoshi Nagase</td>
                                <td>9-8 Sekimai Musashino-shi</td>
                                <td>Tokyo</td>
                                <td>100</td>
                                <td>Japan</td>
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
                    <img id="coursera_img" src="img_guided_coursera.png">
                    <p>Try a hands-on training sessions with step-by-step guidance from an expert. Try the guided project made in collaboration with Coursera now!</p>
                    <a class="w3-btn w3-margin-bottom" id="coursera_link" href="https://imp.i384100.net/b36bjb" target="_blank">Get started</a>
                </div>

                <hr>

                <h2>SQL EXISTS Examples</h2>
                <p>The following SQL statement returns TRUE and lists the suppliers with a product price less than 20:</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span>  <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> SupplierName<br><span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Suppliers<br><span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> <span class="sqlkeywordcolor" style="color:mediumblue">EXISTS</span> (<span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> ProductName <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> <span class="sqlnumbercolor" style="color:">
                            </span>  Products <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> Products.SupplierID = Suppliers.supplierID <span class="sqlkeywordcolor" style="color:mediumblue">AND</span> Price &lt; <span class="sqlnumbercolor" style="color:">20</span>); </span></div>

                </div>

                <p>The following SQL statement returns TRUE and lists the suppliers with a product price 
                    equal to 22:</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span>  <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> SupplierName<br><span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Suppliers<br><span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> <span class="sqlkeywordcolor" style="color:mediumblue">EXISTS</span> (<span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> ProductName <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> <span class="sqlnumbercolor" style="color:">
                            </span>  Products <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> Products.SupplierID = Suppliers.supplierID <span class="sqlkeywordcolor" style="color:mediumblue">AND</span> Price = <span class="sqlnumbercolor" style="color:">22</span>); </span></div>

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
