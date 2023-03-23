<%-- 
    Document   : lesson27
    Created on : Feb 21, 2023, 1:53:19 PM
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
                <h1>Node.js <span class="color_h1">MongoDB</span> Insert</h1>

                <hr>

                <h2>Insert Into Collection</h2>
                <p>To insert a record, or <em>document</em> as it is called in MongoDB, into a collection, we use the 
                    <code class="w3-codespan">insertOne()</code> method.</p>

                <div class="w3-panel w3-note">
                    <p>A <strong>document</strong> in MongoDB is the same as a <strong>record</strong> in MySQL</p>
                </div>

                <p>The first parameter of the <code class="w3-codespan">insertOne()</code> method is an object containing the 
                    name(s) and value(s) of each field in the document you want to insert.</p>
                <p>It also takes a callback function where you can work with any errors, or the 
                    result of the insertion:</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Insert a document in the "customers" collection:</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> MongoClient = require(<span class="jsstringcolor" style="color:brown">'mongodb'</span>).<span class="jspropertycolor" style="color:black">MongoClient</span>;<br><span class="jskeywordcolor" style="color:mediumblue">var</span> url = <span class="jsstringcolor" style="color:brown">"mongodb://localhost:27017/"</span>;<br><span class="jsnumbercolor" style="color:red">
                            </span>  <br>MongoClient.<span class="jspropertycolor" style="color:black">connect</span>(url, <span class="jskeywordcolor" style="color:mediumblue">function</span>(err, db) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> dbo = db.<span class="jspropertycolor" style="color:black">db</span>(<span class="jsstringcolor" style="color:brown">"mydb"</span>);<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> myobj = { name: <span class="jsstringcolor" style="color:brown">"Company 
                                Inc"</span>, address: <span class="jsstringcolor" style="color:brown">"Highway 37"</span> };<br>&nbsp; dbo.<span class="jspropertycolor" style="color:black">collection</span>(<span class="jsstringcolor" style="color:brown">"customers"</span>).<span class="jspropertycolor" style="color:black">insertOne</span>(myobj, <span class="jskeywordcolor" style="color:mediumblue">function</span>(err, res) {<br><span class="jsnumbercolor" style="color:red">
                            </span>  &nbsp;&nbsp;&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp;&nbsp;&nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(<span class="jsstringcolor" style="color:brown">"1 
                                document 
                                inserted"</span>);<br>&nbsp;&nbsp;&nbsp; db.<span class="jspropertycolor" style="color:black">close</span>();<br>&nbsp; });<br>}); </span></div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_mongodb_insert">Run example »</a>

                </div>

                <p>Save the code above in a file called "demo_mongodb_insert.js" and run the file:</p>
                <div class="w3-example">
                    <p>Run "demo_mongodb_insert.js"</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_mongodb_insert.js
                    </div>
                </div>
                <p>Which will give you this result:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">
                        1 document inserted</div>
                </div>

                <div class="w3-panel w3-note">
                    <p><strong>Note:</strong> If you try to insert documents in a collection that do not 
                        exist, MongoDB will create the collection automatically.</p>
                </div>
                <hr>
                <div id="midcontentadcontainer" style="overflow:auto;text-align:center">
                    <!-- MidContent -->
                    <!-- <p class="adtext">Advertisement</p> -->

                    <div id="adngin-mid_content-0"></div>

                </div>
                <hr>
                <h2>Insert Multiple Documents</h2>
                <p>To insert multiple documents into a collection in MongoDB, we use the 
                    <code class="w3-codespan">insertMany()</code> method.</p>
                <p>The first parameter of the <code class="w3-codespan">insertMany()</code> method 
                    is an array of objects, containing the data you want to 
                    insert.</p>
                <p>It also takes a callback function where you can work with any errors, or the 
                    result of the insertion:</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Insert multiple documents in the "customers" collection:</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> MongoClient = require(<span class="jsstringcolor" style="color:brown">'mongodb'</span>).<span class="jspropertycolor" style="color:black">MongoClient</span>;<br><span class="jskeywordcolor" style="color:mediumblue">var</span> url = <span class="jsstringcolor" style="color:brown">"mongodb://localhost:27017/"</span>;<br><span class="jsnumbercolor" style="color:red">
                            </span>  <br>MongoClient.<span class="jspropertycolor" style="color:black">connect</span>(url, <span class="jskeywordcolor" style="color:mediumblue">function</span>(err, db) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> dbo = db.<span class="jspropertycolor" style="color:black">db</span>(<span class="jsstringcolor" style="color:brown">"mydb"</span>);<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> myobj = [<br>&nbsp;&nbsp;&nbsp; { name: <span class="jsstringcolor" style="color:brown">'John'</span>, address: <span class="jsstringcolor" style="color:brown">'Highway 71'</span>},<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  { name: <span class="jsstringcolor" style="color:brown">'Peter'</span>, address: <span class="jsstringcolor" style="color:brown">'Lowstreet 4'</span>},<br>&nbsp;&nbsp;&nbsp; { name: <span class="jsstringcolor" style="color:brown">'Amy'</span>, <span class="jsnumbercolor" style="color:red">
                            </span>  address: <span class="jsstringcolor" style="color:brown">'Apple st 652'</span>},<br>&nbsp;&nbsp;&nbsp; { name: <span class="jsstringcolor" style="color:brown">'Hannah'</span>, address: <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jsstringcolor" style="color:brown">'Mountain 21'</span>},<br>&nbsp;&nbsp;&nbsp; { name: <span class="jsstringcolor" style="color:brown">'Michael'</span>, address: <span class="jsstringcolor" style="color:brown">'Valley 
                                345'</span>},<br>&nbsp;&nbsp;&nbsp; { name: <span class="jsstringcolor" style="color:brown">'Sandy'</span>, address: <span class="jsstringcolor" style="color:brown">'Ocean blvd 2'</span>},<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  { name: <span class="jsstringcolor" style="color:brown">'Betty'</span>, address: <span class="jsstringcolor" style="color:brown">'Green Grass 1'</span>},<br>&nbsp;&nbsp;&nbsp; { name: <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jsstringcolor" style="color:brown">'Richard'</span>, address: <span class="jsstringcolor" style="color:brown">'Sky st 331'</span>},<br>&nbsp;&nbsp;&nbsp; { name: <span class="jsstringcolor" style="color:brown">'Susan'</span>, <span class="jsnumbercolor" style="color:red">
                            </span>  address: <span class="jsstringcolor" style="color:brown">'One way 98'</span>},<br>&nbsp;&nbsp;&nbsp; { name: <span class="jsstringcolor" style="color:brown">'Vicky'</span>, address: <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jsstringcolor" style="color:brown">'Yellow Garden 2'</span>},<br>&nbsp;&nbsp;&nbsp; { name: <span class="jsstringcolor" style="color:brown">'Ben'</span>, address: <span class="jsstringcolor" style="color:brown">'Park Lane 
                                38'</span>},<br>&nbsp;&nbsp;&nbsp; { name: <span class="jsstringcolor" style="color:brown">'William'</span>, address: <span class="jsstringcolor" style="color:brown">'Central st 954'</span>},<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  { name: <span class="jsstringcolor" style="color:brown">'Chuck'</span>, address: <span class="jsstringcolor" style="color:brown">'Main Road 989'</span>},<br>&nbsp;&nbsp;&nbsp; { name: <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jsstringcolor" style="color:brown">'Viola'</span>, address: <span class="jsstringcolor" style="color:brown">'Sideway 1633'</span>}<br>&nbsp; ];<br>&nbsp; dbo.<span class="jspropertycolor" style="color:black">collection</span>(<span class="jsstringcolor" style="color:brown">"customers"</span>).<span class="jspropertycolor" style="color:black">insertMany</span>(myobj, <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">function</span>(err, res) {<br>&nbsp;&nbsp;&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  console.<span class="jspropertycolor" style="color:black">log</span>(<span class="jsstringcolor" style="color:brown">"Number of documents inserted: "</span> + res.<span class="jspropertycolor" style="color:black">insertedCount</span>);<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  db.<span class="jspropertycolor" style="color:black">close</span>();<br>&nbsp; });<br>}); </span></div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_mongodb_insert_multiple">Run example »</a>

                </div>

                <p>Save the code above in a file called "demo_mongodb_insert_multiple.js" and run the file:</p>
                <div class="w3-example">
                    <p>Run "demo_mongodb_insert_multiple.js"</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_mongodb_insert_multiple.js
                    </div>
                </div>
                <p>Which will give you this result:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">
                        Number of documents inserted: 14</div>
                </div>
                <hr>

                <h2>The Result Object</h2>
                <p>When executing the <code class="w3-codespan">insertMany()</code> method, a result object is returned.</p>
                <p>The result object contains information about how the insertion affected the 
                    database.</p>
                <p>The object returned from the example above looked like this:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  {<br>&nbsp; result: { ok: <span class="jsnumbercolor" style="color:red">1</span>, n: <span class="jsnumbercolor" style="color:red">14</span> },<br>&nbsp; ops: [<br>&nbsp;&nbsp;&nbsp; { <span class="jsnumbercolor" style="color:red">
                            </span>  name: <span class="jsstringcolor" style="color:brown">'John'</span>, address: <span class="jsstringcolor" style="color:brown">'Highway 71'</span>, _id: 58fdbf5c0ef8a50b4cdd9a84 },<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  { name: <span class="jsstringcolor" style="color:brown">'Peter'</span>, address: <span class="jsstringcolor" style="color:brown">'Lowstreet 4'</span>, _id: 58fdbf5c0ef8a50b4cdd9a85 },<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  { name: <span class="jsstringcolor" style="color:brown">'Amy'</span>, address: <span class="jsstringcolor" style="color:brown">'Apple st 652'</span>, _id: 58fdbf5c0ef8a50b4cdd9a86 },<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  { name: <span class="jsstringcolor" style="color:brown">'Hannah'</span>, address: <span class="jsstringcolor" style="color:brown">'Mountain 21'</span>, _id: 58fdbf5c0ef8a50b4cdd9a87 },<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  { name: <span class="jsstringcolor" style="color:brown">'Michael'</span>, address: <span class="jsstringcolor" style="color:brown">'Valley 345'</span>, _id: 58fdbf5c0ef8a50b4cdd9a88 },<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  { name: <span class="jsstringcolor" style="color:brown">'Sandy'</span>, address: <span class="jsstringcolor" style="color:brown">'Ocean blvd 2'</span>, _id: 58fdbf5c0ef8a50b4cdd9a89 },<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  { name: <span class="jsstringcolor" style="color:brown">'Betty'</span>, address: <span class="jsstringcolor" style="color:brown">'Green Grass 1'</span>, _id: 58fdbf5c0ef8a50b4cdd9a8a },<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  { name: <span class="jsstringcolor" style="color:brown">'Richard'</span>, address: <span class="jsstringcolor" style="color:brown">'Sky st 331'</span>, _id: 58fdbf5c0ef8a50b4cdd9a8b },<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  { name: <span class="jsstringcolor" style="color:brown">'Susan'</span>, address: <span class="jsstringcolor" style="color:brown">'One way 98'</span>, _id: 58fdbf5c0ef8a50b4cdd9a8c },<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  { name: <span class="jsstringcolor" style="color:brown">'Vicky'</span>, address: <span class="jsstringcolor" style="color:brown">'Yellow Garden 2'</span>, _id: 58fdbf5c0ef8a50b4cdd9a8d },<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  { name: <span class="jsstringcolor" style="color:brown">'Ben'</span>, address: <span class="jsstringcolor" style="color:brown">'Park Lane 38'</span>, _id: 58fdbf5c0ef8a50b4cdd9a8e },<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  { name: <span class="jsstringcolor" style="color:brown">'William'</span>, address: <span class="jsstringcolor" style="color:brown">'Central st 954'</span>, _id: 58fdbf5c0ef8a50b4cdd9a8f },<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  { name: <span class="jsstringcolor" style="color:brown">'Chuck'</span>, address: <span class="jsstringcolor" style="color:brown">'Main Road 989'</span>, _id: 58fdbf5c0ef8a50b4cdd9a90 },<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  { name: <span class="jsstringcolor" style="color:brown">'Viola'</span>, address: <span class="jsstringcolor" style="color:brown">'Sideway 1633'</span>, _id: 58fdbf5c0ef8a50b4cdd9a91 } ],<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  insertedCount: <span class="jsnumbercolor" style="color:red">14</span>,<br>&nbsp; insertedIds: [<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  58fdbf5c0ef8a50b4cdd9a84,<br>&nbsp;&nbsp;&nbsp; 58fdbf5c0ef8a50b4cdd9a85,<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  58fdbf5c0ef8a50b4cdd9a86,<br>&nbsp;&nbsp;&nbsp; 58fdbf5c0ef8a50b4cdd9a87,<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  58fdbf5c0ef8a50b4cdd9a88,<br>&nbsp;&nbsp;&nbsp; 58fdbf5c0ef8a50b4cdd9a89,<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  58fdbf5c0ef8a50b4cdd9a8a,<br>&nbsp;&nbsp;&nbsp; 58fdbf5c0ef8a50b4cdd9a8b,<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  58fdbf5c0ef8a50b4cdd9a8c,<br>&nbsp;&nbsp;&nbsp; 58fdbf5c0ef8a50b4cdd9a8d,<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  58fdbf5c0ef8a50b4cdd9a8e,<br>&nbsp;&nbsp;&nbsp; 58fdbf5c0ef8a50b4cdd9a8f <br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  58fdbf5c0ef8a50b4cdd9a90,<br>&nbsp;&nbsp;&nbsp; 58fdbf5c0ef8a50b4cdd9a91 ]<br><span class="jsnumbercolor" style="color:red">
                            </span>  } </span></div>
                </div>

                <p>The values of the properties can be displayed like this:</p>

                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Return the number of inserted documents:</p>
                    <div class="w3-code notranslate w3-black">
                        console.log(res.insertedCount)
                    </div>
                </div>
                <p>Which will produce this result:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">
                        14</div>
                </div>

                <hr>

                <h2>The _id Field</h2>
                <p>If you do not specify an <code class="w3-codespan">_id</code> field, then MongoDB 
                    will add one for you and assign a unique id for each document.</p>
                <p>In the example above no <code class="w3-codespan">_id</code> field was 
                    specified, and as you can see from the result object, MongoDB assigned a unique 
                    _id for each document.</p>
                <p>If you <em>do</em> specify the <code class="w3-codespan">_id</code> field, the value must 
                    be unique for each document:</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Insert three records in a "products" table, with specified 
                        <code class="w3-codespan">_id</code> fields:</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> MongoClient = require(<span class="jsstringcolor" style="color:brown">'mongodb'</span>).<span class="jspropertycolor" style="color:black">MongoClient</span>;<br><span class="jskeywordcolor" style="color:mediumblue">var</span> url = <span class="jsstringcolor" style="color:brown">"mongodb://localhost:27017/"</span>;<br><span class="jsnumbercolor" style="color:red">
                            </span>  <br>MongoClient.<span class="jspropertycolor" style="color:black">connect</span>(url, <span class="jskeywordcolor" style="color:mediumblue">function</span>(err, db) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> dbo = db.<span class="jspropertycolor" style="color:black">db</span>(<span class="jsstringcolor" style="color:brown">"mydb"</span>);<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> myobj = [<br>&nbsp;&nbsp;&nbsp; { <strong>_id: 154</strong>, name: <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jsstringcolor" style="color:brown">'Chocolate Heaven'</span>},<br>&nbsp;&nbsp;&nbsp; { <strong>_id: 155</strong>, name: <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jsstringcolor" style="color:brown">'Tasty Lemon'</span>},<br>&nbsp;&nbsp;&nbsp; { <strong>_id: 156</strong>, name: <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jsstringcolor" style="color:brown">'Vanilla Dream'</span>}<br>&nbsp; ];<br>&nbsp; dbo.<span class="jspropertycolor" style="color:black">collection</span>(<span class="jsstringcolor" style="color:brown">"products"</span>).<span class="jspropertycolor" style="color:black">insertMany</span>(myobj, <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">function</span>(err, res) {<br>&nbsp;&nbsp;&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  console.<span class="jspropertycolor" style="color:black">log</span>(res);<br>&nbsp;&nbsp;&nbsp; db.<span class="jspropertycolor" style="color:black">close</span>();<br>&nbsp; });<br>}); </span></div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_mongodb_insert_id">Run example »</a>

                </div>
                <p>Save the code above in a file called "demo_mongodb_insert_id.js" and run the file:</p>
                <div class="w3-example">
                    <p>Run "demo_mongodb_insert_id.js"</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_mongodb_insert_id.js
                    </div>
                </div>
                <p>Which will give you this result:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">
                        {<br>&nbsp; result: { ok: 1, n: 3 },<br>&nbsp; ops: [<br>&nbsp;&nbsp;&nbsp; { 
                        _id: 154, name: 'Chocolate Heaven },<br>&nbsp;&nbsp;&nbsp; { 
                        _id: 155, name: 'Tasty Lemon },<br>&nbsp;&nbsp;&nbsp; { 
                        _id: 156, name: 'Vanilla Dream } ],<br>&nbsp; 
                        insertedCount: 3,<br>&nbsp; insertedIds: [<br>&nbsp;&nbsp;&nbsp; 
                        154,<br>&nbsp;&nbsp;&nbsp; 155,<br>&nbsp;&nbsp;&nbsp; 
                        156 ]<br>
                        }</div>
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
