<%-- 
    Document   : lesson12
    Created on : Feb 21, 2023, 1:31:25 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/left.css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.jss"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="../Menu_lesson/header_menu.jsp"></jsp:include>
            <div class="w3-col l10 m12" class="main" style="margin: 0 100px;padding-top: 0px">
                <h1>Node.js <span class="color_h1">MySQL</span></h1>
                <hr>
                <p class="intro">Node.js can be used in database applications.</p>
                <p class="intro">One of the most popular databases is MySQL.</p>
                <hr>

                <h2>MySQL Database</h2>
                <p>To be able to experiment with the code examples, you should have MySQL installed 
                    on your computer.</p>
                <p>You can download a free MySQL database at <a href="https://www.mysql.com/downloads/" target="_blank">https://www.mysql.com/downloads/</a>.</p>
                <hr>
                <h2>Install MySQL Driver</h2>
                <p>Once you have MySQL up and running on your computer, you can access it by 
                    using Node.js.</p>
                <p>To access a MySQL database with Node.js, you need a MySQL driver. This 
                    tutorial will use the "mysql" module, downloaded from NPM.</p>
                <p>To download and install the "mysql" module, open the Command Terminal and execute the following:</p>

                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;npm install mysql
                    </div>
                </div>
                <p>Now you have downloaded and installed a mysql database driver.</p>
                <p>Node.js can use this module to manipulate the MySQL database:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> mysql = require(<span class="jsstringcolor" style="color:brown">'mysql'</span>); </span></div>
                </div>
                <hr>
                <div id="midcontentadcontainer" style="overflow:auto;text-align:center">
                    <!-- MidContent -->
                    <!-- <p class="adtext">Advertisement</p> -->

                    <div id="adngin-mid_content-0"></div>

                </div>
                <hr>
                <h2>Create Connection</h2>
                <p>Start by creating a connection to the database.</p>
                <p>Use the username and password from your MySQL database.</p>
                <div class="w3-example">
                    <p>demo_db_connection.js</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> mysql = require(<span class="jsstringcolor" style="color:brown">'mysql'</span>);<br><br><span class="jskeywordcolor" style="color:mediumblue">var</span> con = mysql.<span class="jspropertycolor" style="color:black">createConnection</span>({<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  host: <span class="jsstringcolor" style="color:brown">"localhost"</span>,<br>&nbsp; user: <span class="jsstringcolor" style="color:brown">"<em>yourusername</em>"</span>,<br>&nbsp; password: <span class="jsstringcolor" style="color:brown">"<em>yourpassword</em>"</span><br><span class="jsnumbercolor" style="color:red">
                            </span>  });<br><br>con.<span class="jspropertycolor" style="color:black">connect</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span>(err) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(<span class="jsstringcolor" style="color:brown">"Connected!"</span>);<br>});<br> </span></div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_db_connection">Run example »</a>
                </div>

                <p>Save the code above in a file called "demo_db_connection.js" and run the file:</p>
                <div class="w3-example">
                    <p>Run "demo_db_connection.js"</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_db_connection.js
                    </div>
                </div>
                <p>Which will give you this result:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">
                        Connected!</div>
                </div>

                <p>Now you can start querying the database using SQL statements.</p>
                <hr>
                <h2>Query a Database</h2>
                <p>Use SQL statements to read from (or write to) a MySQL database. This 
                    is also called "to query" the database.</p>
                <p>The connection object created in the example above, has a method for querying the database:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  con.<span class="jspropertycolor" style="color:black">connect</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span>(err) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(<span class="jsstringcolor" style="color:brown">"Connected!"</span>);<br><span class="jsnumbercolor" style="color:red">
                            </span>  <strong>&nbsp;<span class="jsnumbercolor" style="color:red">
                                </span>  con.<span class="jspropertycolor" style="color:black">query</span>(</strong><em><strong>sql</strong></em><strong>, <span class="jskeywordcolor" style="color:mediumblue">function</span> (err, result) {<br>&nbsp;&nbsp;&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; &nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(<span class="jsstringcolor" style="color:brown">"Result: 
                                    "</span> + result);<br>&nbsp; });<br></strong>}); </span></div>
                </div>

                <p>The query method takes an sql statements as a parameter and returns the 
                    result.</p>
                <p>Learn how to read, write, delete, and update a database in the next chapters.</p>
                <p>Read more about SQL statements in our <a href="/sql/default.asp">SQL Tutorial</a>.</p>

                <hr>

                <div id="mypagediv2" style="position:relative;text-align:center;"></div>
                <hr>
                <h2>Video Learning</h2>
                <p>Link full video: <a href="https://youtu.be/gQinIyWfuuk">https://youtu.be/gQinIyWfuuk</a>
                    <br>
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/gQinIyWfuuk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                <hr>
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
