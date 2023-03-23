<%-- 
    Document   : lesson32
    Created on : Feb 4, 2023, 1:54:46 AM
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
            <h1>SQL <span class="color_h1">SELECT INTO</span> Statement</h1>

            <hr>
            <h2>The SQL SELECT INTO Statement</h2>
            <p>The <code class="w3-codespan">SELECT INTO</code> statement copies data from one table into a new table.</p>

            <h3>SELECT INTO Syntax</h3>
            <p>Copy all columns into a new table:</p>

            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> *<br>
                        <span class="sqlkeywordcolor" style="color:mediumblue">INTO</span> <em>newtable</em> [<span class="sqlkeywordcolor" style="color:mediumblue">IN</span> <em>externaldb</em>]<br>
                        <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> <em>oldtable<br></em><span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> <em>condition</em>; </span></div></div>

            <p>Copy only some columns into a new table:</p>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> <em>column1</em>, <em>column2</em>, <em>column3</em>, ...<br>
                        <span class="sqlkeywordcolor" style="color:mediumblue">INTO</span> <em>newtable</em> [<span class="sqlkeywordcolor" style="color:mediumblue">IN</span> <em>externaldb</em>]<br> 
                        <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> <em>oldtable<br></em><span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> <em>condition;</em> </span></div></div>

            <p>The new table will be created with the column-names and types as defined in the old table.
                You can create new column names using the <code class="w3-codespan">AS</code> clause.</p>
            <hr>

            <h2>SQL SELECT INTO Examples</h2>

            <p>The following SQL statement creates a backup copy of Customers:</p>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">INTO</span> CustomersBackup2017<br>
                        <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers; </span></div></div>

            <p>The following SQL statement uses the <code class="w3-codespan">IN</code> clause to copy the table into a new 
                table in another database:</p>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> *
                        <span class="sqlkeywordcolor" style="color:mediumblue">INTO</span> CustomersBackup2017 <span class="sqlkeywordcolor" style="color:mediumblue">IN</span> <span class="sqlstringcolor" style="color:brown">'Backup.mdb'</span><br>
                        <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers; </span></div></div>

            <p>The following SQL statement copies only a few columns into a new table:</p>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> CustomerName, ContactName <span class="sqlkeywordcolor" style="color:mediumblue">INTO</span> CustomersBackup2017<br>
                        <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers; </span></div></div>

            <p>The following SQL statement copies only the German customers into a new table:</p>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> *
                        <span class="sqlkeywordcolor" style="color:mediumblue">INTO</span> CustomersGermany<br>
                        <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers<br>
                        <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> Country = <span class="sqlstringcolor" style="color:brown">'Germany'</span>; </span></div></div>

            <p>The following SQL statement copies data from more than one table into a new table:</p>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                        </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> Customers.CustomerName, Orders.OrderID<br><span class="sqlkeywordcolor" style="color:mediumblue">INTO</span> CustomersOrderBackup2017<br>
                        <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers<br><span class="sqlnumbercolor" style="color:">
                        </span> <span class="sqlkeywordcolor" style="color:mediumblue">LEFT</span> <span class="sqlkeywordcolor" style="color:mediumblue">JOIN</span> Orders
                        <span class="sqlkeywordcolor" style="color:mediumblue">ON</span> Customers.CustomerID = Orders.CustomerID; </span></div>
            </div>

            <p><strong>Tip:</strong> <code class="w3-codespan">SELECT INTO</code> can also be used to create a 
                new, empty table using the schema of another. Just add a 
                <code class="w3-codespan">WHERE</code> clause that 
                causes the query to return no data:</p>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">INTO</span> <em>newtable</em><br><span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> <em>oldtable</em><br><span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> <span class="sqlnumbercolor" style="color:">1</span> = <span class="sqlnumbercolor" style="color:">0</span>; </span></div>
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
