<%-- 
    Document   : lesson21
    Created on : Feb 21, 2023, 1:46:07 PM
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
                <h1>Node.js <span class="color_h1">MySQL</span> Limit</h1>

                <hr>
                <h2>Limit the Result</h2>
                <p>You can limit the number of records returned from the query, by using the "LIMIT" statement:</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Select the 5 first records in the "customers" table:</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> mysql = require(<span class="jsstringcolor" style="color:brown">'mysql'</span>);<br><br><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> con = mysql.<span class="jspropertycolor" style="color:black">createConnection</span>({<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  host: <span class="jsstringcolor" style="color:brown">"localhost"</span>,<br>&nbsp; user: <span class="jsstringcolor" style="color:brown">"yourusername"</span>,<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  password: <span class="jsstringcolor" style="color:brown">"yourpassword"</span>,<br>&nbsp; database: <span class="jsstringcolor" style="color:brown">"mydb"</span><br>});<br><span class="jsnumbercolor" style="color:red">
                            </span>  <br>con.<span class="jspropertycolor" style="color:black">connect</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span>(err) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> sql = <span class="jsstringcolor" style="color:brown">"SELECT * FROM customers <strong>LIMIT 5</strong>"</span>;<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  con.<span class="jspropertycolor" style="color:black">query</span>(sql, <span class="jskeywordcolor" style="color:mediumblue">function</span> (err, result) {<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp;&nbsp;&nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(result);<br>&nbsp; });<br><span class="jsnumbercolor" style="color:red">
                            </span>  });<br> </span></div>
                    <a class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_db_limit" target="_blank">Run example »</a>

                </div>
                <p>Save the code above in a file called "demo_db_limit.js" and run the file:</p>
                <div class="w3-example">
                    <p>Run "demo_db_limit.js"</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_db_limit.js
                    </div>
                </div>
                <p>Which will give you this result:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">
                        [<br>&nbsp; { id: 1, name: 'John', address: 'Highway 71'},<br>&nbsp; { id: 
                        2, name: 'Peter', address: 'Lowstreet 4'},<br>&nbsp; { id: 3, name: 'Amy', 
                        address: 'Apple st 652'},<br>&nbsp; { id: 4, name: 'Hannah', address: 
                        'Mountain 21'},<br>&nbsp; { id: 5, name: 'Michael', address: 'Valley 345'}<br>]</div>
                </div>
                <hr>
                <div id="midcontentadcontainer" style="overflow:auto;text-align:center">
                    <!-- MidContent -->
                    <!-- <p class="adtext">Advertisement</p> -->

                    <div id="adngin-mid_content-0"></div>

                </div>
                <hr>
                <h2>Start From Another Position</h2>
                <p>If you want to return five records, starting from the third record, you 
                    can use the "OFFSET" keyword:</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Start from position 3, and return the next 5 records:</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> mysql = require(<span class="jsstringcolor" style="color:brown">'mysql'</span>);<br><br><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> con = mysql.<span class="jspropertycolor" style="color:black">createConnection</span>({<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  host: <span class="jsstringcolor" style="color:brown">"localhost"</span>,<br>&nbsp; user: <span class="jsstringcolor" style="color:brown">"yourusername"</span>,<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  password: <span class="jsstringcolor" style="color:brown">"yourpassword"</span>,<br>&nbsp; database: <span class="jsstringcolor" style="color:brown">"mydb"</span><br>});<br><span class="jsnumbercolor" style="color:red">
                            </span>  <br>con.<span class="jspropertycolor" style="color:black">connect</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span>(err) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> sql = <span class="jsstringcolor" style="color:brown">"SELECT * FROM customers <strong>LIMIT 5 OFFSET 2</strong>"</span>;<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  con.<span class="jspropertycolor" style="color:black">query</span>(sql, <span class="jskeywordcolor" style="color:mediumblue">function</span> (err, result) {<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp;&nbsp;&nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(result);<br>&nbsp; });<br><span class="jsnumbercolor" style="color:red">
                            </span>  });<br> </span></div>
                    <a class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_db_offset" target="_blank">Run example »</a>
                </div>
                <div class="w3-panel w3-note">
                    <p><strong>Note:</strong> "OFFSET 2", means starting from the third position, 
                        not the second!</p>
                </div>

                <p>Save the code above in a file called "demo_db_offset.js" and run the file:</p>
                <div class="w3-example">
                    <p>Run "demo_db_offset.js"</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_db_offset.js
                    </div>
                </div>
                <p>Which will give you this result:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">
                        [<br>&nbsp; { id: 3, name: 'Amy', 
                        address: 'Apple st 652'},<br>&nbsp; { id: 4, name: 'Hannah', address: 
                        'Mountain 21'},<br>&nbsp; { id: 5, name: 'Michael', address: 'Valley 345'},<br>&nbsp; 
                        { id: 6, name: 'Sandy', address: 'Ocean blvd 2'},<br>&nbsp; { id: 7, name: 'Betty', 
                        address: 'Green Grass 1'}<br>]</div>
                </div>

                <hr>
                <h2>Shorter Syntax</h2>
                <p>You can also write your SQL statement like this "LIMIT 2, 5" which 
                    returns the same as the offset example above:</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Start from position 3, and return the next 5 records:</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> mysql = require(<span class="jsstringcolor" style="color:brown">'mysql'</span>);<br><br><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> con = mysql.<span class="jspropertycolor" style="color:black">createConnection</span>({<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  host: <span class="jsstringcolor" style="color:brown">"localhost"</span>,<br>&nbsp; user: <span class="jsstringcolor" style="color:brown">"yourusername"</span>,<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  password: <span class="jsstringcolor" style="color:brown">"yourpassword"</span>,<br>&nbsp; database: <span class="jsstringcolor" style="color:brown">"mydb"</span><br>});<br><span class="jsnumbercolor" style="color:red">
                            </span>  <br>con.<span class="jspropertycolor" style="color:black">connect</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span>(err) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> sql = <span class="jsstringcolor" style="color:brown">"SELECT * FROM customers <strong>LIMIT 2, 5</strong>"</span>;<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  con.<span class="jspropertycolor" style="color:black">query</span>(sql, <span class="jskeywordcolor" style="color:mediumblue">function</span> (err, result) {<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp;&nbsp;&nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(result);<br>&nbsp; });<br><span class="jsnumbercolor" style="color:red">
                            </span>  });<br> </span></div>
                    <a class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_db_limit_short" target="_blank">Run example »</a>

                </div>
                <div class="w3-panel w3-note">
                    <p><strong>Note:</strong> The numbers are reversed: "LIMIT 2, 5" is the 
                        same as "LIMIT 5 OFFSET 2"</p>
                </div>

                <hr>

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
