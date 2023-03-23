<%-- 
    Document   : lesson31
    Created on : Feb 4, 2023, 1:52:44 AM
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
            <h1>SQL <span class="color_h1">ANY and ALL Operators</span></h1>

            <hr>
            <h2>The SQL ANY and ALL Operators</h2>
            <p>The <code class="w3-codespan">ANY</code> and <code class="w3-codespan">ALL</code> operators allow you to perform a comparison between a single 
                column value and a range of other values.</p>
            <hr>
            <h2>The SQL ANY Operator</h2>
            <p>The <code class="w3-codespan">ANY</code> operator:</p>
            <ul>
                <li>returns a boolean value as a result</li>
                <li>returns TRUE if ANY of the subquery values meet the condition</li>
            </ul>
            <p><code class="w3-codespan">ANY</code> means that the condition will be true if the operation is true for 
                any of the values in the range.</p>
            <h3>ANY Syntax</h3>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                        </span>  <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> <em>column_name(s)</em><br><span class="sqlnumbercolor" style="color:">
                        </span>  <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> <em>table_name</em><br><span class="sqlnumbercolor" style="color:">
                        </span>  <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> <span class="sqlnumbercolor" style="color:">
                        </span>  <em>column_name operator</em> <span class="sqlkeywordcolor" style="color:mediumblue">ANY</span><br>&nbsp; (<span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> <em>column_name<br>&nbsp; </em><span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> <em>table_name<br>&nbsp; </em><span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span><span class="sqlnumbercolor" style="color:">
                        </span>  <em>condition</em>); </span></div></div>

            <div class="w3-panel w3-note">
                <p><strong>Note:</strong> The <em>operator</em> must be a standard comparison 
                    operator (=, &lt;&gt;, !=, &gt;, &gt;=, &lt;, or &lt;=).</p>
            </div>

            <hr>

            <h2>The SQL ALL Operator</h2>
            <p>The <code class="w3-codespan">ALL</code> operator:</p>
            <ul>
                <li>returns a boolean value as a result</li>
                <li>returns TRUE if ALL of the subquery values meet the condition</li>
                <li>is used with <code class="w3-codespan">SELECT</code>, 
                    <code class="w3-codespan">WHERE</code> and <code class="w3-codespan">HAVING</code> statements</li>
            </ul>
            <p><code class="w3-codespan">ALL</code> means that the condition will be true only if the operation is true 
                for all values in the range.&nbsp;</p>

            <h3>ALL Syntax With SELECT</h3>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                        </span>  <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> <span class="sqlkeywordcolor" style="color:mediumblue">ALL</span> <em>column_name(s)</em><br><span class="sqlnumbercolor" style="color:">
                        </span>  <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> <em>table_name</em><br><span class="sqlnumbercolor" style="color:">
                        </span>  <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> <span class="sqlnumbercolor" style="color:">
                        </span>  <em>condition</em>; </span></div></div>

            <h3>ALL Syntax With WHERE or HAVING</h3>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                        </span>  <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> <em>column_name(s)</em><br><span class="sqlnumbercolor" style="color:">
                        </span>  <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> <em>table_name</em><br><span class="sqlnumbercolor" style="color:">
                        </span>  <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> <span class="sqlnumbercolor" style="color:">
                        </span>  <em>column_name operator</em> <span class="sqlkeywordcolor" style="color:mediumblue">ALL</span><br>&nbsp; (<span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> <em>column_name<br>&nbsp; </em><span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> <em>table_name<br>&nbsp; </em><span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> <em>condition</em>); </span></div></div>

            <div class="w3-panel w3-note">
                <p><strong>Note:</strong> The <em>operator</em> must be a standard comparison 
                    operator (=, &lt;&gt;, !=, &gt;, &gt;=, &lt;, or &lt;=).</p>
            </div>

            <hr>
            <h2>Demo Database</h2>
            <p>Below is a selection from the <strong>"Products"</strong> table in the Northwind sample database:</p>
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
                        <tr>
                            <td>6</td>
                            <td>Grandma's Boysenberry Spread</td>
                            <td>3</td>
                            <td>2</td>
                            <td>12 - 8 oz jars</td>
                            <td>25</td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td>Uncle Bob's Organic Dried Pears</td>
                            <td>3</td>
                            <td>7</td>
                            <td>12 - 1 lb pkgs.</td>
                            <td>30</td>
                        </tr>
                        <tr>
                            <td>8</td>
                            <td>Northwoods Cranberry Sauce</td>
                            <td>3</td>
                            <td>2</td>
                            <td>12 - 12 oz jars</td>
                            <td>40</td>
                        </tr>
                        <tr>
                            <td>9</td>
                            <td>Mishi Kobe Niku</td>
                            <td>4</td>
                            <td>6</td>
                            <td>18 - 500 g pkgs.</td>
                            <td>97</td>
                        </tr>
                    </tbody></table>
            </div>

            <p>And a selection from the <strong>"OrderDetails"</strong> table:</p>
            <div class="w3-responsive">
                <table class="ws-table-all notranslate">
                    <tbody><tr>
                            <th>OrderDetailID</th>
                            <th>OrderID</th>
                            <th>ProductID</th>
                            <th>Quantity</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>10248</td>
                            <td>11</td>
                            <td>12</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>10248</td>
                            <td>42</td>
                            <td>10</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>10248</td>
                            <td>72</td>
                            <td>5</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>10249</td>
                            <td>14</td>
                            <td>9</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>10249</td>
                            <td>51</td>
                            <td>40</td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>10250</td>
                            <td>41</td>
                            <td>10</td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td>10250</td>
                            <td>51</td>
                            <td>35</td>
                        </tr>
                        <tr>
                            <td>8</td>
                            <td>10250</td>
                            <td>65</td>
                            <td>15</td>
                        </tr>
                        <tr>
                            <td>9</td>
                            <td>10251</td>
                            <td>22</td>
                            <td>6</td>
                        </tr>
                        <tr>
                            <td>10</td>
                            <td>10251</td>
                            <td>57</td>
                            <td>15</td>
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

            <h2>SQL ANY Examples</h2>
            <p>The following SQL statement lists the ProductName if it 
                finds ANY records in the OrderDetails table has Quantity equal to 10 (this will 
                return TRUE because the Quantity column has some values of 10):</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                        </span>  <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> ProductName<br><span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Products<br><span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> ProductID = <span class="sqlkeywordcolor" style="color:mediumblue">ANY</span><br>&nbsp; (<span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> ProductID<br>&nbsp; <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> OrderDetails<br>&nbsp; <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> Quantity = <span class="sqlnumbercolor" style="color:">10</span>); </span></div>

            </div>

            <p>The following SQL statement lists the ProductName if it 
                finds ANY records in the OrderDetails table has Quantity larger than 99 (this 
                will return TRUE because the Quantity column has some values larger than 99):</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                        </span>  <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> ProductName<br><span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Products<br><span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> ProductID = <span class="sqlkeywordcolor" style="color:mediumblue">ANY</span><br>&nbsp; (<span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> ProductID<br>&nbsp; <span class="sqlnumbercolor" style="color:">
                        </span>  <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> OrderDetails<br>&nbsp; <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> Quantity &gt; <span class="sqlnumbercolor" style="color:">99</span>); </span></div>

            </div>

            <p>The following SQL statement lists the ProductName if it 
                finds ANY records in the OrderDetails table has Quantity larger than 1000 (this 
                will return FALSE because the Quantity column has no values larger than 1000):</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                        </span>  <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> ProductName<br><span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Products<br><span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> ProductID = <span class="sqlkeywordcolor" style="color:mediumblue">ANY</span><br>&nbsp; (<span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> ProductID<br>&nbsp; <span class="sqlnumbercolor" style="color:">
                        </span>  <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> OrderDetails<br>&nbsp; <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> Quantity &gt; <span class="sqlnumbercolor" style="color:">1000</span>); </span></div>

            </div>
            <hr>

            <h2>SQL ALL Examples</h2>
            <p>The following SQL statement lists ALL the product names:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                        </span>  <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> <span class="sqlkeywordcolor" style="color:mediumblue">ALL</span> ProductName<br><span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Products<br><span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> TRUE; </span></div>

            </div>

            <p>The following SQL statement lists the ProductName if ALL the records in the 
                OrderDetails table has Quantity equal to 10. This will of course return FALSE 
                because the Quantity column has many different values (not only the value of 10):</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                        </span>  <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> ProductName<br><span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Products<br><span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> ProductID = <span class="sqlkeywordcolor" style="color:mediumblue">ALL</span><br>&nbsp; (<span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> ProductID<br>&nbsp; <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> OrderDetails<br>&nbsp; <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> Quantity = <span class="sqlnumbercolor" style="color:">10</span>); </span></div>

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
