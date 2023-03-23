<%-- 
    Document   : lesson37
    Created on : Feb 4, 2023, 2:02:12 AM
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
        <div class="w3-col l10 m12" class="main" style="margin: 0 100px;padding-top: 0px">         <h1>SQL <span class="color_h1">Comments</span></h1>

            <hr>
            <h2>SQL Comments</h2>
            <p class="intro">Comments are used to explain sections of SQL statements, or to prevent execution 
                of SQL statements.</p>

            <div class="w3-panel w3-note">
                <p><strong>Note: The examples in this chapter will not work in Firefox and 
                        Microsoft Edge!</strong></p>
                <p>Comments are not supported in Microsoft Access databases. Firefox and Microsoft Edge are using Microsoft Access database in our examples.</p>
            </div>

            <hr>
            <h2>Single Line Comments</h2>
            <p>Single line comments start with <code class="w3-codespan">--</code>.</p>
            <p>Any text between -- and the end of the line will be ignored (will not be executed).</p>

            <p>The following example uses a single-line comment as an explanation:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                        </span><span class="commentcolor" style="color:green">--Select all:<br></span>
                        <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers;<span class="sqlnumbercolor" style="color:">
                        </span> </span></div>
                <a target="_blank" href="trysql.asp?filename=trysql_comment_single_1" class="w3-btn w3-margin-bottom">
                    Try it Yourself »</a>
            </div>

            <p>The following example uses a single-line comment to ignore the end of a line:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers <span class="commentcolor" style="color:green">-- WHERE City='Berlin';
                        </span></span></div>
                <a target="_blank" href="trysql.asp?filename=trysql_comment_single_2" class="w3-btn w3-margin-bottom">
                    Try it Yourself »</a>
            </div>

            <p>The following example uses a single-line comment to ignore a statement:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                        </span><span class="commentcolor" style="color:green">--SELECT * FROM Customers;<br></span>
                        <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Products;<span class="sqlnumbercolor" style="color:">
                        </span> </span></div>
                <a target="_blank" href="trysql.asp?filename=trysql_comment_single_3" class="w3-btn w3-margin-bottom">
                    Try it Yourself »</a>
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

            <h2>Multi-line Comments</h2>
            <p>Multi-line comments start with <code class="w3-codespan">/*</code> and end with 
                <code class="w3-codespan">*/</code>.</p>
            <p>Any text between /* and */ will be ignored.</p>

            <p>The following example uses a multi-line comment as an explanation:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                        </span><span class="commentcolor" style="color:green">/*Select all the columns<br>
                            of all the records<br>
                            in the Customers table:*/</span><br>
                        <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers;<span class="sqlnumbercolor" style="color:">
                        </span> </span></div>

            </div>

            <p>The following example uses a multi-line comment to ignore many statements:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                        </span><span class="commentcolor" style="color:green">/*SELECT * FROM Customers;<br>
                            SELECT * FROM Products;<br>
                            SELECT * FROM Orders;<br>
                            SELECT * FROM Categories;*/</span><br>
                        <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Suppliers;<span class="sqlnumbercolor" style="color:">
                        </span> </span></div>

            </div>
            <p>To ignore just a part of a statement, also use the /* */ comment.</p>

            <p>The following example uses a comment to ignore part of a line:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> CustomerName, <span class="commentcolor" style="color:green">/*City,*/</span> Country <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers;<span class="sqlnumbercolor" style="color:">
                        </span> </span></div>

            </div>

            <p>The following example uses a comment to ignore part of a statement:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> (CustomerName <span class="sqlkeywordcolor" style="color:mediumblue">LIKE</span> <span class="sqlstringcolor" style="color:brown">'L%'</span><br>
                        <span class="sqlkeywordcolor" style="color:mediumblue">OR</span> CustomerName <span class="sqlkeywordcolor" style="color:mediumblue">LIKE</span> <span class="sqlstringcolor" style="color:brown">'R%'</span> <span class="commentcolor" style="color:green">/*OR CustomerName LIKE 'S%'<br>
                            OR CustomerName LIKE 'T%'*/</span> <span class="sqlkeywordcolor" style="color:mediumblue">OR</span> CustomerName <span class="sqlkeywordcolor" style="color:mediumblue">LIKE</span> <span class="sqlstringcolor" style="color:brown">'W%'</span>)<br>
                        <span class="sqlkeywordcolor" style="color:mediumblue">AND</span> Country=<span class="sqlstringcolor" style="color:brown">'USA'</span><br>
                        <span class="sqlkeywordcolor" style="color:mediumblue">ORDER</span> <span class="sqlkeywordcolor" style="color:mediumblue">BY</span> CustomerName; </span></div>

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
