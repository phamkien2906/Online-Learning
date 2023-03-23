<%-- 
    Document   : lesson30
    Created on : Feb 21, 2023, 1:56:51 PM
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
                <h1>Node.js <span class="color_h1">MongoDB</span> Sort</h1>

                <hr>

                <h2>Sort the Result</h2>
                <p>Use the <code class="w3-codespan">sort()</code> method to sort the result in ascending or descending order.</p>
                <p>The <code class="w3-codespan">sort()</code> method takes one parameter, an 
                    object defining the sorting order.</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Sort the result alphabetically by name:</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> MongoClient = require(<span class="jsstringcolor" style="color:brown">'mongodb'</span>).<span class="jspropertycolor" style="color:black">MongoClient</span>;<br><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> url = <span class="jsstringcolor" style="color:brown">"mongodb://localhost:27017/"</span>;<br><br>MongoClient.<span class="jspropertycolor" style="color:black">connect</span>(url, <span class="jskeywordcolor" style="color:mediumblue">function</span>(err, db) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> dbo = db.<span class="jspropertycolor" style="color:black">db</span>(<span class="jsstringcolor" style="color:brown">"mydb"</span>);<br><span class="jsnumbercolor" style="color:red">
                            </span>  <strong>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">var</span> mysort = { name: <span class="jsnumbercolor" style="color:red">1</span> };<br></strong>&nbsp; dbo.<span class="jspropertycolor" style="color:black">collection</span>(<span class="jsstringcolor" style="color:brown">"customers"</span>).<span class="jspropertycolor" style="color:black">find</span>()<strong>.<span class="jspropertycolor" style="color:black">sort</span>(mysort)</strong>.<span class="jspropertycolor" style="color:black">toArray</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span>(err, result) {<br>&nbsp;&nbsp;&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp;&nbsp;&nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(result);<br>&nbsp;&nbsp;&nbsp; db.<span class="jspropertycolor" style="color:black">close</span>();<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  });<br>}); </span></div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_sort">Run example »</a>
                </div>

                <p>Save the code above in a file called "demo_sort.js" and run the file:</p>
                <div class="w3-example">
                    <p>Run "demo_sort.js"</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_sort.js
                    </div>
                </div>
                <p>Which will give you this result:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">[<br>&nbsp; { 
                        _id: 58fdbf5c0ef8a50b4cdd9a86, name: 'Amy', 
                        address: 'Apple st 652'},<br>&nbsp; 
                        { _id: 58fdbf5c0ef8a50b4cdd9a8e, name: 'Ben', address: 'Park Lane 38'},<br>&nbsp; { 
                        _id: 58fdbf5c0ef8a50b4cdd9a8a, 
                        name: 'Betty', address: 'Green Grass 1'},<br>&nbsp; { _id: 58fdbf5c0ef8a50b4cdd9a90, name: 'Chuck', address: 
                        'Main Road 989'},<br>&nbsp; { _id: 58fdbf5c0ef8a50b4cdd9a87, name: 'Hannah', address: 
                        'Mountain 21'},<br>&nbsp; { _id: 
                        58fdbf5c0ef8a50b4cdd9a84, name: 'John', address: 'Highway 71'},<br>&nbsp; { _id: 58fdbf5c0ef8a50b4cdd9a88, name: 'Michael', address: 'Valley 345'},<br>&nbsp; { _id: 
                        58fdbf5c0ef8a50b4cdd9a85, name: 'Peter', address: 'Lowstreet 4'},<br>&nbsp; { _id: 
                        58fdbf5c0ef8a50b4cdd9a8b, name: 'Richard', 
                        address: 'Sky st 331'},<br>&nbsp; 
                        { _id: 58fdbf5c0ef8a50b4cdd9a89, name: 'Sandy', address: 'Ocean blvd 2'},<br>&nbsp; { _id: 58fdbf5c0ef8a50b4cdd9a8c, name: 'Susan', address: 'One way 
                        98'},<br>&nbsp; { _id: 58fdbf5c0ef8a50b4cdd9a8d, name: 'Vicky', address: 'Yellow Garden 2'},<br>&nbsp; { _id: 58fdbf5c0ef8a50b4cdd9a91, name: 'Viola', address: 'Sideway 
                        1633'},<br>&nbsp; { 
                        _id: 58fdbf5c0ef8a50b4cdd9a8f, name: 'William', 
                        address: 'Central st 954'}<br>]</div>
                </div>
                <hr>
                <div id="midcontentadcontainer" style="overflow:auto;text-align:center">
                    <!-- MidContent -->
                    <!-- <p class="adtext">Advertisement</p> -->

                    <div id="adngin-mid_content-0"></div>

                </div>
                <hr>
                <h2>Sort Descending</h2>
                <p>Use the value -1 in the sort object to sort descending.</p>
                <div class="w3-panel w3-note">
                    <p>{ name: 1 } // ascending<br>{ name: -1 } // descending</p>
                </div>

                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Sort the result reverse alphabetically by name:</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> MongoClient = require(<span class="jsstringcolor" style="color:brown">'mongodb'</span>).<span class="jspropertycolor" style="color:black">MongoClient</span>;<br><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> url = <span class="jsstringcolor" style="color:brown">"mongodb://localhost:27017/"</span>;<br><br>MongoClient.<span class="jspropertycolor" style="color:black">connect</span>(url, <span class="jskeywordcolor" style="color:mediumblue">function</span>(err, db) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> dbo = db.<span class="jspropertycolor" style="color:black">db</span>(<span class="jsstringcolor" style="color:brown">"mydb"</span>);<br><span class="jsnumbercolor" style="color:red">
                            </span>  <strong>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">var</span> mysort = { name: -<span class="jsnumbercolor" style="color:red">1</span> };<br></strong>&nbsp; dbo.<span class="jspropertycolor" style="color:black">collection</span>(<span class="jsstringcolor" style="color:brown">"customers"</span>).<span class="jspropertycolor" style="color:black">find</span>()<strong>.<span class="jspropertycolor" style="color:black">sort</span>(mysort)</strong>.<span class="jspropertycolor" style="color:black">toArray</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span>(err, result) {<br>&nbsp;&nbsp;&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp;&nbsp;&nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(result);<br>&nbsp;&nbsp;&nbsp; db.<span class="jspropertycolor" style="color:black">close</span>();<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  });<br>}); </span></div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_sort_desc">Run example »</a>
                </div>

                <p>Save the code above in a file called "demo_sort_desc.js" and run the file:</p>
                <div class="w3-example">
                    <p>Run "demo_sort_desc.js"</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_sort_desc.js
                    </div>
                </div>
                <p>Which will give you this result:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">[<br>&nbsp; { 
                        _id: 58fdbf5c0ef8a50b4cdd9a8f, name: 'William', 
                        address: 'Central st 954'},<br>&nbsp; { _id: 58fdbf5c0ef8a50b4cdd9a91, name: 'Viola', address: 'Sideway 
                        1633'},<br>&nbsp; { _id: 58fdbf5c0ef8a50b4cdd9a8d, name: 'Vicky', address: 'Yellow Garden 2'},<br>&nbsp; { _id: 58fdbf5c0ef8a50b4cdd9a8c, name: 'Susan', address: 'One way 
                        98'},<br>&nbsp; 
                        { _id: 58fdbf5c0ef8a50b4cdd9a89, name: 'Sandy', address: 'Ocean blvd 2'},<br>&nbsp; { _id: 
                        58fdbf5c0ef8a50b4cdd9a8b, name: 'Richard', 
                        address: 'Sky st 331'},<br>&nbsp; { _id: 
                        58fdbf5c0ef8a50b4cdd9a85, name: 'Peter', address: 'Lowstreet 4'},<br>&nbsp; { _id: 58fdbf5c0ef8a50b4cdd9a88, name: 'Michael', address: 'Valley 345'},<br>&nbsp; { _id: 
                        58fdbf5c0ef8a50b4cdd9a84, name: 'John', address: 'Highway 71'},<br>&nbsp; { _id: 58fdbf5c0ef8a50b4cdd9a87, name: 'Hannah', address: 
                        'Mountain 21'},<br>&nbsp; { _id: 58fdbf5c0ef8a50b4cdd9a90, name: 'Chuck', address: 
                        'Main Road 989'},<br>&nbsp; { 
                        _id: 58fdbf5c0ef8a50b4cdd9a8a, 
                        name: 'Betty', address: 'Green Grass 1'},<br>&nbsp; 
                        { _id: 58fdbf5c0ef8a50b4cdd9a8e, name: 'Ben', address: 'Park Lane 38'},<br>&nbsp; { 
                        _id: 58fdbf5c0ef8a50b4cdd9a86, name: 'Amy', 
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
