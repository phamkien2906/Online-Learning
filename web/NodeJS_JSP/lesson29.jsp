<%-- 
    Document   : lesson29
    Created on : Feb 21, 2023, 1:55:44 PM
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
                <h1>Node.js <span class="color_h1">MongoDB</span> Query</h1>

                <hr>

                <h2>Filter the Result</h2>
                <p>When finding documents in a collection, you can filter the result by using a 
                    query object.</p>
                <p>The first argument of the <code class="w3-codespan">find()</code> method 
                    is a query object, and is used to limit the search.</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Find documents with the address "Park Lane 38":</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> MongoClient = require(<span class="jsstringcolor" style="color:brown">'mongodb'</span>).<span class="jspropertycolor" style="color:black">MongoClient</span>;<br><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> url = <span class="jsstringcolor" style="color:brown">"mongodb://localhost:27017/"</span>;<br><br>MongoClient.<span class="jspropertycolor" style="color:black">connect</span>(url, <span class="jskeywordcolor" style="color:mediumblue">function</span>(err, db) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> dbo = db.<span class="jspropertycolor" style="color:black">db</span>(<span class="jsstringcolor" style="color:brown">"mydb"</span>);<br><span class="jsnumbercolor" style="color:red">
                            </span>  <strong>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">var</span> query = { address: <span class="jsstringcolor" style="color:brown">"Park Lane 38"</span> };<br></strong>&nbsp; dbo.<span class="jspropertycolor" style="color:black">collection</span>(<span class="jsstringcolor" style="color:brown">"customers"</span>).<span class="jspropertycolor" style="color:black">find</span>(<strong>query</strong>).<span class="jspropertycolor" style="color:black">toArray</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span>(err, result) {<br>&nbsp;&nbsp;&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp;&nbsp;&nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(result);<br>&nbsp;&nbsp;&nbsp; db.<span class="jspropertycolor" style="color:black">close</span>();<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  });<br>}); </span></div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_mongodb_query">Run example »</a>
                </div>

                <p>Save the code above in a file called "demo_mongodb_query.js" and run the file:</p>
                <div class="w3-example">
                    <p>Run "demo_mongodb_query.js"</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_mongodb_query.js
                    </div>
                </div>
                <p>Which will give you this result:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">[<br>&nbsp; { _id: 58fdbf5c0ef8a50b4cdd9a8e 
                        , name: 'Ben', address: 'Park Lane 38' }<br>]</div>
                </div>
                <hr>
                <div id="midcontentadcontainer" style="overflow:auto;text-align:center">
                    <!-- MidContent -->
                    <!-- <p class="adtext">Advertisement</p> -->

                    <div id="adngin-mid_content-0"></div>

                </div>
                <hr>
                <h2>Filter With Regular Expressions</h2>
                <p>You can write regular expressions to find exactly what you are searching for.</p>


                <div class="w3-panel w3-note">
                    <p><strong>Regular expressions can only be used to query <em>strings</em>.</strong></p>
                </div>

                <p>To find only the documents where the "address" field starts with the letter "S", use the regular 
                    expression <code class="w3-codespan">/^S/</code>:</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Find documents where the address starts with the letter "S":</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> MongoClient = require(<span class="jsstringcolor" style="color:brown">'mongodb'</span>).<span class="jspropertycolor" style="color:black">MongoClient</span>;<br><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> url = <span class="jsstringcolor" style="color:brown">"mongodb://localhost:27017/"</span>;<br><br>MongoClient.<span class="jspropertycolor" style="color:black">connect</span>(url, <span class="jskeywordcolor" style="color:mediumblue">function</span>(err, db) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> dbo = db.<span class="jspropertycolor" style="color:black">db</span>(<span class="jsstringcolor" style="color:brown">"mydb"</span>);<br><span class="jsnumbercolor" style="color:red">
                            </span>  &nbsp; <span class="jskeywordcolor" style="color:mediumblue">var</span> query = { address: <strong><span class="jsregexpcolor" style="color:#f50">/^S/</span></strong> };<br>&nbsp; dbo.<span class="jspropertycolor" style="color:black">collection</span>(<span class="jsstringcolor" style="color:brown">"customers"</span>).<span class="jspropertycolor" style="color:black">find</span>(query).<span class="jspropertycolor" style="color:black">toArray</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span>(err, result) {<br>&nbsp;&nbsp;&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp;&nbsp;&nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(result);<br>&nbsp;&nbsp;&nbsp; db.<span class="jspropertycolor" style="color:black">close</span>();<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  });<br>}); </span></div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_mongodb_query_s">Run example »</a>
                </div>

                <p>Save the code above in a file called "demo_mongodb_query_s.js" and run the file:</p>
                <div class="w3-example">
                    <p>Run "demo_mongodb_query_s.js"</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_mongodb_query_s.js
                    </div>
                </div>
                <p>Which will give you this result:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">[<br>&nbsp; { _id: 
                        58fdbf5c0ef8a50b4cdd9a8b , name: 'Richard', 
                        address: 'Sky st 331' },<br>&nbsp; { _id: 58fdbf5c0ef8a50b4cdd9a91 , name: 'Viola', address: 'Sideway 
                        1633' }<br>]</div>
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
