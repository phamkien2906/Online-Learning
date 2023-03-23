<%-- 
    Document   : lesson47
    Created on : Feb 4, 2023, 9:12:59 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title><link rel="stylesheet" href="../css/mystyle.css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.jss"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>    </head>
</head>
<body>
    <jsp:include page="../Menu_lesson/header_menu.jsp"></jsp:include>
        <div class="w3-col l10 m12" class="main" style="margin: 0 100px;padding-top: 0px"> 
            <h1>SQL <span class="color_h1">ALTER TABLE</span> Statement</h1>

            <hr>
            <h2>SQL ALTER TABLE Statement</h2>
            <p>The <code class="w3-codespan">ALTER TABLE</code> statement is used to add, delete, or modify columns in an existing table.</p>
            <p>The <code class="w3-codespan">ALTER TABLE</code> statement is also used to add and drop various constraints on 
                an existing table.</p>
            <hr>

            <h2>ALTER TABLE - ADD Column</h2>
            <p>To add a column in a table, use the following syntax:</p>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">ALTER</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> <em>table_name</em><br>
                        <span class="sqlkeywordcolor" style="color:mediumblue">ADD</span> <em>column_name datatype</em>; </span></div></div>

            <p>The following SQL adds an "Email" column to the "Customers" table:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                        </span>  <span class="sqlkeywordcolor" style="color:mediumblue">ALTER</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> Customers<br><span class="sqlkeywordcolor" style="color:mediumblue">ADD</span> Email varchar(<span class="sqlnumbercolor" style="color:">255</span>);<span class="sqlnumbercolor" style="color:">
                        </span> </span></div>
            </div>
            <hr>

            <h2>ALTER TABLE - DROP COLUMN</h2>
            <p>To delete a column in a table, use the following syntax (notice that some 
                database systems don't allow deleting a column):</p>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">ALTER</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> <em>table_name</em><br>
                        <span class="sqlkeywordcolor" style="color:mediumblue">DROP</span> <span class="sqlkeywordcolor" style="color:mediumblue">COLUMN</span> <em>column_name</em>; </span></div></div>

            <p>The following SQL deletes the "Email" column from the "Customers" table:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                        </span>  <span class="sqlkeywordcolor" style="color:mediumblue">ALTER</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> Customers<br><span class="sqlkeywordcolor" style="color:mediumblue">DROP</span> <span class="sqlkeywordcolor" style="color:mediumblue">COLUMN</span> Email;<span class="sqlnumbercolor" style="color:">
                        </span> </span></div>
            </div>
            <hr>

            <h2>ALTER TABLE - RENAME COLUMN</h2>
            <p>To rename a column in a table, use the following syntax:</p>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">ALTER</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> <em>table_name</em><br><span class="sqlnumbercolor" style="color:">
                        </span>  RENAME <span class="sqlkeywordcolor" style="color:mediumblue">COLUMN</span> <em>old_name</em> <span class="sqlkeywordcolor" style="color:mediumblue">to</span> <em>new_name</em>; </span></div></div>

            <hr>

            <h2>ALTER TABLE - ALTER/MODIFY DATATYPE</h2>
            <p>To change the data type of a column in a table, use the following syntax:</p>
            <p><b>SQL Server / MS Access:</b></p>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">ALTER</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> <em>table_name</em><br>
                        <span class="sqlkeywordcolor" style="color:mediumblue">ALTER</span> <span class="sqlkeywordcolor" style="color:mediumblue">COLUMN</span> <em>column_name datatype</em>; </span></div></div>

            <p><b>My SQL / Oracle (prior version 10G):</b></p>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">ALTER</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> <em>table_name</em><br>
                        <span class="sqlkeywordcolor" style="color:mediumblue">MODIFY</span> <span class="sqlkeywordcolor" style="color:mediumblue">COLUMN</span> <em>column_name datatype</em>; </span></div></div>

            <p><b>Oracle 10G and later:</b></p>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">ALTER</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> <em>table_name</em><br>
                        <span class="sqlkeywordcolor" style="color:mediumblue">MODIFY</span> <em>column_name datatype</em>; </span></div></div>
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

            <h2>SQL ALTER TABLE Example</h2>
            <p>Look at the "Persons" table:</p>
            <div class="w3-responsive">
                <table class="ws-table-all notranslate">
                    <tbody><tr>
                            <th>ID</th>
                            <th>LastName</th>
                            <th>FirstName</th>
                            <th>Address</th>
                            <th>City</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>Hansen</td>
                            <td>Ola</td>
                            <td>Timoteivn 10</td>
                            <td>Sandnes</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Svendson</td>
                            <td>Tove</td>
                            <td>Borgvn 23</td>
                            <td>Sandnes</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Pettersen</td>
                            <td>Kari</td>
                            <td>Storgt 20</td>
                            <td>Stavanger</td>
                        </tr>
                    </tbody></table>
            </div>
            <p>Now we want to add a column named "DateOfBirth" in the "Persons" table.</p>
            <p>We use the following SQL statement:</p>

            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">ALTER</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> Persons<br>
                        <span class="sqlkeywordcolor" style="color:mediumblue">ADD</span> DateOfBirth date; </span></div></div>

            <p>Notice that the new column, "DateOfBirth", is of type date and is going to hold a 
                date. The data type specifies what type of data the column can hold. For a complete 
                reference of all the data types available in MS Access, MySQL, and SQL Server, 
                go to our complete <a href="sql_datatypes.asp">Data Types reference</a>.</p>

            <p>The "Persons" table will now look like this:</p>
            <div class="w3-responsive">
                <table class="ws-table-all notranslate">
                    <tbody><tr>
                            <th>ID</th>
                            <th>LastName</th>
                            <th>FirstName</th>
                            <th>Address</th>
                            <th>City</th>
                            <th>DateOfBirth</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>Hansen</td>
                            <td>Ola</td>
                            <td>Timoteivn 10</td>
                            <td>Sandnes</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Svendson</td>
                            <td>Tove</td>
                            <td>Borgvn 23</td>
                            <td>Sandnes</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Pettersen</td>
                            <td>Kari</td>
                            <td>Storgt 20</td>
                            <td>Stavanger</td>
                            <td>&nbsp;</td>
                        </tr>
                    </tbody></table>
            </div>
            <hr>

            <h2>Change Data Type Example</h2>
            <p>Now we want to change the data type of the column named "DateOfBirth" in the "Persons" table.</p>
            <p>We use the following SQL statement:</p>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">ALTER</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> Persons<br>
                        <span class="sqlkeywordcolor" style="color:mediumblue">ALTER</span> <span class="sqlkeywordcolor" style="color:mediumblue">COLUMN</span> DateOfBirth year; </span></div></div>

            <p>Notice that the "DateOfBirth" column is now of type year and is going to hold a year in a two- or four-digit format.</p>
            <hr>

            <h2>DROP COLUMN Example</h2>
            <p>Next, we want to delete the column named "DateOfBirth" in the "Persons" table.</p>
            <p>We use the following SQL statement:</p>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">ALTER</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> Persons<br>
                        <span class="sqlkeywordcolor" style="color:mediumblue">DROP</span> <span class="sqlkeywordcolor" style="color:mediumblue">COLUMN</span> DateOfBirth; </span></div></div>

            <p>The "Persons" table will now look like this:</p>
            <div class="w3-responsive">
                <table class="ws-table-all notranslate">
                    <tbody><tr>
                            <th>ID</th>
                            <th>LastName</th>
                            <th>FirstName</th>
                            <th>Address</th>
                            <th>City</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>Hansen</td>
                            <td>Ola</td>
                            <td>Timoteivn 10</td>
                            <td>Sandnes</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Svendson</td>
                            <td>Tove</td>
                            <td>Borgvn 23</td>
                            <td>Sandnes</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Pettersen</td>
                            <td>Kari</td>
                            <td>Storgt 20</td>
                            <td>Stavanger</td>
                        </tr>
                    </tbody></table>
            </div>
            <hr>


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
