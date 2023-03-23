<%-- 
    Document   : lesson21
    Created on : Feb 21, 2023, 1:47:58 PM
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
                <h1>Node.js <span class="color_h1">MySQL</span> Update</h1>

                <hr>
                <h2>Update Table</h2>
                <p>You can update existing records in a table by using 
                    the "UPDATE" statement:</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Overwrite the address column from "Valley 345" to "Canyon 123":</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> mysql = require(<span class="jsstringcolor" style="color:brown">'mysql'</span>);<br><br><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> con = mysql.<span class="jspropertycolor" style="color:black">createConnection</span>({<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  host: <span class="jsstringcolor" style="color:brown">"localhost"</span>,<br>&nbsp; user: <span class="jsstringcolor" style="color:brown">"yourusername"</span>,<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  password: <span class="jsstringcolor" style="color:brown">"yourpassword"</span>,<br>&nbsp; database: <span class="jsstringcolor" style="color:brown">"mydb"</span><br>});<br><span class="jsnumbercolor" style="color:red">
                            </span>  <br>con.<span class="jspropertycolor" style="color:black">connect</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span>(err) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br><strong>&nbsp; <span class="jsnumbercolor" style="color:red">
                                </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> sql = <span class="jsstringcolor" style="color:brown">"UPDATE customers SET address = 'Canyon 123' WHERE address = 
                                    'Valley 345'"</span>;<br></strong>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  con.<span class="jspropertycolor" style="color:black">query</span>(<strong>sql,</strong> <span class="jskeywordcolor" style="color:mediumblue">function</span> (err, result) {<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp;&nbsp;&nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(result.<span class="jspropertycolor" style="color:black">affectedRows</span> + <span class="jsstringcolor" style="color:brown">" 
                                record(s) updated"</span>);<br>&nbsp; });<br><span class="jsnumbercolor" style="color:red">
                            </span>  });<br> </span></div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_db_update">Run example »</a>

                </div>
                <div class="w3-panel w3-note">
                    <p><strong>Notice the WHERE clause in the UPDATE syntax:</strong> The WHERE clause 
                        specifies which record or records that should be updated. If you omit the WHERE 
                        clause, all records will be updated!</p>
                </div>

                <p>Save the code above in a file called "demo_db_update.js" and run the file:</p>
                <div class="w3-example">
                    <p>Run "demo_db_update.js"</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_db_update.js
                    </div>
                </div>
                <p>Which will give you this result:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">
                        1 record(s) updated</div>
                </div>
                <hr>
                <div id="midcontentadcontainer" style="overflow:auto;text-align:center">
                    <!-- MidContent -->
                    <!-- <p class="adtext">Advertisement</p> -->

                    <div id="adngin-mid_content-0"></div>

                </div>
                <hr>
                <h2>The Result Object</h2>
                <p>When executing a query, a result object is returned.</p>
                <p>The result object contains information about how the query  
                    affected the table.</p>
                <p>The result object returned from the example above looks like this:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  {<br>&nbsp; fieldCount: <span class="jsnumbercolor" style="color:red">0</span>,<br>&nbsp; affectedRows: <span class="jsnumbercolor" style="color:red">1</span>,<br>&nbsp; insertId: <span class="jsnumbercolor" style="color:red">0</span>,<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  serverStatus: <span class="jsnumbercolor" style="color:red">34</span>,<br>&nbsp; warningCount: <span class="jsnumbercolor" style="color:red">0</span>,<br>&nbsp; message: <span class="jsstringcolor" style="color:brown">'(Rows 
                                matched: 1 Changed: 1 Warnings: 0'</span>,<br>&nbsp; protocol41: <span class="jskeywordcolor" style="color:mediumblue">true</span>,<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  changedRows: <span class="jsnumbercolor" style="color:red">1</span><br>} </span></div>
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
                        1</div>
                </div>

                <div id="mypagediv2" style="position:relative;text-align:center;"></div>
               
                    
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
