<%-- 
    Document   : lesson41
    Created on : Feb 4, 2023, 2:08:31 AM
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
            <h1>SQL <span class="color_h1">BACKUP DATABASE</span> for SQL Server</h1>

            <hr>

            <h2>The SQL BACKUP DATABASE Statement</h2>
            <p>The <code class="w3-codespan">BACKUP DATABASE</code> statement is used in SQL Server to create a full back up of an existing SQL database.</p>
            <h3>Syntax</h3>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">BACKUP</span> <span class="sqlkeywordcolor" style="color:mediumblue">DATABASE</span> <em>databasename</em><br><span class="sqlkeywordcolor" style="color:mediumblue">TO</span> <span class="sqlkeywordcolor" style="color:mediumblue">DISK</span> = <span class="sqlstringcolor" style="color:brown">'<em>filepath</em>'</span>;  </span></div>
            </div>
            <hr>

            <h2>The SQL BACKUP WITH DIFFERENTIAL Statement</h2>
            <p>A differential back up only backs up the parts of the database that have 
                changed since the last full database backup.</p>
            <h3>Syntax</h3>
            <div class="w3-example">
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">BACKUP</span> <span class="sqlkeywordcolor" style="color:mediumblue">DATABASE</span> <em>databasename</em><br><span class="sqlkeywordcolor" style="color:mediumblue">TO</span> <span class="sqlkeywordcolor" style="color:mediumblue">DISK</span> = <span class="sqlstringcolor" style="color:brown">'<em>filepath</em>'</span><br><span class="sqlkeywordcolor" style="color:mediumblue">WITH</span> <span class="sqlnumbercolor" style="color:">
                        </span>  DIFFERENTIAL; </span></div>
            </div>
            <hr>

            <h2>BACKUP DATABASE Example</h2>
            <p>The following SQL statement creates a full back up of the existing database "testDB" 
                to the D disk:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">BACKUP</span> <span class="sqlkeywordcolor" style="color:mediumblue">DATABASE</span> testDB<br><span class="sqlkeywordcolor" style="color:mediumblue">TO</span> <span class="sqlkeywordcolor" style="color:mediumblue">DISK</span> = <span class="sqlstringcolor" style="color:brown">'D:\backups\testDB.bak'</span>; </span></div>
            </div>

            <div class="w3-panel w3-note">
                <p><b>Tip:</b> Always back up the database to a different drive than the 
                    actual database. Then, if you get a disk crash, you will not lose your backup 
                    file along with the database.</p>
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

            <h2>BACKUP WITH DIFFERENTIAL Example</h2>
            <p>The following SQL statement creates a differential back up of the database "testDB":</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                        <span class="sqlkeywordcolor" style="color:mediumblue">BACKUP</span> <span class="sqlkeywordcolor" style="color:mediumblue">DATABASE</span> testDB<br><span class="sqlkeywordcolor" style="color:mediumblue">TO</span> <span class="sqlkeywordcolor" style="color:mediumblue">DISK</span> = <span class="sqlstringcolor" style="color:brown">'D:\backups\testDB.bak'</span><br><span class="sqlkeywordcolor" style="color:mediumblue">WITH</span> <span class="sqlnumbercolor" style="color:">
                        </span>  DIFFERENTIAL; </span></div>
            </div>

            <div class="w3-panel w3-note">
                <p><b>Tip:</b> A differential back up reduces the back up time (since only the changes are backed up).</p>
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
