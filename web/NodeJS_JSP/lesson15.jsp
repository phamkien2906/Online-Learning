<%-- 
    Document   : lesson15
    Created on : Feb 21, 2023, 1:39:19 PM
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
                <h1>Node.js <span class="color_h1">MySQL</span> Insert Into</h1>

                <hr>
                <h2>Insert Into Table</h2>
                <p>To fill a table in MySQL, use the "INSERT INTO" statement.</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Insert a record in the "customers" table:</p>

                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> mysql = require(<span class="jsstringcolor" style="color:brown">'mysql'</span>);<br><br><span class="jskeywordcolor" style="color:mediumblue">var</span> con = mysql.<span class="jspropertycolor" style="color:black">createConnection</span>({<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  host: <span class="jsstringcolor" style="color:brown">"localhost"</span>,<br>&nbsp; user: <span class="jsstringcolor" style="color:brown">"<em>yourusername</em>"</span>,<br>&nbsp; password: <span class="jsstringcolor" style="color:brown">"<em>yourpassword</em>"</span>,<br><span class="jsnumbercolor" style="color:red">
                            </span>  &nbsp; database: <span class="jsstringcolor" style="color:brown">"mydb"</span><br><span class="jsnumbercolor" style="color:red">
                            </span>  });<br><br>con.<span class="jspropertycolor" style="color:black">connect</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span>(err) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(<span class="jsstringcolor" style="color:brown">"Connected!"</span>);<br><span class="jsnumbercolor" style="color:red">
                            </span>  <strong>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">var</span> sql = <span class="jsstringcolor" style="color:brown">"INSERT INTO customers (name, address) 
                                    VALUES ('Company Inc', 'Highway 37')"</span>;<br></strong>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  con.<span class="jspropertycolor" style="color:black">query</span>(sql, <span class="jskeywordcolor" style="color:mediumblue">function</span> (err, result) {<br>&nbsp;&nbsp;&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp;&nbsp;&nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(<span class="jsstringcolor" style="color:brown">"1 record inserted"</span>);<br>&nbsp; });<br>});<br> </span></div>

                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_db_insert">Run example »</a>
                </div>

                <p>Save the code above in a file called "demo_db_insert.js", and run the file:</p>
                <div class="w3-example">
                    <p>Run "demo_db_insert.js"</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_db_insert.js
                    </div>
                </div>
                <p>Which will give you this result:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">
                        Connected!<br>1 record inserted</div>
                </div>
                <hr>
                <div id="midcontentadcontainer" style="overflow:auto;text-align:center">
                    <!-- MidContent -->
                    <!-- <p class="adtext">Advertisement</p> -->

                    <div id="adngin-mid_content-0"></div>

                </div>
                <hr>
                <h2>Insert Multiple Records</h2>
                <p>To insert more than one record, make an array containing the values, and 
                    insert a question mark in the sql, which will be replaced by the value array:<br>
                    <code class="w3-codespan">INSERT INTO customers (name, address) VALUES ?</code></p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Fill the "customers" table with data:</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> mysql = require(<span class="jsstringcolor" style="color:brown">'mysql'</span>);<br><br><span class="jskeywordcolor" style="color:mediumblue">var</span> con = mysql.<span class="jspropertycolor" style="color:black">createConnection</span>({<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  host: <span class="jsstringcolor" style="color:brown">"localhost"</span>,<br>&nbsp; user: <span class="jsstringcolor" style="color:brown">"<em>yourusername</em>"</span>,<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  password: <span class="jsstringcolor" style="color:brown">"<em>yourpassword</em>"</span>,<br>&nbsp; database: <span class="jsstringcolor" style="color:brown">"mydb"</span><br>});<br><br><span class="jsnumbercolor" style="color:red">
                            </span>  con.<span class="jspropertycolor" style="color:black">connect</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span>(err) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  console.<span class="jspropertycolor" style="color:black">log</span>(<span class="jsstringcolor" style="color:brown">"Connected!"</span>);<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">var</span> sql = <span class="jsstringcolor" style="color:brown">"INSERT INTO customers (name, 
                                address) VALUES ?"</span>;<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">var</span> values = [<br>&nbsp;&nbsp;&nbsp; [<span class="jsstringcolor" style="color:brown">'John'</span>, <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jsstringcolor" style="color:brown">'Highway 71'</span>],<br>&nbsp;&nbsp;&nbsp; [<span class="jsstringcolor" style="color:brown">'Peter'</span>, <span class="jsstringcolor" style="color:brown">'Lowstreet 4'</span>],<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  [<span class="jsstringcolor" style="color:brown">'Amy'</span>, <span class="jsstringcolor" style="color:brown">'Apple st 652'</span>],<br>&nbsp;&nbsp;&nbsp; [<span class="jsstringcolor" style="color:brown">'Hannah'</span>, <span class="jsstringcolor" style="color:brown">'Mountain 21'</span>],<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  [<span class="jsstringcolor" style="color:brown">'Michael'</span>, <span class="jsstringcolor" style="color:brown">'Valley 345'</span>],<br>&nbsp;&nbsp;&nbsp; [<span class="jsstringcolor" style="color:brown">'Sandy'</span>, <span class="jsstringcolor" style="color:brown">'Ocean blvd 2'</span>],<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  [<span class="jsstringcolor" style="color:brown">'Betty'</span>, <span class="jsstringcolor" style="color:brown">'Green Grass 1'</span>],<br>&nbsp;&nbsp;&nbsp; [<span class="jsstringcolor" style="color:brown">'Richard'</span>, <span class="jsstringcolor" style="color:brown">'Sky st 331'</span>],<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  [<span class="jsstringcolor" style="color:brown">'Susan'</span>, <span class="jsstringcolor" style="color:brown">'One way 98'</span>],<br>&nbsp;&nbsp;&nbsp; [<span class="jsstringcolor" style="color:brown">'Vicky'</span>, <span class="jsstringcolor" style="color:brown">'Yellow Garden 2'</span>],<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  [<span class="jsstringcolor" style="color:brown">'Ben'</span>, <span class="jsstringcolor" style="color:brown">'Park Lane 38'</span>],<br>&nbsp;&nbsp;&nbsp; [<span class="jsstringcolor" style="color:brown">'William'</span>, <span class="jsstringcolor" style="color:brown">'Central st 954'</span>],<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  [<span class="jsstringcolor" style="color:brown">'Chuck'</span>, <span class="jsstringcolor" style="color:brown">'Main Road 989'</span>],<br>&nbsp;&nbsp;&nbsp; [<span class="jsstringcolor" style="color:brown">'Viola'</span>, <span class="jsstringcolor" style="color:brown">'Sideway 1633'</span>]<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  ];<br>&nbsp; con.<span class="jspropertycolor" style="color:black">query</span>(sql,<strong> [values]</strong>, <span class="jskeywordcolor" style="color:mediumblue">function</span> (err, result) <span class="jsnumbercolor" style="color:red">
                            </span>  {<br>&nbsp;&nbsp;&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp;&nbsp;&nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(<span class="jsstringcolor" style="color:brown">"Number 
                                of records inserted: "</span> + result.<span class="jspropertycolor" style="color:black">affectedRows</span>);<br>&nbsp; });<br>});<br> </span></div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_db_insert_multiple">Run example »</a>
                </div>

                <p>Save the code above in a file called "demo_db_insert_multple.js", and run the file:</p>
                <div class="w3-example">
                    <p>Run "demo_db_insert_multiple.js"</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_db_insert_multiple.js
                    </div>
                </div>
                <p>Which will give you this result:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">
                        Connected!<br>Number of records inserted: 14</div>
                </div>

                <hr>
                <h2>The Result Object</h2>
                <p>When executing a query, a result object is returned.</p>
                <p>The result object contains information about how the query  
                    affected the table.</p>
                <p>The result object returned from the example above looks like this:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  {<br>&nbsp; fieldCount: <span class="jsnumbercolor" style="color:red">0</span>,<br>&nbsp; affectedRows: <span class="jsnumbercolor" style="color:red">14</span>,<br>&nbsp; insertId: <span class="jsnumbercolor" style="color:red">0</span>,<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  serverStatus: <span class="jsnumbercolor" style="color:red">2</span>,<br>&nbsp; warningCount: <span class="jsnumbercolor" style="color:red">0</span>,<br>&nbsp; message: <span class="jsstringcolor" style="color:brown">'\'Records:14&nbsp; 
                                Duplicated: 0&nbsp; Warnings: 0'</span>,<br>&nbsp; protocol41: <span class="jskeywordcolor" style="color:mediumblue">true</span>,<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  changedRows: <span class="jsnumbercolor" style="color:red">0</span><br>} </span></div>
                </div>

                <p>The values of the properties can be displayed like this:</p>

                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Return the  number of affected rows:</p>
                    <div class="w3-code notranslate w3-black">
                        console.log(result.affectedRows)
                    </div>
                </div>
                <p>Which will produce this result:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">
                        14</div>
                </div>
                <hr>
                <h2>Get Inserted ID</h2>
                <p>For tables with an auto increment id field, you can get the id of the row you 
                    just inserted by asking the result object.</p>
                <div class="w3-panel w3-note">
                    <p><strong>Note:</strong> To be able to get the inserted id, <strong>only one row</strong> can be inserted.</p>
                </div>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Insert a record in the "customers" table, and return the ID:</p>

                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> mysql = require(<span class="jsstringcolor" style="color:brown">'mysql'</span>);<br><br><span class="jskeywordcolor" style="color:mediumblue">var</span> con = mysql.<span class="jspropertycolor" style="color:black">createConnection</span>({<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  host: <span class="jsstringcolor" style="color:brown">"localhost"</span>,<br>&nbsp; user: <span class="jsstringcolor" style="color:brown">"<em>yourusername</em>"</span>,<br>&nbsp; password: <span class="jsstringcolor" style="color:brown">"<em>yourpassword</em>"</span>,<br><span class="jsnumbercolor" style="color:red">
                            </span>  &nbsp; database: <span class="jsstringcolor" style="color:brown">"mydb"</span><br><span class="jsnumbercolor" style="color:red">
                            </span>  });<br><br>con.<span class="jspropertycolor" style="color:black">connect</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span>(err) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">var</span> sql = <span class="jsstringcolor" style="color:brown">"INSERT INTO customers (name, address) 
                                VALUES ('Michelle', 'Blue Village 1')"</span>;<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  con.<span class="jspropertycolor" style="color:black">query</span>(sql, <span class="jskeywordcolor" style="color:mediumblue">function</span> (err, result) {<br>&nbsp;&nbsp;&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp;&nbsp;&nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(<span class="jsstringcolor" style="color:brown">"1 record inserted, 
                                ID: "</span> + <strong>result.<span class="jspropertycolor" style="color:black">insertId</span></strong>);<br>&nbsp; });<br>});<br> </span></div>

                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_db_insert_id">Run example »</a>
                </div>

                <p>Save the code above in a file called "demo_db_insert_id.js", and run the file:</p>
                <div class="w3-example">
                    <p>Run "demo_db_insert_id.js"</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_db_insert_id.js
                    </div>
                </div>
                <p>Which will give you something like this in return:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">
                        1 record inserted, ID: 15</div>
                </div>


                <div id="mypagediv2" style="position:relative;text-align:center;"></div>
                <hr>
                <h2>Video Learning</h2>
                <p>Link full video: <a href="https://youtu.be/RrJcj68cIvo">https://youtu.be/RrJcj68cIvo</a>
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/RrJcj68cIvo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/RrJcj68cIvo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
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
