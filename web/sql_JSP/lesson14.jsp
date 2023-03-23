<%-- 
    Document   : lesson14
    Created on : Feb 4, 2023, 1:10:17 AM
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
                <h1>SQL <span class="color_h1">MIN() and MAX()</span> Functions</h1>

                <hr>
                <h2>The SQL MIN() and MAX() Functions</h2>
                <p>The <code class="w3-codespan">MIN()</code> function returns the smallest value of the selected column.</p>
                <p>The <code class="w3-codespan">MAX()</code> function returns the largest value of the selected column.</p>
                <h3>MIN() Syntax</h3>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> MIN(<em>column_name</em>)<br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> <em>table_name</em><br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> <em>condition</em>; </span></div></div>
                <h3>MAX() Syntax</h3>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> MAX(<em>column_name</em>)<br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> <em>table_name</em><br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> <em>condition</em>; </span></div></div>
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
                <hr>

                <h2>MIN() Example</h2>
                <p>The following SQL statement finds the price of the cheapest product:</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span>  <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> MIN(Price) <span class="sqlkeywordcolor" style="color:mediumblue">AS</span> SmallestPrice<br><span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Products;<span class="sqlnumbercolor" style="color:">
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

                <h2>MAX() Example</h2>
                <p>The following SQL statement finds the price of the most expensive product:</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span>  <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> MAX(Price) <span class="sqlkeywordcolor" style="color:mediumblue">AS</span> LargestPrice<br><span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Products; </span></div>

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
