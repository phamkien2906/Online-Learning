<%-- 
    Document   : lesson19
    Created on : Feb 4, 2023, 1:23:22 AM
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
                <h1>SQL <span class="color_h1">BETWEEN</span> Operator</h1>

                <hr>
                <h2>The SQL BETWEEN Operator</h2>
                <p>The <code class="w3-codespan">BETWEEN</code> operator selects values within a given range. The values can be numbers, text, or dates.</p>
                <p>The <code class="w3-codespan">BETWEEN</code> operator is inclusive: begin and end values are included.&nbsp;</p>
                <h3>BETWEEN Syntax</h3>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> <em>column_name(s)</em><br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> <em>table_name</em><br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> <em>column_name </em><span class="sqlkeywordcolor" style="color:mediumblue">BETWEEN</span> <em>value1</em> <span class="sqlkeywordcolor" style="color:mediumblue">AND</span> <em>value2;</em> </span></div></div>
                <hr>

                <h2>Demo Database</h2>
                <p>Below is a selection from the "Products" table in the Northwind 
                    sample database:</p>
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
                                <td>1</td>
                                <td>2</td>
                                <td>48 - 6 oz jars</td>
                                <td>22</td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>Chef Anton's Gumbo Mix</td>
                                <td>1</td>
                                <td>2</td>
                                <td>36 boxes</td>
                                <td>21.35</td>
                            </tr>
                        </tbody></table>
                </div>
                <hr>

                <h2>BETWEEN Example</h2>
                <p>The following SQL statement selects all products with a price between 10 and 20:</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Products<br><span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> Price <span class="sqlkeywordcolor" style="color:mediumblue">BETWEEN</span> <span class="sqlnumbercolor" style="color:">10</span> <span class="sqlkeywordcolor" style="color:mediumblue">AND</span> <span class="sqlnumbercolor" style="color:">20</span>;<span class="sqlnumbercolor" style="color:">
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

                <h2>NOT BETWEEN Example</h2>
                <p>To display the products outside the range of the previous example, use <code class="w3-codespan">
                        NOT BETWEEN</code>:</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Products<br><span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> Price <span class="sqlkeywordcolor" style="color:mediumblue">NOT</span> <span class="sqlkeywordcolor" style="color:mediumblue">BETWEEN</span> <span class="sqlnumbercolor" style="color:">10</span> <span class="sqlkeywordcolor" style="color:mediumblue">AND</span> <span class="sqlnumbercolor" style="color:">20</span>;<span class="sqlnumbercolor" style="color:">
                            </span> </span></div>

                </div>
                <hr>

                <h2>BETWEEN with IN Example</h2>
                <p>The following SQL statement selects all products with a price between 10 and 
                    20. In addition; do not show products with a CategoryID of 1,2, or 3:</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Products<br><span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> Price <span class="sqlkeywordcolor" style="color:mediumblue">BETWEEN</span> <span class="sqlnumbercolor" style="color:">10</span> <span class="sqlkeywordcolor" style="color:mediumblue">AND</span> <span class="sqlnumbercolor" style="color:">20</span><br><span class="sqlkeywordcolor" style="color:mediumblue">AND</span> CategoryID <span class="sqlkeywordcolor" style="color:mediumblue">NOT</span> <span class="sqlkeywordcolor" style="color:mediumblue">IN</span> (<span class="sqlnumbercolor" style="color:">1</span>,<span class="sqlnumbercolor" style="color:">2</span>,<span class="sqlnumbercolor" style="color:">3</span>);<span class="sqlnumbercolor" style="color:">
                            </span> </span></div>

                </div>
                <hr>

                <h2>BETWEEN Text Values Example</h2>
                <p>The following SQL statement selects all products with a ProductName between Carnarvon 
                    Tigers and Mozzarella di Giovanni:</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Products<br><span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> ProductName <span class="sqlkeywordcolor" style="color:mediumblue">BETWEEN</span> <span class="sqlstringcolor" style="color:brown">'Carnarvon Tigers'</span> <span class="sqlkeywordcolor" style="color:mediumblue">AND</span> <span class="sqlstringcolor" style="color:brown">'Mozzarella 
                                di Giovanni'</span><br><span class="sqlkeywordcolor" style="color:mediumblue">ORDER</span> <span class="sqlkeywordcolor" style="color:mediumblue">BY</span> ProductName;<span class="sqlnumbercolor" style="color:">
                            </span> </span></div>

                </div>
                <p>The following SQL statement selects all products with a ProductName between Carnarvon 
                    Tigers and Chef Anton's Cajun Seasoning:</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Products<br><span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> ProductName <span class="sqlkeywordcolor" style="color:mediumblue">BETWEEN</span> <span class="sqlstringcolor" style="color:brown">"Carnarvon Tigers"</span> <span class="sqlkeywordcolor" style="color:mediumblue">AND</span> <span class="sqlnumbercolor" style="color:">
                            </span>  <span class="sqlstringcolor" style="color:brown">"Chef Anton's Cajun Seasoning"</span><br><span class="sqlkeywordcolor" style="color:mediumblue">ORDER</span> <span class="sqlkeywordcolor" style="color:mediumblue">BY</span> ProductName;<span class="sqlnumbercolor" style="color:">
                            </span> </span></div>

                </div>
                <hr>

                <h2>NOT BETWEEN Text Values Example</h2>
                <p>The following SQL statement selects all products with a ProductName not 
                    between Carnarvon 
                    Tigers and Mozzarella di Giovanni:</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Products<br><span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> ProductName <span class="sqlkeywordcolor" style="color:mediumblue">NOT</span> <span class="sqlkeywordcolor" style="color:mediumblue">BETWEEN</span> <span class="sqlstringcolor" style="color:brown">'Carnarvon Tigers'</span> <span class="sqlkeywordcolor" style="color:mediumblue">AND</span> <span class="sqlstringcolor" style="color:brown">'Mozzarella 
                                di Giovanni'</span><br><span class="sqlkeywordcolor" style="color:mediumblue">ORDER</span> <span class="sqlkeywordcolor" style="color:mediumblue">BY</span> ProductName;<span class="sqlnumbercolor" style="color:">
                            </span> </span></div>

                </div>
                <hr>

                <h2>Sample Table</h2>
                <p>Below is a selection from the "Orders" table in the Northwind 
                    sample database:</p>
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
                                <td>10248</td>
                                <td>90</td>
                                <td>5</td>
                                <td>7/4/1996</td>
                                <td>3</td>
                            </tr>
                            <tr>
                                <td>10249</td>
                                <td>81</td>
                                <td>6</td>
                                <td>7/5/1996</td>
                                <td>1</td>
                            </tr>
                            <tr>
                                <td>10250</td>
                                <td>34</td>
                                <td>4</td>
                                <td>7/8/1996</td>
                                <td>2</td>
                            </tr>
                            <tr>
                                <td>10251</td>
                                <td>84</td>
                                <td>3</td>
                                <td>7/9/1996</td>
                                <td>1</td>
                            </tr>
                            <tr>
                                <td>10252</td>
                                <td>76</td>
                                <td>4</td>
                                <td>7/10/1996</td>
                                <td>2</td>
                            </tr>
                        </tbody></table>
                </div>
                <hr>

                <h2>BETWEEN Dates Example</h2>
                <p>The following SQL statement selects all orders with an OrderDate between '01-July-1996' and 
                    '31-July-1996':</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Orders<br><span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> OrderDate <span class="sqlkeywordcolor" style="color:mediumblue">BETWEEN</span> #07/<span class="sqlnumbercolor" style="color:">01</span>/1996# <span class="sqlkeywordcolor" style="color:mediumblue">AND</span> #07/<span class="sqlnumbercolor" style="color:">31</span>/1996#;<span class="sqlnumbercolor" style="color:">
                            </span> </span></div>

                </div>

                <p>OR:</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Orders<br><span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> OrderDate <span class="sqlkeywordcolor" style="color:mediumblue">BETWEEN</span> <span class="sqlstringcolor" style="color:brown">'1996-07-01'</span> <span class="sqlkeywordcolor" style="color:mediumblue">AND</span> <span class="sqlstringcolor" style="color:brown">'1996-07-31'</span>;<span class="sqlnumbercolor" style="color:">
                            </span> </span></div>

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
