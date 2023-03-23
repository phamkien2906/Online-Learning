<%-- 
    Document   : lesson59
    Created on : Feb 4, 2023, 10:23:55 AM
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
                <h1>SQL <span class="color_h1">Hosting</span></h1>

                <hr>
                <h2>SQL Hosting</h2>
                <p>If you want your web site to be able to store and retrieve data from a 
                    database, your web server should have access to a database-system that uses the 
                    SQL language.</p>
                <p>If your web server is hosted by an Internet Service Provider (ISP), you will have to look for SQL hosting plans.</p>
                <p>The most common SQL hosting databases are MS SQL Server, Oracle, MySQL, and MS Access.</p>
                <hr>
                <h2>MS SQL Server</h2>
                <p>Microsoft's SQL Server is a popular database software for  database-driven web sites 
                    with high traffic.</p>
                <p>SQL Server is a very powerful, robust and full featured SQL database system.</p>
                <hr>
                <h2>Oracle</h2>
                <p>Oracle is also a popular database software for  database-driven web sites 
                    with high traffic.</p>
                <p>Oracle is a very powerful, robust and full featured SQL database system.</p>
                <hr>
                <h2>MySQL</h2>
                <p>MySQL is also a popular database software for web sites.</p>

                <p>MySQL is a very powerful, robust and full featured SQL database system.</p>

                <p>MySQL is an inexpensive 
                    alternative to the expensive Microsoft and Oracle solutions.</p>

                <hr>
                <h2>MS Access</h2>
                <p>When a web site requires only a simple database, Microsoft Access can be a 
                    solution.</p>
                <p>MS Access is not well suited for very high-traffic, and not as powerful as 
                    MySQL, SQL Server, or Oracle.</p>


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
