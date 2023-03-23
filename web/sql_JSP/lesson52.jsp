<%-- 
    Document   : lesson52
    Created on : Feb 4, 2023, 9:24:03 AM
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
                <h1>SQL <span class="color_h1">FOREIGN KEY</span> Constraint</h1>

                <hr>
                <h2>SQL FOREIGN KEY Constraint</h2>
                <p>The <code class="w3-codespan">FOREIGN KEY</code> constraint is used to prevent actions that would destroy links between tables.</p>
                <p>A <code class="w3-codespan">FOREIGN KEY</code> is a field (or collection of fields) in one table, that refers to 
                    the <code class="w3-codespan"><a href="sql_primarykey.asp">PRIMARY KEY</a></code> in another table.</p>
                <p>The table with the foreign key is called the child table, and the table 
                    with the primary key is called the referenced or parent table.</p>
                <p>Look at the following two tables:</p>
                <h3>Persons Table</h3>
                <div class="w3-responsive">
                    <table class="ws-table-all notranslate">
                        <tbody><tr>
                                <th>PersonID</th>
                                <th>LastName</th>
                                <th>FirstName</th>
                                <th>Age</th>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>Hansen</td>
                                <td>Ola</td>
                                <td>30</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Svendson</td>
                                <td>Tove</td>
                                <td>23</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>Pettersen</td>
                                <td>Kari</td>
                                <td>20</td>
                            </tr>
                        </tbody></table>
                </div>
                <h3>Orders Table</h3>
                <table class="ws-table-all notranslate" style="width:50%">
                    <tbody><tr>
                            <th>OrderID</th>
                            <th>OrderNumber</th>
                            <th>PersonID</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>77895</td>
                            <td>3</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>44678</td>
                            <td>3</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>22456</td>
                            <td>2</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>24562</td>
                            <td>1</td>
                        </tr>
                    </tbody></table>
                <p>Notice that the "PersonID" column in the "Orders" table points to the "PersonID" column in the "Persons" table.</p>
                <p>The "PersonID" column in the "Persons" table is the <code class="w3-codespan">PRIMARY KEY</code> in the "Persons" table.</p>
                <p>The "PersonID" column in the "Orders" table is a <code class="w3-codespan">
                        FOREIGN KEY</code> in the "Orders" table.</p>
                <p>The <code class="w3-codespan">FOREIGN KEY</code> constraint prevents invalid data from being inserted into the foreign key column,
                    because it has to be one of the values contained in the parent table.</p>
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

                <h2>SQL FOREIGN KEY on CREATE TABLE</h2>
                <p>The following SQL creates a <code class="w3-codespan">FOREIGN KEY</code> on the "PersonID" column when the "Orders" table is created:</p>

                <p><b>MySQL:</b></p>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">CREATE</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> Orders
                            (<br><span class="sqlnumbercolor" style="color:">
                            </span>&nbsp;&nbsp;&nbsp;
                            OrderID int <span class="sqlkeywordcolor" style="color:mediumblue">NOT</span> <span class="sqlkeywordcolor" style="color:mediumblue">NULL</span>,<br><span class="sqlnumbercolor" style="color:">
                            </span>&nbsp;&nbsp;&nbsp;
                            OrderNumber int <span class="sqlkeywordcolor" style="color:mediumblue">NOT</span> <span class="sqlkeywordcolor" style="color:mediumblue">NULL</span>,<br><span class="sqlnumbercolor" style="color:">
                            </span>&nbsp;&nbsp;&nbsp;
                            PersonID int,<br><span class="sqlnumbercolor" style="color:">
                            </span>&nbsp;&nbsp;&nbsp;
                            <span class="sqlkeywordcolor" style="color:mediumblue">PRIMARY</span> <span class="sqlkeywordcolor" style="color:mediumblue">KEY</span> (OrderID),<br><span class="sqlnumbercolor" style="color:">
                            </span>&nbsp;&nbsp;&nbsp;
                            <span class="sqlkeywordcolor" style="color:mediumblue">FOREIGN</span> <span class="sqlkeywordcolor" style="color:mediumblue">KEY</span> (PersonID) <span class="sqlkeywordcolor" style="color:mediumblue">REFERENCES</span> Persons(PersonID)<br><span class="sqlnumbercolor" style="color:">
                            </span>); </span></div></div>

                <p><b>SQL Server / Oracle / MS Access:</b></p>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">CREATE</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> Orders
                            (<br><span class="sqlnumbercolor" style="color:">
                            </span>&nbsp;&nbsp;&nbsp;
                            OrderID int <span class="sqlkeywordcolor" style="color:mediumblue">NOT</span> <span class="sqlkeywordcolor" style="color:mediumblue">NULL</span> <span class="sqlkeywordcolor" style="color:mediumblue">PRIMARY</span> <span class="sqlkeywordcolor" style="color:mediumblue">KEY</span>,<br><span class="sqlnumbercolor" style="color:">
                            </span>&nbsp;&nbsp;&nbsp;
                            OrderNumber int <span class="sqlkeywordcolor" style="color:mediumblue">NOT</span> <span class="sqlkeywordcolor" style="color:mediumblue">NULL</span>,<br><span class="sqlnumbercolor" style="color:">
                            </span>&nbsp;&nbsp;&nbsp;
                            PersonID int <span class="sqlkeywordcolor" style="color:mediumblue">FOREIGN</span> <span class="sqlkeywordcolor" style="color:mediumblue">KEY</span> <span class="sqlkeywordcolor" style="color:mediumblue">REFERENCES</span> Persons(PersonID)<br><span class="sqlnumbercolor" style="color:">
                            </span>); </span></div></div>

                <p>To allow naming of a <code class="w3-codespan">FOREIGN KEY</code> constraint, and for defining a <code class="w3-codespan">
                        FOREIGN KEY</code> constraint on multiple columns, use the following SQL syntax:</p>
                <p><b>MySQL / SQL Server / Oracle / MS Access:</b></p>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">CREATE</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> Orders
                            (<br><span class="sqlnumbercolor" style="color:">
                            </span>&nbsp;&nbsp;&nbsp;
                            OrderID int <span class="sqlkeywordcolor" style="color:mediumblue">NOT</span> <span class="sqlkeywordcolor" style="color:mediumblue">NULL</span>,<br><span class="sqlnumbercolor" style="color:">
                            </span>&nbsp;&nbsp;&nbsp;
                            OrderNumber int <span class="sqlkeywordcolor" style="color:mediumblue">NOT</span> <span class="sqlkeywordcolor" style="color:mediumblue">NULL</span>,<br><span class="sqlnumbercolor" style="color:">
                            </span>&nbsp;&nbsp;&nbsp;
                            PersonID int,<br><span class="sqlnumbercolor" style="color:">
                            </span>&nbsp;&nbsp;&nbsp;
                            <span class="sqlkeywordcolor" style="color:mediumblue">PRIMARY</span> <span class="sqlkeywordcolor" style="color:mediumblue">KEY</span> (OrderID),<br><span class="sqlnumbercolor" style="color:">
                            </span>&nbsp;&nbsp;&nbsp;
                            <span class="sqlkeywordcolor" style="color:mediumblue">CONSTRAINT</span> FK_PersonOrder <span class="sqlkeywordcolor" style="color:mediumblue">FOREIGN</span> <span class="sqlkeywordcolor" style="color:mediumblue">KEY</span> (PersonID)<br><span class="sqlnumbercolor" style="color:">
                            </span>&nbsp;&nbsp;&nbsp;
                            <span class="sqlkeywordcolor" style="color:mediumblue">REFERENCES</span> Persons(PersonID)<br><span class="sqlnumbercolor" style="color:">
                            </span>); </span></div></div>
                <hr>

                <h2>SQL FOREIGN KEY on ALTER TABLE</h2>
                <p>To create a <code class="w3-codespan">FOREIGN KEY</code> constraint on the "PersonID" column when the "Orders" table is already created, use the following SQL:</p>
                <p><b>MySQL / SQL Server / Oracle / MS Access:</b></p>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">ALTER</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> Orders<br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">ADD</span> <span class="sqlkeywordcolor" style="color:mediumblue">FOREIGN</span> <span class="sqlkeywordcolor" style="color:mediumblue">KEY</span> (PersonID)
                            <span class="sqlkeywordcolor" style="color:mediumblue">REFERENCES</span> Persons(PersonID); </span></div></div>

                <p>To allow naming of a <code class="w3-codespan">FOREIGN KEY</code> constraint, and for defining a <code class="w3-codespan">
                        FOREIGN KEY</code> constraint on multiple columns, use the following SQL syntax:</p>
                <p><b>MySQL / SQL Server / Oracle / MS Access:</b></p>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">ALTER</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> Orders<br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">ADD</span> <span class="sqlkeywordcolor" style="color:mediumblue">CONSTRAINT</span> FK_PersonOrder<br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">FOREIGN</span> <span class="sqlkeywordcolor" style="color:mediumblue">KEY</span> (PersonID)
                            <span class="sqlkeywordcolor" style="color:mediumblue">REFERENCES</span> Persons(PersonID); </span></div></div>
                <hr>

                <h2>DROP a FOREIGN KEY Constraint</h2>
                <p>To drop a <code class="w3-codespan">FOREIGN KEY</code> constraint, use the following SQL:</p>
                <p><b>MySQL:</b></p>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">ALTER</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> Orders<br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">DROP</span> <span class="sqlkeywordcolor" style="color:mediumblue">FOREIGN</span> <span class="sqlkeywordcolor" style="color:mediumblue">KEY</span> FK_PersonOrder; </span></div></div>

                <p><b>SQL Server / Oracle / MS Access:</b></p>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">ALTER</span> <span class="sqlkeywordcolor" style="color:mediumblue">TABLE</span> Orders<br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">DROP</span> <span class="sqlkeywordcolor" style="color:mediumblue">CONSTRAINT</span> FK_PersonOrder; </span></div></div>

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
