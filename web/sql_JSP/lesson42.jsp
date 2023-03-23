<%-- 
    Document   : lesson42
    Created on : Feb 4, 2023, 2:09:47 AM
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
        <div class="w3-col l10 m12" class="main" style="margin: 0 100px;padding-top: 0px"> 
            <h1>SQL <span class="color_h1">CREATE TABLE</span> Statement</h1>

            <hr>
            <h2>The SQL CREATE TABLE Statement</h2>
            <p>The <code class="w3-codespan">CREATE TABLE</code> statement is used to create a new table in a database.</p>

            <h3>Syntax</h3>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">CREATE</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> <em>table_name </em>(<br><span class="sqlnumbercolor" style="color:">
                        </span> <em>&nbsp;&nbsp;&nbsp; column1 datatype</em>,<br><span class="sqlnumbercolor" style="color:">
                        </span> <em>&nbsp;&nbsp;&nbsp; column2 datatype</em>,<br><span class="sqlnumbercolor" style="color:">
                        </span> <em>&nbsp;&nbsp;&nbsp; column3 datatype</em>,<br><span class="sqlnumbercolor" style="color:">
                        </span>&nbsp;&nbsp;
                        ....<br><span class="sqlnumbercolor" style="color:">
                        </span>); </span></div>
            </div>

            <p>The column parameters specify the names of the columns of the table.</p>
            <p>The datatype parameter specifies the type of data the column can hold (e.g. varchar, integer, date, etc.).</p>

            <p><strong>Tip:</strong> For an overview of the available data types, 
                go to our complete <a href="sql_datatypes.asp">Data Types Reference</a>.</p>
            <hr>

            <h2>SQL CREATE TABLE Example</h2>
            <p>The following example creates a table called "Persons" that contains five columns: PersonID, LastName, FirstName, 
                Address, and City:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">CREATE</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> Persons
                        (<br><span class="sqlnumbercolor" style="color:">
                        </span>&nbsp;&nbsp;&nbsp;
                        PersonID int,<br><span class="sqlnumbercolor" style="color:">
                        </span>&nbsp;&nbsp;&nbsp;
                        LastName varchar(<span class="sqlnumbercolor" style="color:">255</span>),<br><span class="sqlnumbercolor" style="color:">
                        </span>&nbsp;&nbsp;&nbsp;
                        FirstName varchar(<span class="sqlnumbercolor" style="color:">255</span>),<br><span class="sqlnumbercolor" style="color:">
                        </span>&nbsp;&nbsp;&nbsp;
                        Address varchar(<span class="sqlnumbercolor" style="color:">255</span>),<br><span class="sqlnumbercolor" style="color:">
                        </span>&nbsp;&nbsp;&nbsp;
                        City varchar(<span class="sqlnumbercolor" style="color:">255</span>) <br><span class="sqlnumbercolor" style="color:">
                        </span>);<span class="sqlnumbercolor" style="color:">
                        </span> </span></div>
            </div>
            <p>The PersonID column is of type int and will hold an integer.</p>
            <p>The LastName, FirstName, Address, and City columns are of
                type varchar and will hold characters, and the maximum length for these fields 
                is 255 characters.</p>

            <p>The empty "Persons" table will now look like this:</p>
            <div class="w3-responsive">
                <table class="ws-table-all notranslate">
                    <tbody><tr>
                            <th>PersonID</th>
                            <th>LastName</th>
                            <th>FirstName</th>
                            <th>Address</th>
                            <th>City</th>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </tbody></table>
            </div>
            <p><strong>Tip:</strong> The empty "Persons" table can now be filled with data with the 
                SQL <a href="sql_insert.asp">INSERT INTO</a> statement.</p>
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

            <h2>Create Table Using Another Table</h2>
            <p>A copy of an existing table can also be created using 
                <code class="w3-codespan">CREATE TABLE</code>.</p>
            <p>The new table gets the same column definitions. All columns or specific 
                columns can be selected.</p>
            <p>If you create a new table using an existing table, the new table will be 
                filled with the existing values from the old table.</p>

            <h3>Syntax</h3>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">CREATE</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> <em>new_table_name</em> <span class="sqlkeywordcolor" style="color:mediumblue">AS</span><br>&nbsp;&nbsp;&nbsp; <span class="sqlnumbercolor" style="color:">
                        </span>  <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> <em>column1, column2,...</em><br>&nbsp;&nbsp;&nbsp; <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> <em>
                            existing_table_name</em><br>&nbsp;&nbsp;&nbsp; <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> ....; </span></div>
            </div>

            <p>The following SQL creates a new table called "TestTables" (which is 
                a copy of the "Customers" table):&nbsp;</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                        </span>  <span class="sqlkeywordcolor" style="color:mediumblue">CREATE</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> TestTable <span class="sqlkeywordcolor" style="color:mediumblue">AS</span><br><span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> customername, contactname<br><span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> <span class="sqlnumbercolor" style="color:">
                        </span>  customers;  </span></div>
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
