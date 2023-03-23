<%-- 
    Document   : lesson34
    Created on : Feb 21, 2023, 2:00:02 PM
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
                <h1>Node.js <span class="color_h1">MongoDB</span> Limit</h1>

                <hr>

                <h2>Limit the Result</h2>
                <p>To limit the result in MongoDB, we use the <code class="w3-codespan">limit()</code> 
                    method.</p>
                <p>The <code class="w3-codespan">limit()</code> method takes one parameter, a number defining how many documents 
                    to return.</p>

                <p>Consider you have a "customers" collection:</p>
                <div class="w3-example">
                    <h3>customers<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <div class="w3-code notranslate w3-black">[<br>&nbsp; { _id: 
                        58fdbf5c0ef8a50b4cdd9a84 , name: 'John', address: 'Highway 71'},<br>&nbsp; { _id: 
                        58fdbf5c0ef8a50b4cdd9a85 , name: 'Peter', address: 'Lowstreet 4'},<br>&nbsp; { 
                        _id: 58fdbf5c0ef8a50b4cdd9a86 , name: 'Amy', 
                        address: 'Apple st 652'},<br>&nbsp; { _id: 58fdbf5c0ef8a50b4cdd9a87 , name: 'Hannah', address: 
                        'Mountain 21'},<br>&nbsp; { _id: 58fdbf5c0ef8a50b4cdd9a88 , name: 'Michael', address: 'Valley 345'},<br>&nbsp; 
                        { _id: 58fdbf5c0ef8a50b4cdd9a89 , name: 'Sandy', address: 'Ocean blvd 2'},<br>&nbsp; { 
                        _id: 58fdbf5c0ef8a50b4cdd9a8a , 
                        name: 'Betty', address: 'Green Grass 1'},<br>&nbsp; { _id: 
                        58fdbf5c0ef8a50b4cdd9a8b , name: 'Richard', 
                        address: 'Sky st 331'},<br>&nbsp; { _id: 58fdbf5c0ef8a50b4cdd9a8c , name: 'Susan', address: 'One way 
                        98'},<br>&nbsp; { _id: 58fdbf5c0ef8a50b4cdd9a8d , name: 'Vicky', address: 'Yellow Garden 2'},<br>&nbsp; 
                        { _id: 58fdbf5c0ef8a50b4cdd9a8e , name: 'Ben', address: 'Park Lane 38'},<br>&nbsp; { 
                        _id: 58fdbf5c0ef8a50b4cdd9a8f , name: 'William', 
                        address: 'Central st 954'},<br>&nbsp; { _id: 58fdbf5c0ef8a50b4cdd9a90 , name: 'Chuck', address: 
                        'Main Road 989'},<br>&nbsp; { _id: 58fdbf5c0ef8a50b4cdd9a91 , name: 'Viola', address: 'Sideway 
                        1633'}<br>]</div>
                </div>


                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Limit the result to only return 5 documents:</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> MongoClient = require(<span class="jsstringcolor" style="color:brown">'mongodb'</span>).<span class="jspropertycolor" style="color:black">MongoClient</span>;<br><span class="jskeywordcolor" style="color:mediumblue">var</span> url = <span class="jsstringcolor" style="color:brown">"mongodb://localhost:27017/"</span>;<br><span class="jsnumbercolor" style="color:red">
                            </span>  <br>MongoClient.<span class="jspropertycolor" style="color:black">connect</span>(url, <span class="jskeywordcolor" style="color:mediumblue">function</span>(err, db) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> dbo = db.<span class="jspropertycolor" style="color:black">db</span>(<span class="jsstringcolor" style="color:brown">"mydb"</span>);<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  dbo.<span class="jspropertycolor" style="color:black">collection</span>(<span class="jsstringcolor" style="color:brown">"customers"</span>).<span class="jspropertycolor" style="color:black">find</span>()<strong>.<span class="jspropertycolor" style="color:black">limit</span>(<span class="jsnumbercolor" style="color:red">5</span>)</strong>.<span class="jspropertycolor" style="color:black">toArray</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span>(err, result) {<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp;&nbsp;&nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(result);<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  db.<span class="jspropertycolor" style="color:black">close</span>();<br>&nbsp; });<br>}); </span></div>
                    <a class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_mongodb_limit" target="_blank">Run example »</a>
                </div>


                <p>Save the code above in a file called "demo_mongodb_limit.js" and run the file:</p>
                <div class="w3-example">
                    <p>Run "demo_mongodb_limit.js"</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_mongodb_limit.js
                    </div>
                </div>
                <p>Which will give you this result:</p>
                <div class="w3-example">
                    <h3>customers<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <div class="w3-code notranslate w3-black">[<br>&nbsp; { _id: 
                        58fdbf5c0ef8a50b4cdd9a84 , name: 'John', address: 'Highway 71'},<br>&nbsp; { _id: 
                        58fdbf5c0ef8a50b4cdd9a85 , name: 'Peter', address: 'Lowstreet 4'},<br>&nbsp; { 
                        _id: 58fdbf5c0ef8a50b4cdd9a86 , name: 'Amy', 
                        address: 'Apple st 652'},<br>&nbsp; { _id: 58fdbf5c0ef8a50b4cdd9a87 , name: 'Hannah', address: 
                        'Mountain 21'},<br>&nbsp; { _id: 58fdbf5c0ef8a50b4cdd9a88 , name: 'Michael', 
                        address: 'Valley 345'}<br>]</div>
                </div>

                <p>As you can see from the result above, only the 5 first documents were 
                    returned.</p>
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
