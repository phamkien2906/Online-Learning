<%-- 
    Document   : leson58
    Created on : Feb 4, 2023, 9:34:38 AM
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
                <h1>SQL <span class="color_h1">Injection</span></h1>

                <hr>

                <h2>SQL Injection</h2>
                <p>SQL injection is a code injection technique that might destroy your database.</p>
                <p>SQL injection is one of the most common web hacking techniques.</p>
                <p>SQL injection is the placement of malicious code in SQL statements, via web page input.</p>
                <hr>

                <h2>SQL in Web Pages</h2>
                <p>SQL injection usually occurs when you ask a user for input, like their 
                    username/userid, and instead of a name/id, the user gives you an SQL statement 
                    that you will <strong>unknowingly</strong> run on your database.</p>
                <p>Look at the following example which creates a <code class="w3-codespan">
                        SELECT</code> statement by adding a variable 
                    (txtUserId) to a select string. The variable is fetched from user input 
                    (getRequestString):</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate">
                        txtUserId = getRequestString("UserId");<br>txtSQL = "SELECT *
                        FROM Users WHERE UserId = " + txtUserId;</div>
                </div>
                <p>The rest of this chapter describes the potential dangers of using user input in SQL statements.</p>
                <hr>

                <h2>SQL Injection Based on 1=1 is Always True</h2>
                <p>Look at the example above again. The original purpose of the code was to create an SQL statement to select a 
                    user, with a given user id.</p>
                <p>If there is nothing to prevent a user from entering "wrong" input, the user 
                    can enter some "smart" input like this:</p>

                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Users <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> UserId = <span class="sqlnumbercolor" style="color:">105</span> <span class="sqlkeywordcolor" style="color:mediumblue">OR</span> <span class="sqlnumbercolor" style="color:">1</span>=<span class="sqlnumbercolor" style="color:">1</span>; </span></div>
                </div>

                <p>The SQL above is valid and will return ALL rows from the "Users" table, since <strong>
                        OR 1=1</strong> is always TRUE.</p>
                <p>Does the example above look dangerous? What if the "Users" table contains names and passwords?</p>
                <p>The SQL statement above is much the same as this:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> UserId, Name, Password
                            <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Users <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> UserId = <span class="sqlnumbercolor" style="color:">105</span> <span class="sqlkeywordcolor" style="color:mediumblue">or</span> <span class="sqlnumbercolor" style="color:">1</span>=<span class="sqlnumbercolor" style="color:">1</span>; </span></div>
                </div>
                <p>A hacker might get access to all the user names and passwords in a database, by 
                    simply inserting 
                    105 OR 1=1 into the input field.</p>
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

                <h2>SQL Injection Based on&nbsp;""="" is Always True</h2>

                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate">
                        uName = getRequestString("username");<br>uPass = getRequestString("userpassword");<br>
                        <br>sql = 'SELECT * FROM Users WHERE Name ="' + uName + '" AND Pass ="' + uPass + 
                        '"'</div>
                </div>

                <div class="w3-example">
                    <h3>Result</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Users <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> Name =<span class="sqlstringcolor" style="color:brown">"John Doe"</span> <span class="sqlkeywordcolor" style="color:mediumblue">AND</span> Pass =<span class="sqlstringcolor" style="color:brown">"myPass"</span> </span></div>
                </div>

                <p>
                    A hacker might get access to user names and passwords&nbsp;in a database by 
                    simply inserting " OR ""=" into the user name or password text box:</p>


                <p>The code at the server will create a valid SQL statement like this:</p>
                <div class="w3-example">
                    <h3>Result</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Users <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> Name =<span class="sqlstringcolor" style="color:brown">""</span> <span class="sqlkeywordcolor" style="color:mediumblue">or</span> <span class="sqlstringcolor" style="color:brown">""</span>=<span class="sqlstringcolor" style="color:brown">""</span> <span class="sqlkeywordcolor" style="color:mediumblue">AND</span> Pass =<span class="sqlstringcolor" style="color:brown">""</span> <span class="sqlkeywordcolor" style="color:mediumblue">or</span> <span class="sqlstringcolor" style="color:brown">""</span>=<span class="sqlstringcolor" style="color:brown">""</span> </span></div>
                </div>
                <p>The SQL above is valid and will return all rows from the "Users" table, 
                    since <strong>OR ""=""</strong> is always TRUE.</p>
                <hr>

                <h2>SQL Injection Based on Batched SQL Statements&nbsp;</h2>
                <p>Most databases support batched SQL statement.</p>
                <p>A batch of SQL statements is a group of two or more SQL statements, separated by semicolons.</p>
                <p>The SQL statement below will return all rows from the "Users" table, then delete the 
                    "Suppliers" table.</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Users; <span class="sqlkeywordcolor" style="color:mediumblue">DROP</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> Suppliers
                        </span></div>
                </div>
                <p>Look at the following example: </p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate">
                        txtUserId = getRequestString("UserId");<br>txtSQL = "SELECT *
                        FROM Users WHERE UserId = " + txtUserId;</div>
                </div>


                <div class="w3-example">
                    <h3>Result</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Users <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> 
                            UserId = <span class="sqlnumbercolor" style="color:">105</span>; <span class="sqlkeywordcolor" style="color:mediumblue">DROP</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> Suppliers; </span></div>
                </div>
                <hr>

                <h2>Use SQL Parameters for Protection</h2>
                <p>To protect a web site from SQL injection, you can use SQL parameters.</p>
                <p>SQL parameters are values that are added to an SQL query at execution time, in a controlled manner.</p>
                <div class="w3-example">
                    <h3>ASP.NET Razor Example</h3>
                    <div class="w3-code notranslate">
                        txtUserId = getRequestString("UserId");<br>txtSQL = "SELECT *
                        FROM Users WHERE UserId = @0";<br>db.Execute(txtSQL,txtUserId);</div>
                </div>
                <p>Note that parameters are represented in the SQL statement by a @ marker.</p>
                <p>The SQL engine checks each parameter to ensure that it is correct for its column
                    and are treated literally, and not as part of the SQL to be executed.</p>
                <div class="w3-example">
                    <h3>Another Example</h3>
                    <div class="w3-code notranslate">
                        txtNam = getRequestString("CustomerName");<br>txtAdd = getRequestString("Address");<br>txtCit = getRequestString("City");<br>
                        txtSQL = "INSERT INTO Customers (CustomerName,Address,City) Values(@0,@1,@2)";<br>db.Execute(txtSQL,txtNam,txtAdd,txtCit);</div>
                </div>

                <hr>

                <h2>Examples</h2>
                <p>The following examples shows how to build parameterized queries in some common web languages.</p>
                <p>SELECT STATEMENT IN ASP.NET:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate">
                        txtUserId = getRequestString("UserId");<br>
                        sql = "SELECT * FROM Customers WHERE CustomerId = @0";<br>command = new SqlCommand(sql);<br>command.Parameters.AddWithValue("@0",txtUserId);<br>
                        command.ExecuteReader();</div>
                </div>
                <p>INSERT INTO STATEMENT IN ASP.NET:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate">
                        txtNam = getRequestString("CustomerName");<br>txtAdd = getRequestString("Address");<br>txtCit = getRequestString("City");<br>
                        txtSQL = "INSERT INTO Customers (CustomerName,Address,City) Values(@0,@1,@2)";<br>command = new SqlCommand(txtSQL);<br>
                        command.Parameters.AddWithValue("@0",txtNam);<br>
                        command.Parameters.AddWithValue("@1",txtAdd);<br>
                        command.Parameters.AddWithValue("@2",txtCit);<br>command.ExecuteNonQuery();</div>
                </div>

                <p>INSERT INTO STATEMENT IN PHP:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate">
                        $stmt = $dbh-&gt;prepare("INSERT INTO Customers (CustomerName,Address,City) <br>
                        VALUES (:nam, :add, :cit)");<br>$stmt-&gt;bindParam(':nam', $txtNam);<br>
                        $stmt-&gt;bindParam(':add', $txtAdd);<br>$stmt-&gt;bindParam(':cit', $txtCit);<br>
                        $stmt-&gt;execute();</div>
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
