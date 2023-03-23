<%-- 
    Document   : lesson35
    Created on : Feb 4, 2023, 1:59:24 AM
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
            <h1>SQL <span class="color_h1">NULL</span> Functions</h1>

            <hr>

            <h2>SQL IFNULL(), ISNULL(), COALESCE(), and NVL() Functions</h2>
            <p>Look at the following "Products" table:</p>
            <div class="w3-responsive">
                <table class="ws-table-all notranslate">
                    <tbody><tr>
                            <th>P_Id</th>
                            <th>ProductName</th>
                            <th>UnitPrice</th>
                            <th>UnitsInStock</th>
                            <th>UnitsOnOrder</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>Jarlsberg</td>
                            <td>10.45</td>
                            <td>16</td>
                            <td>15</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Mascarpone</td>
                            <td>32.56</td>
                            <td>23</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Gorgonzola</td>
                            <td>15.67</td>
                            <td>9</td>
                            <td>20</td>
                        </tr>
                    </tbody></table>
            </div>
            <p>Suppose that the "UnitsOnOrder" column is optional, and may contain NULL values.</p>
            <p>Look at the following SELECT statement:</p>

            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> ProductName, UnitPrice * (UnitsInStock + UnitsOnOrder)<br>
                        <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Products; </span></div>
            </div>

            <p>In the example above, if any of the "UnitsOnOrder" values are NULL, the result 
                will be NULL.</p>
            <hr>

            <h2>Solutions</h2>

            <p><b>MySQL</b></p>
            <p>The MySQL <code class="w3-codespan"><a href="func_mysql_ifnull.asp">IFNULL()</a></code> function lets you 
                return an alternative value if an expression is NULL:</p>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> ProductName, UnitPrice * (UnitsInStock + IFNULL(UnitsOnOrder, <span class="sqlnumbercolor" style="color:">0</span>))<br>
                        <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Products; </span></div></div>

            <p>or we can use the <code class="w3-codespan">
                    <a href="func_mysql_coalesce.asp">COALESCE()</a></code> function, like this:</p>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> ProductName, UnitPrice * (UnitsInStock + <span class="sqlkeywordcolor" style="color:mediumblue">COALESCE</span>(UnitsOnOrder, <span class="sqlnumbercolor" style="color:">0</span>))<br>
                        <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Products; </span></div></div>

            <p><b>SQL Server</b></p>
            <p>The SQL Server <code class="w3-codespan"><a href="func_sqlserver_isnull.asp">
                        ISNULL()</a></code> function lets 
                you return an alternative value when an expression is NULL:</p>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> ProductName, UnitPrice * (UnitsInStock + ISNULL(UnitsOnOrder, <span class="sqlnumbercolor" style="color:">0</span>))<br>
                        <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Products; </span></div></div>

            <p>or we can use the <code class="w3-codespan"><a href="func_sqlserver_coalesce.asp">COALESCE()</a></code>
                function, like this:</p>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> ProductName, UnitPrice * (UnitsInStock + <span class="sqlkeywordcolor" style="color:mediumblue">COALESCE</span>(UnitsOnOrder, <span class="sqlnumbercolor" style="color:">0</span>))<br>
                        <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Products; </span></div></div>

            <p><b>MS Access</b></p>
            <p>The MS Access <code class="w3-codespan"><a href="func_msaccess_isnull.asp">
                        IsNull()</a></code> function returns 
                TRUE (-1) if the expression is a null value, otherwise FALSE (0):</p>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> ProductName, UnitPrice * (UnitsInStock + IIF(IsNull(UnitsOnOrder), <span class="sqlnumbercolor" style="color:">0</span>, UnitsOnOrder))<br>
                        <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Products; </span></div></div>

            <p><b>Oracle</b></p>
            <p>The Oracle <code class="w3-codespan">NVL()</code> function achieves the same result:</p>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> ProductName, UnitPrice * (UnitsInStock + NVL(UnitsOnOrder, <span class="sqlnumbercolor" style="color:">0</span>))<br>
                        <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Products; </span></div></div>

            <p>or we can use the <code class="w3-codespan">COALESCE()</code>
                function, like this:</p>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> ProductName, UnitPrice * (UnitsInStock + <span class="sqlkeywordcolor" style="color:mediumblue">COALESCE</span>(UnitsOnOrder, <span class="sqlnumbercolor" style="color:">0</span>))<br>
                        <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Products; </span></div></div>

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
