<%-- 
    Document   : lesson57
    Created on : Feb 4, 2023, 9:30:46 AM
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
                <h1>SQL <span class="color_h1">Views</span></h1>

                <hr>
                <h2>SQL CREATE VIEW Statement</h2>
                <p>In SQL, a view is a virtual table based on the result-set of an SQL statement.</p>
                <p>A view contains rows and columns, just like a real table. The fields in a view are fields from one or more real tables in the database.</p>
                <p>You can add SQL statements and functions to a view and present the data as if the data were coming from one single table.</p>
                <p>A view is created with the <code class="w3-codespan">CREATE VIEW</code> 
                    statement.&nbsp;</p>

                <h3>CREATE VIEW Syntax</h3>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">CREATE</span> <span class="sqlkeywordcolor" style="color:mediumblue">VIEW</span> <em>view_name</em> <span class="sqlkeywordcolor" style="color:mediumblue">AS</span><br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> <em>column1</em>, <em>column2</em>, ...<br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> <em>table_name</em><br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> <em>condition</em>; </span></div></div>

                <p><b>Note:</b> A view always shows up-to-date data! The database engine recreates the 
                    view, every time a user queries it.</p>
                <hr>

                <h2>SQL CREATE VIEW Examples</h2>
                <p>The following SQL creates a view that shows all customers from Brazil:</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">CREATE</span> <span class="sqlkeywordcolor" style="color:mediumblue">VIEW</span> [Brazil <span class="sqlnumbercolor" style="color:">
                            </span>  Customers] <span class="sqlkeywordcolor" style="color:mediumblue">AS</span><br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> <span class="sqlnumbercolor" style="color:">
                            </span>  CustomerName, ContactName<br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers<br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> <span class="sqlnumbercolor" style="color:">
                            </span>  Country = <span class="sqlstringcolor" style="color:brown">'Brazil'</span>; </span></div>

                </div>

                <p>We can query the view above as follows:</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> [Brazil <span class="sqlnumbercolor" style="color:">
                            </span>  Customers]; </span></div>

                </div>

                <p>The following SQL creates a view that selects every product in the "Products" table with a price higher than the average price:</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">CREATE</span> <span class="sqlkeywordcolor" style="color:mediumblue">VIEW</span> [Products Above Average Price] <span class="sqlkeywordcolor" style="color:mediumblue">AS</span><br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> ProductName, Price<br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Products<br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> Price &gt; (<span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> AVG(Price) <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Products); </span></div>

                </div>

                <p>We can query the view above as follows:</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> [Products Above Average Price]; </span></div>

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

                <h2>SQL Updating a View</h2>
                <p>A view can be updated with the <code class="w3-codespan">CREATE OR REPLACE 
                        VIEW</code> statement.</p>
                <h3>SQL CREATE OR REPLACE VIEW Syntax</h3>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">CREATE</span> <span class="sqlkeywordcolor" style="color:mediumblue">OR</span> <span class="sqlkeywordcolor" style="color:mediumblue">REPLACE</span> <span class="sqlkeywordcolor" style="color:mediumblue">VIEW</span> <em>view_name</em> <span class="sqlkeywordcolor" style="color:mediumblue">AS</span><br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> <em>column1</em>, <em>column2</em>, ...<br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> <em>table_name</em><br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> <em>condition</em>; </span></div></div>

                <p>The following SQL adds the "City" column to the "Brazil Customers" view:</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">CREATE</span> <span class="sqlkeywordcolor" style="color:mediumblue">OR</span> <span class="sqlkeywordcolor" style="color:mediumblue">REPLACE</span> <span class="sqlkeywordcolor" style="color:mediumblue">VIEW</span> [Brazil Customers] <span class="sqlkeywordcolor" style="color:mediumblue">AS</span><br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> CustomerName, ContactName, City<br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers<br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> Country = <span class="sqlstringcolor" style="color:brown">'Brazil'</span>; </span></div>

                </div>
                <hr>

                <h2>SQL Dropping a View</h2>
                <p>A view is deleted with the <code class="w3-codespan">DROP VIEW</code> 
                    statement.</p>
                <h3>SQL DROP VIEW Syntax</h3>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">DROP</span> <span class="sqlkeywordcolor" style="color:mediumblue">VIEW</span> <em>view_name</em>; </span></div></div>

                <p>The following SQL drops the "Brazil Customers" view:</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">DROP</span> <span class="sqlkeywordcolor" style="color:mediumblue">VIEW</span> [Brazil Customers]; </span></div>

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
