<%-- 
    Document   : lesson16
    Created on : Feb 21, 2023, 1:40:41 PM
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
                <h1>Node.js <span class="color_h1">MySQL</span> Select From</h1>

                <hr>
                <h2>Selecting From a Table</h2>
                <p>To select data from a table in MySQL, use the "SELECT" statement.</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Select all records from the "customers" table, and display the result object:</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> mysql = require(<span class="jsstringcolor" style="color:brown">'mysql'</span>);<br><br><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> con = mysql.<span class="jspropertycolor" style="color:black">createConnection</span>({<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  host: <span class="jsstringcolor" style="color:brown">"localhost"</span>,<br>&nbsp; user: <span class="jsstringcolor" style="color:brown">"yourusername"</span>,<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  password: <span class="jsstringcolor" style="color:brown">"yourpassword"</span>,<br>&nbsp; database: <span class="jsstringcolor" style="color:brown">"mydb"</span><br>});<br><span class="jsnumbercolor" style="color:red">
                            </span>  <br>con.<span class="jspropertycolor" style="color:black">connect</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span>(err) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  con.<span class="jspropertycolor" style="color:black">query</span>(<span class="jsstringcolor" style="color:brown">"<strong>SELECT * FROM customers</strong>"</span>, <span class="jskeywordcolor" style="color:mediumblue">function</span> (err, result, fields) {<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp;&nbsp;&nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(result);<br>&nbsp; });<br><span class="jsnumbercolor" style="color:red">
                            </span>  });<br> </span></div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_db_select">Run example »</a>
                </div>

                <div class="w3-panel w3-note">
                    <p><strong>SELECT *</strong> will return <em>all</em> columns</p>
                </div>

                <p>Save the code above in a file called "demo_db_select.js" and run the file:</p>
                <div class="w3-example">
                    <p>Run "demo_db_select.js"</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_db_select.js
                    </div>
                </div>
                <p>Which will give you this result:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">
                        [<br>&nbsp; { id: 1, name: 'John', address: 'Highway 71'},<br>&nbsp; { id: 
                        2, name: 'Peter', address: 'Lowstreet 4'},<br>&nbsp; { id: 3, name: 'Amy', 
                        address: 'Apple st 652'},<br>&nbsp; { id: 4, name: 'Hannah', address: 
                        'Mountain 21'},<br>&nbsp; { id: 5, name: 'Michael', address: 'Valley 345'},<br>&nbsp; 
                        { id: 6, name: 'Sandy', address: 'Ocean blvd 2'},<br>&nbsp; { id: 7, 
                        name: 'Betty', address: 'Green Grass 1'},<br>&nbsp; { id: 8, name: 'Richard', 
                        address: 'Sky st 331'},<br>&nbsp; { id: 9, name: 'Susan', address: 'One way 
                        98'},<br>&nbsp; { id: 10, name: 'Vicky', address: 'Yellow Garden 2'},<br>&nbsp; 
                        { id: 11, name: 'Ben', address: 'Park Lane 38'},<br>&nbsp; { id: 12, name: 'William', 
                        address: 'Central st 954'},<br>&nbsp; { id: 13, name: 'Chuck', address: 
                        'Main Road 989'},<br>&nbsp; { id: 14, name: 'Viola', address: 'Sideway 
                        1633'}<br>]</div>
                </div>
                <hr>
                <div id="midcontentadcontainer" style="overflow:auto;text-align:center">
                    <!-- MidContent -->
                    <!-- <p class="adtext">Advertisement</p> -->

                    <div id="div-gpt-ad-1493883843099-0" style="display: inline-block">
                        <script>
                            uic_r_g();
                        </script>
                    </div>

                </div>
                <hr>
                <h2>Selecting Columns</h2>
                <p>To select only some of the columns in a table, use the "SELECT" statement followed by the column name.</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Select name and address from the "customers" table, and display the return object:</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> mysql = require(<span class="jsstringcolor" style="color:brown">'mysql'</span>);<br><br><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> con = mysql.<span class="jspropertycolor" style="color:black">createConnection</span>({<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  host: <span class="jsstringcolor" style="color:brown">"localhost"</span>,<br>&nbsp; user: <span class="jsstringcolor" style="color:brown">"yourusername"</span>,<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  password: <span class="jsstringcolor" style="color:brown">"yourpassword"</span>,<br>&nbsp; database: <span class="jsstringcolor" style="color:brown">"mydb"</span><br>});<br><span class="jsnumbercolor" style="color:red">
                            </span>  <br>con.<span class="jspropertycolor" style="color:black">connect</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span>(err) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  con.<span class="jspropertycolor" style="color:black">query</span>(<span class="jsstringcolor" style="color:brown">"<strong>SELECT name, address FROM customers</strong>"</span>, <span class="jskeywordcolor" style="color:mediumblue">function</span> (err, result, fields) {<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp;&nbsp;&nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(result);<br>&nbsp; });<br><span class="jsnumbercolor" style="color:red">
                            </span>  });<br> </span></div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_db_select2">Run example »</a>

                </div>
                <p>Save the code above in a file called "demo_db_select2.js" and run the file:</p>
                <div class="w3-example">
                    <p>Run "demo_db_select2.js"</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_db_select2.js
                    </div>
                </div>
                <p>Which will give you this result:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">
                        [<br>&nbsp; { name: 'John', address: 'Highway 71'},<br>&nbsp; { name: 'Peter', address: 'Lowstreet 4'},<br>&nbsp; { name: 'Amy', 
                        address: 'Apple st 652'},<br>&nbsp; { name: 'Hannah', address: 
                        'Mountain 21'},<br>&nbsp; { name: 'Michael', address: 'Valley 345'},<br>&nbsp; 
                        { name: 'Sandy', address: 'Ocean blvd 2'},<br>&nbsp; {  
                        name: 'Betty', address: 'Green Grass 1'},<br>&nbsp; { name: 'Richard', 
                        address: 'Sky st 331'},<br>&nbsp; { name: 'Susan', address: 'One way 
                        98'},<br>&nbsp; { name: 'Vicky', address: 'Yellow Garden 2'},<br>&nbsp; 
                        { name: 'Ben', address: 'Park Lane 38'},<br>&nbsp; { name: 'William', 
                        address: 'Central st 954'},<br>&nbsp; { name: 'Chuck', address: 
                        'Main Road 989'},<br>&nbsp; { name: 'Viola', address: 'Sideway 
                        1633'}<br>]</div>
                </div>
                <hr>

                <h2>The Result Object</h2>
                <p>As you can see from the result of the example above, the result object is an 
                    array containing each row as an object.</p>
                <p>To return e.g. the address of the third record, just refer to the third array 
                    object's address property:</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Return the address of the third record:</p>
                    <div class="w3-code notranslate w3-black">
                        console.log(result[2].address);</div>
                </div>
                <p>Which will produce this result:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">
                        Apple st 652</div>
                </div>

                <hr>
                <h2>The Fields Object</h2>
                <p>The third parameter of the callback function is an array containing 
                    information about each field in the result.</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Select all records from the "customers" table, and display the <em>fields</em> object:</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> mysql = require(<span class="jsstringcolor" style="color:brown">'mysql'</span>);<br><br><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> con = mysql.<span class="jspropertycolor" style="color:black">createConnection</span>({<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  host: <span class="jsstringcolor" style="color:brown">"localhost"</span>,<br>&nbsp; user: <span class="jsstringcolor" style="color:brown">"yourusername"</span>,<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  password: <span class="jsstringcolor" style="color:brown">"yourpassword"</span>,<br>&nbsp; database: <span class="jsstringcolor" style="color:brown">"mydb"</span><br>});<br><span class="jsnumbercolor" style="color:red">
                            </span>  <br>con.<span class="jspropertycolor" style="color:black">connect</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span>(err) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  con.<span class="jspropertycolor" style="color:black">query</span>(<span class="jsstringcolor" style="color:brown">"SELECT name, address FROM customers"</span>, <span class="jskeywordcolor" style="color:mediumblue">function</span> (err, <span class="jsnumbercolor" style="color:red">
                            </span>  result, <strong>fields</strong>) {<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp;&nbsp;&nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(<strong>fields</strong>);<br>&nbsp; });<br><span class="jsnumbercolor" style="color:red">
                            </span>  });<br> </span></div>
                    <a class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_db_select_fields" target="_blank">Run example »</a>

                </div>
                <p>Save the code above in a file called "demo_db_select_fields.js" and run the file:</p>
                <div class="w3-example">
                    <p>Run "demo_db_select_fields.js"</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_db_select_fields.js
                    </div>
                </div>
                <p>Which will give you this result:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">
                        [<br>&nbsp; {<br>&nbsp;&nbsp;&nbsp; catalog: 'def',<br>&nbsp;&nbsp;&nbsp; db: 
                        'mydb',<br>&nbsp;&nbsp;&nbsp; table: 'customers',<br>&nbsp;&nbsp;&nbsp; 
                        orgTable: 'customers',<br>&nbsp;&nbsp;&nbsp; name: 'name',<br>&nbsp;&nbsp;&nbsp; 
                        orgName: 'name',<br>&nbsp;&nbsp;&nbsp; charsetNr: 33,<br>&nbsp;&nbsp;&nbsp; 
                        length: 765,<br>&nbsp;&nbsp;&nbsp; type: 253,<br>&nbsp;&nbsp;&nbsp; flags: 0,<br>&nbsp;&nbsp;&nbsp; 
                        decimals: 0,<br>&nbsp;&nbsp;&nbsp; default: undefined,<br>&nbsp;&nbsp;&nbsp; 
                        zeroFill: false,<br>&nbsp;&nbsp;&nbsp; protocol41: true<br>&nbsp; },<br>&nbsp; {<br>&nbsp;&nbsp;&nbsp; catalog: 'def',<br>&nbsp;&nbsp;&nbsp; db: 'mydb',<br>&nbsp;&nbsp;&nbsp; 
                        table: 'customers',<br>&nbsp;&nbsp;&nbsp; orgTable: 'customers',<br>&nbsp;&nbsp;&nbsp; 
                        name: 'address',<br>&nbsp;&nbsp;&nbsp; orgName: 'address',<br>&nbsp;&nbsp;&nbsp; 
                        charsetNr: 33,<br>&nbsp;&nbsp;&nbsp; length: 765,<br>&nbsp;&nbsp;&nbsp; type: 
                        253,<br>&nbsp;&nbsp;&nbsp; flags: 0,<br>&nbsp;&nbsp;&nbsp; decimals: 0,<br>&nbsp;&nbsp;&nbsp; 
                        default: undefined,<br>&nbsp;&nbsp;&nbsp; zeroFill: false,<br>&nbsp;&nbsp;&nbsp; 
                        protocol41: true<br>&nbsp; }<br>]</div>
                </div>


                <p>As you can see from the result of the example above, the fields object is an 
                    array containing information about each field as an object.</p>
                <p>To return e.g. the name of the second field, just refer to the second array item's name property:</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Return the name of the second field:</p>
                    <div class="w3-code notranslate w3-black">
                        console.log(fields[1].name);</div>
                </div>
                <p>Which will produce this result:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">
                        address</div>
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
