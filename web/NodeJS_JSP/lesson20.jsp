<%-- 
    Document   : lesson20
    Created on : Feb 21, 2023, 1:44:45 PM
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
                <h1>Node.js <span class="color_h1">MySQL</span> Drop Table</h1>
               
                <hr>
                <h2>Delete a Table</h2>
                <p>You can delete an existing table by using 
                    the "DROP TABLE" statement:</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Delete the table "customers":</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> mysql = require(<span class="jsstringcolor" style="color:brown">'mysql'</span>);<br><br><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> con = mysql.<span class="jspropertycolor" style="color:black">createConnection</span>({<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  host: <span class="jsstringcolor" style="color:brown">"localhost"</span>,<br>&nbsp; user: <span class="jsstringcolor" style="color:brown">"yourusername"</span>,<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  password: <span class="jsstringcolor" style="color:brown">"yourpassword"</span>,<br>&nbsp; database: <span class="jsstringcolor" style="color:brown">"mydb"</span><br>});<br><span class="jsnumbercolor" style="color:red">
                            </span>  <br>con.<span class="jspropertycolor" style="color:black">connect</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span>(err) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br><strong>&nbsp; <span class="jsnumbercolor" style="color:red">
                                </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> sql = <span class="jsstringcolor" style="color:brown">"DROP TABLE customers"</span>;<br></strong>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  con.<span class="jspropertycolor" style="color:black">query</span>(<strong>sql,</strong> <span class="jskeywordcolor" style="color:mediumblue">function</span> (err, result) {<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp;&nbsp;&nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(<span class="jsstringcolor" style="color:brown">"Table deleted"</span>);<br>&nbsp; });<br><span class="jsnumbercolor" style="color:red">
                            </span>  });<br> </span></div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_db_drop">Run example »</a>

                </div>
                <p>Save the code above in a file called "demo_db_drop_table.js" and run the file:</p>
                <div class="w3-example">
                    <p>Run "demo_db_drop_table.js"</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_db_drop_table.js
                    </div>
                </div>
                <p>Which will give you this result:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">
                        Table deleted</div>
                </div>
                <hr>
                <div id="midcontentadcontainer" style="overflow:auto;text-align:center">
                    <!-- MidContent -->
                    <!-- <p class="adtext">Advertisement</p> -->

                    <div id="adngin-mid_content-0"></div>

                </div>
                <hr>
                <h2>Drop Only if Exist</h2>
                <p>If the the table you want to delete is already deleted, or for any other 
                    reason does not exist, you can use the IF EXISTS keyword to avoid getting an 
                    error.</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Delete the table "customers" if it exists:</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> mysql = require(<span class="jsstringcolor" style="color:brown">'mysql'</span>);<br><br><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> con = mysql.<span class="jspropertycolor" style="color:black">createConnection</span>({<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  host: <span class="jsstringcolor" style="color:brown">"localhost"</span>,<br>&nbsp; user: <span class="jsstringcolor" style="color:brown">"yourusername"</span>,<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  password: <span class="jsstringcolor" style="color:brown">"yourpassword"</span>,<br>&nbsp; database: <span class="jsstringcolor" style="color:brown">"mydb"</span><br>});<br><span class="jsnumbercolor" style="color:red">
                            </span>  <br>con.<span class="jspropertycolor" style="color:black">connect</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span>(err) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br><strong>&nbsp; <span class="jsnumbercolor" style="color:red">
                                </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> sql = <span class="jsstringcolor" style="color:brown">"DROP TABLE IF EXISTS customers"</span>;<br></strong>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  con.<span class="jspropertycolor" style="color:black">query</span>(<strong>sql,</strong> <span class="jskeywordcolor" style="color:mediumblue">function</span> (err, result) {<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp;&nbsp;&nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(result);<br>&nbsp; });<br><span class="jsnumbercolor" style="color:red">
                            </span>  });<br> </span></div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_db_drop_if">Run example »</a>

                </div>
                <p>Save the code above in a file called "demo_db_drop_table_if.js" and run the file:</p>
                <div class="w3-example">
                    <p>Run "demo_db_drop_table_if.js"</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_db_drop_table_if.js
                    </div>
                </div>
                <p>If the table exist, the result object will look like this:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">
                        {<br>&nbsp; fieldCount: 0,<br>&nbsp; affectedRows: 0,<br>&nbsp; insertId: 0,<br>&nbsp; 
                        serverstatus: 2,<br>&nbsp; warningCount: 0,<br>&nbsp; message: '',<br>&nbsp; 
                        protocol41: true,<br>&nbsp; changedRows: 0<br>}</div>
                </div>

                <p>If the table does not exist, the result object will look like this:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">
                        {<br>&nbsp; fieldCount: 0,<br>&nbsp; affectedRows: 0,<br>&nbsp; insertId: 0,<br>&nbsp; 
                        serverstatus: 2,<br>&nbsp; warningCount: 1,<br>&nbsp; message: '',<br>&nbsp; 
                        protocol41: true,<br>&nbsp; changedRows: 0<br>}</div>
                </div>

                <p>As you can see the only differnce is that the warningCount property is set to 1 if the table does not exist.</p>
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
