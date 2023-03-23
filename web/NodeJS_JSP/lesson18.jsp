<%-- 
    Document   : lesson18
    Created on : Feb 21, 2023, 1:43:01 PM
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
                <h1>Node.js <span class="color_h1">MySQL</span> Order By</h1>

                <hr>
                <h2>Sort the Result</h2>
                <p>Use the ORDER BY statement to sort the result in ascending or descending 
                    order.</p>
                <p>The ORDER BY keyword sorts the result ascending by default. To sort the 
                    result in descending order, use the DESC keyword.</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Sort the result alphabetically by name:</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> mysql = require(<span class="jsstringcolor" style="color:brown">'mysql'</span>);<br><br><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> con = mysql.<span class="jspropertycolor" style="color:black">createConnection</span>({<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  host: <span class="jsstringcolor" style="color:brown">"localhost"</span>,<br>&nbsp; user: <span class="jsstringcolor" style="color:brown">"yourusername"</span>,<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  password: <span class="jsstringcolor" style="color:brown">"yourpassword"</span>,<br>&nbsp; database: <span class="jsstringcolor" style="color:brown">"mydb"</span><br>});<br><span class="jsnumbercolor" style="color:red">
                            </span>  <br>con.<span class="jspropertycolor" style="color:black">connect</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span>(err) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  con.<span class="jspropertycolor" style="color:black">query</span>(<span class="jsstringcolor" style="color:brown">"SELECT * FROM customers <strong>ORDER BY name</strong>"</span>, <span class="jskeywordcolor" style="color:mediumblue">function</span> (err, result) {<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp;&nbsp;&nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(result);<br>&nbsp; });<br><span class="jsnumbercolor" style="color:red">
                            </span>  });<br> </span></div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_db_orderby">Run example »</a>

                </div>
                <p>Save the code above in a file called "demo_db_orderby.js" and run the file:</p>
                <div class="w3-example">
                    <p>Run "demo_db_orderby.js"</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_db_orderby.js
                    </div>
                </div>
                <p>Which will give you this result:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">
                        [<br>&nbsp; { id: 3, name: 'Amy', 
                        address: 'Apple st 652'},<br>&nbsp; 
                        { id: 11, name: 'Ben', address: 'Park Lane 38'},<br>&nbsp; { id: 7, 
                        name: 'Betty', address: 'Green Grass 1'},<br>&nbsp; { id: 13, name: 'Chuck', address: 
                        'Main Road 989'},<br>&nbsp; { id: 4, name: 'Hannah', address: 
                        'Mountain 21'},<br>&nbsp; { id: 1, name: 'John', address: 'Higheay 71'},<br>&nbsp; { id: 5, name: 'Michael', address: 'Valley 345'},<br>&nbsp; { id: 
                        2, name: 'Peter', address: 'Lowstreet 4'},<br>&nbsp; { id: 8, name: 'Richard', 
                        address: 'Sky st 331'},<br>&nbsp; 
                        { id: 6, name: 'Sandy', address: 'Ocean blvd 2'},<br>&nbsp; { id: 9, name: 'Susan', address: 'One way 
                        98'},<br>&nbsp; { id: 10, name: 'Vicky', address: 'Yellow Garden 2'},<br>&nbsp; { id: 14, name: 'Viola', address: 'Sideway 
                        1633'},<br>&nbsp; { id: 12, name: 'William', 
                        address: 'Central st 954'}<br>]</div>
                </div>
                <hr>
                <div id="midcontentadcontainer" style="overflow:auto;text-align:center">
                    <!-- MidContent -->
                    <!-- <p class="adtext">Advertisement</p> -->

                    <div id="adngin-mid_content-0"></div>

                </div>
                <hr>
                <h2>ORDER BY DESC</h2>
                <p>Use the DESC keyword to sort the result in a descending order.</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Sort the result reverse alphabetically by name:</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> mysql = require(<span class="jsstringcolor" style="color:brown">'mysql'</span>);<br><br><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> con = mysql.<span class="jspropertycolor" style="color:black">createConnection</span>({<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  host: <span class="jsstringcolor" style="color:brown">"localhost"</span>,<br>&nbsp; user: <span class="jsstringcolor" style="color:brown">"yourusername"</span>,<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  password: <span class="jsstringcolor" style="color:brown">"yourpassword"</span>,<br>&nbsp; database: <span class="jsstringcolor" style="color:brown">"mydb"</span><br>});<br><span class="jsnumbercolor" style="color:red">
                            </span>  <br>con.<span class="jspropertycolor" style="color:black">connect</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span>(err) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  con.<span class="jspropertycolor" style="color:black">query</span>(<span class="jsstringcolor" style="color:brown">"SELECT * FROM customers <strong>ORDER BY name DESC</strong>"</span>, <span class="jskeywordcolor" style="color:mediumblue">function</span> (err, result) {<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp;&nbsp;&nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(result);<br>&nbsp; });<br><span class="jsnumbercolor" style="color:red">
                            </span>  });<br> </span></div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_db_orderby_desc">Run example »</a>

                </div>
                <p>Save the code above in a file called "demo_db_orderby_desc.js" and run the file:</p>
                <div class="w3-example">
                    <p>Run "demo_db_orderby_desc.js"</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_db_orderby_desc.js
                    </div>
                </div>
                <p>Which will give you this result:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">
                        [<br>&nbsp; { id: 12, name: 'William', 
                        address: 'Central st 954'},<br>&nbsp; { id: 14, name: 'Viola', address: 'Sideway 
                        1633'},<br>&nbsp; { id: 10, name: 'Vicky', address: 'Yellow Garden 2'},<br>&nbsp; { id: 9, name: 'Susan', address: 'One way 
                        98'},<br>&nbsp; 
                        { id: 6, name: 'Sandy', address: 'Ocean blvd 2'},<br>&nbsp; { id: 8, name: 'Richard', 
                        address: 'Sky st 331'},<br>&nbsp; { id: 
                        2, name: 'Peter', address: 'Lowstreet 4'},<br>&nbsp; { id: 5, name: 'Michael', address: 'Valley 345'},<br>&nbsp; { id: 1, name: 'John', address: 'Higheay 71'},<br>&nbsp; { id: 4, name: 'Hannah', address: 
                        'Mountain 21'},<br>&nbsp; { id: 13, name: 'Chuck', address: 
                        'Main Road 989'},<br>&nbsp; { id: 7, 
                        name: 'Betty', address: 'Green Grass 1'},<br>&nbsp; 
                        { id: 11, name: 'Ben', address: 'Park Lane 38'},<br>&nbsp; { id: 3, name: 'Amy', 
                        address: 'Apple st 652'}<br>]</div>
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
