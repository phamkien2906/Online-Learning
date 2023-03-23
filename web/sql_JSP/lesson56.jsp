<%-- 
    Document   : lesson56
    Created on : Feb 4, 2023, 9:29:19 AM
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
                <h1>SQL <span class="color_h1">AUTO INCREMENT</span> Field</h1>

                <hr>

                <h2>AUTO INCREMENT Field</h2>
                <p>Auto-increment allows a unique number to be generated automatically when a new record is inserted into a table.</p>
                <p>Often this is the primary key field that we would like to be created automatically every time a new record is inserted.</p>
                <hr>

                <h2>Syntax for MySQL</h2>
                <p>The following SQL statement defines the "Personid" column to be an auto-increment primary key field in the "Persons" table:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">CREATE</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> Persons
                            (<br><span class="sqlnumbercolor" style="color:">
                            </span> &nbsp;&nbsp;&nbsp;<span class="sqlnumbercolor" style="color:">
                            </span>  Personid int <span class="sqlkeywordcolor" style="color:mediumblue">NOT</span> <span class="sqlkeywordcolor" style="color:mediumblue">NULL</span> AUTO_INCREMENT,<br><span class="sqlnumbercolor" style="color:">
                            </span>&nbsp;&nbsp;&nbsp;
                            LastName varchar(<span class="sqlnumbercolor" style="color:">255</span>) <span class="sqlkeywordcolor" style="color:mediumblue">NOT</span> <span class="sqlkeywordcolor" style="color:mediumblue">NULL</span>,<br><span class="sqlnumbercolor" style="color:">
                            </span>&nbsp;&nbsp;&nbsp;
                            FirstName varchar(<span class="sqlnumbercolor" style="color:">255</span>),<br><span class="sqlnumbercolor" style="color:">
                            </span>&nbsp;&nbsp;&nbsp; Age int,<br><span class="sqlnumbercolor" style="color:">
                            </span>&nbsp;&nbsp;&nbsp;
                            <span class="sqlkeywordcolor" style="color:mediumblue">PRIMARY</span> <span class="sqlkeywordcolor" style="color:mediumblue">KEY</span> (Personid)<br><span class="sqlnumbercolor" style="color:">
                            </span>); </span></div></div>

                <p>MySQL uses the <code class="w3-codespan">AUTO_INCREMENT</code> keyword to perform an auto-increment feature.</p>
                <p>By default, the starting value for <code class="w3-codespan">AUTO_INCREMENT</code> is 1, and it will increment by 1 for each new record.</p>
                <p>To let the <code class="w3-codespan">AUTO_INCREMENT</code> sequence start with another value, use the following SQL statement:</p>

                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">ALTER</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> Persons AUTO_INCREMENT=<span class="sqlnumbercolor" style="color:">100</span>; </span></div></div>

                <p>To insert a new record into the "Persons" table, we will NOT have to specify a value for the "Personid"
                    column (a unique value will be added automatically):</p>

                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">INSERT</span> <span class="sqlkeywordcolor" style="color:mediumblue">INTO</span> Persons (FirstName,LastName)<br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">VALUES</span> (<span class="sqlstringcolor" style="color:brown">'Lars'</span>,<span class="sqlstringcolor" style="color:brown">'Monsen'</span>); </span></div></div>

                <p>The SQL statement above would insert a new record into the "Persons" table. The 
                    "Personid" column would be assigned a unique value. The "FirstName" column would be set to 
                    "Lars" and the "LastName" column would be set to "Monsen".</p>
                <hr>

                <h2>Syntax for SQL Server</h2>
                <p>The following SQL statement defines the "Personid" column to be an auto-increment primary key field in the "Persons" table:</p>

                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">CREATE</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> Persons
                            (<br><span class="sqlnumbercolor" style="color:">
                            </span> &nbsp;&nbsp;&nbsp;<span class="sqlnumbercolor" style="color:">
                            </span>  Personid int <span class="sqlkeywordcolor" style="color:mediumblue">IDENTITY</span>(<span class="sqlnumbercolor" style="color:">1</span>,<span class="sqlnumbercolor" style="color:">1</span>) <span class="sqlkeywordcolor" style="color:mediumblue">PRIMARY</span> <span class="sqlkeywordcolor" style="color:mediumblue">KEY</span>,<br><span class="sqlnumbercolor" style="color:">
                            </span>&nbsp;&nbsp;&nbsp;
                            LastName varchar(<span class="sqlnumbercolor" style="color:">255</span>) <span class="sqlkeywordcolor" style="color:mediumblue">NOT</span> <span class="sqlkeywordcolor" style="color:mediumblue">NULL</span>,<br><span class="sqlnumbercolor" style="color:">
                            </span>&nbsp;&nbsp;&nbsp;
                            FirstName varchar(<span class="sqlnumbercolor" style="color:">255</span>),<br><span class="sqlnumbercolor" style="color:">
                            </span>&nbsp;&nbsp;&nbsp;
                            Age int<br><span class="sqlnumbercolor" style="color:">
                            </span>); </span></div></div>

                <p>The MS SQL Server uses the <code class="w3-codespan">IDENTITY</code> keyword to perform an auto-increment feature. </p>
                <p>In the example above, the starting value for <code class="w3-codespan">
                        IDENTITY</code> is 1, and it will increment by 1 for each new record.</p>
                <p><strong>Tip:</strong> To specify that the "Personid" column should start at value 10 and increment by 5, change 
                    it to <code class="w3-codespan">IDENTITY(10,5)</code>.</p>
                <p>To insert a new record into the "Persons" table, we will NOT have to specify a value for the "Personid" column (a unique value will be added automatically):</p>

                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">INSERT</span> <span class="sqlkeywordcolor" style="color:mediumblue">INTO</span> Persons (FirstName,LastName)<br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">VALUES</span> (<span class="sqlstringcolor" style="color:brown">'Lars'</span>,<span class="sqlstringcolor" style="color:brown">'Monsen'</span>); </span></div></div>

                <p>The SQL statement above would insert a new record into the "Persons" table. The 
                    "Personid" column would be assigned a unique value. The "FirstName" column would be set to 
                    "Lars" and the "LastName" column would be set to "Monsen".</p>
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

                <h2>Syntax for Access</h2>
                <p>The following SQL statement defines the "Personid" column to be an auto-increment primary key field in the "Persons" table:</p>

                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">CREATE</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> Persons
                            (<br><span class="sqlnumbercolor" style="color:">
                            </span> &nbsp;&nbsp;&nbsp;<span class="sqlnumbercolor" style="color:">
                            </span>  Personid AUTOINCREMENT <span class="sqlkeywordcolor" style="color:mediumblue">PRIMARY</span> <span class="sqlkeywordcolor" style="color:mediumblue">KEY</span>,<br><span class="sqlnumbercolor" style="color:">
                            </span>&nbsp;&nbsp;&nbsp;
                            LastName varchar(<span class="sqlnumbercolor" style="color:">255</span>) <span class="sqlkeywordcolor" style="color:mediumblue">NOT</span> <span class="sqlkeywordcolor" style="color:mediumblue">NULL</span>,<br><span class="sqlnumbercolor" style="color:">
                            </span>&nbsp;&nbsp;&nbsp;
                            FirstName varchar(<span class="sqlnumbercolor" style="color:">255</span>),<br><span class="sqlnumbercolor" style="color:">
                            </span>&nbsp;&nbsp;&nbsp;
                            Age int<br><span class="sqlnumbercolor" style="color:">
                            </span>); </span></div></div>

                <p>The MS Access uses the <code class="w3-codespan">AUTOINCREMENT</code> keyword to perform an auto-increment feature. </p>
                <p>By default, the starting value for <code class="w3-codespan">AUTOINCREMENT</code> is 1, and it will increment by 1 for each new record.</p>
                <p><strong>Tip:</strong> To specify that the "Personid" column should start at value 10 and increment by 5, change the autoincrement to <code class="w3-codespan">
                        AUTOINCREMENT(10,5)</code>.</p>
                <p>To insert a new record into the "Persons" table, we will NOT have to specify a value for the "Personid" column (a unique value will be added 
                    automatically):</p>

                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">INSERT</span> <span class="sqlkeywordcolor" style="color:mediumblue">INTO</span> Persons (FirstName,LastName)<br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">VALUES</span> (<span class="sqlstringcolor" style="color:brown">'Lars'</span>,<span class="sqlstringcolor" style="color:brown">'Monsen'</span>); </span></div></div>

                <p>The SQL statement above would insert a new record into the "Persons" table. The 
                    "Personid" column would be assigned a unique value. The "FirstName" column would be set to 
                    "Lars" and the "LastName" column would be set to "Monsen".</p>
                <hr>

                <h2>Syntax for Oracle</h2>
                <p>In Oracle the code is a little bit more tricky.</p>
                <p>You will have to create an auto-increment field with the sequence object (this object generates a number sequence).</p>
                <p>Use the following <code class="w3-codespan">CREATE SEQUENCE</code> syntax:</p>

                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">CREATE</span> SEQUENCE seq_person<br>
                            MINVALUE <span class="sqlnumbercolor" style="color:">1</span><br>
                            START <span class="sqlkeywordcolor" style="color:mediumblue">WITH</span> <span class="sqlnumbercolor" style="color:">1</span><br>
                            INCREMENT <span class="sqlkeywordcolor" style="color:mediumblue">BY</span> <span class="sqlnumbercolor" style="color:">1</span><br>
                            CACHE <span class="sqlnumbercolor" style="color:">10</span>;  </span></div></div>

                <p>The code above creates a sequence object called seq_person, that starts with 1 and will increment by 1.
                    It will also cache up to 10 values for performance. The cache option specifies how many sequence values will be stored in memory for faster access.</p>
                <p>To insert a new record into the "Persons" table, we will have to use the nextval function (this function retrieves the next value from seq_person 
                    sequence):</p>

                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">INSERT</span> <span class="sqlkeywordcolor" style="color:mediumblue">INTO</span> Persons (Personid,FirstName,LastName)<br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">VALUES</span> (seq_person.nextval,<span class="sqlstringcolor" style="color:brown">'Lars'</span>,<span class="sqlstringcolor" style="color:brown">'Monsen'</span>); </span></div></div>

                <p>The SQL statement above would insert a new record into the "Persons" table. The "Personid" column would be assigned the next number from the seq_person 
                    sequence. The "FirstName" column would be set to "Lars" and the "LastName" column would be set to "Monsen".</p>
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
