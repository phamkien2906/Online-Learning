<%-- 
    Document   : lesson2
    Created on : Feb 4, 2023, 12:23:10 AM
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
                <h1><span class="color_h1">Introduction to</span> SQL</h1>

                <hr>
                <p class="intro">SQL is a standard language for accessing and manipulating databases.</p>
                <hr>

                <h2>What is SQL?</h2>
                <ul>
                    <li>SQL stands for Structured Query Language</li>
                    <li>SQL lets you access and manipulate databases</li>
                    <li>SQL became a standard of the American National Standards Institute (ANSI) 
                        in 1986, and of the International Organization for Standardization (ISO) in 
                        1987</li>
                </ul>
                <hr>
                <h2>What Can SQL do?</h2>
                <ul>
                    <li> SQL can execute queries against a database</li>
                    <li>SQL can retrieve data from a database</li>
                    <li>SQL can insert records in a database</li>
                    <li>SQL can update records in a database</li>
                    <li>SQL can delete records from a database</li>
                    <li>SQL can create new databases</li>
                    <li>SQL can create new tables in a database</li>
                    <li>SQL can create stored procedures in a database</li>
                    <li>SQL can create views in a database</li>
                    <li>SQL can set permissions on tables, procedures, and views</li>
                </ul>
                <hr>
                <h2>SQL is a Standard - BUT....</h2>
                <p>Although SQL is an ANSI/ISO standard, there are different versions of the SQL language.</p>
                <p>However, to be compliant with the ANSI standard, they all support at least the major commands (such as <code class="w3-codespan">
                        SELECT</code>, <code class="w3-codespan">UPDATE</code>, <code class="w3-codespan">
                        DELETE</code>, <code class="w3-codespan">INSERT</code>, <code class="w3-codespan">
                        WHERE</code>) in a similar manner.</p>

                <div class="w3-panel w3-note">
                    <p><b>Note:</b> Most of the SQL database programs also have their own proprietary extensions in addition to the SQL standard!</p>
                </div>
                <hr>

                <h2>Using SQL in Your Web Site</h2>
                <p>To build a web site that shows data from a database, you will need:</p>
                <ul>
                    <li>An RDBMS database program (i.e. MS Access, SQL Server, MySQL)</li>
                    <li>To use a server-side scripting language, like PHP or ASP</li>
                    <li>To use SQL to get the data you want</li>
                    <li>To use HTML / CSS to style the page</li>
                </ul>
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
                <h2>RDBMS</h2>
                <p>RDBMS stands for Relational Database Management System.</p>
                <p>RDBMS is the basis for SQL, and for all modern database systems such as MS SQL Server, IBM DB2, Oracle, MySQL, and Microsoft Access.</p>
                <p>The data in RDBMS is stored in database objects called tables. A table is a collection of related data entries and it consists of columns and rows.</p>
                <p>Look at the "Customers" table:</p>

                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers;<span class="sqlnumbercolor" style="color:">
                            </span> </span></div>

                </div>

                <p>Every table is broken up into smaller entities called fields. The fields in 
                    the Customers table consist of CustomerID, CustomerName, ContactName, Address, 
                    City, PostalCode and Country. A field is a column in a table that is designed to maintain 
                    specific information about every record in the table.</p>
                <p>A record, also called a row, is each individual entry that exists in a table. 
                    For example, there are 91 records in the above Customers table. A record is a 
                    horizontal entity in a table.</p>
                <p>A column is a vertical entity in a table that contains all information 
                    associated with a specific field in a table.</p>

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
