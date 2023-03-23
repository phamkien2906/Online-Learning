<%-- 
    Document   : lesson33
    Created on : Feb 21, 2023, 1:59:24 PM
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
                <h1>Node.js <span class="color_h1">MongoDB</span> Update</h1>

                <hr>

                <h2>Update Document</h2>
                <p>You can update a record, or document as it is called in MongoDB, by using 
                    the <code class="w3-codespan">updateOne()</code> method.</p>
                <p>The first parameter of the <code class="w3-codespan">updateOne()</code> method 
                    is a query object defining which document to update.</p>
                <div class="w3-panel w3-note">
                    <p><strong>Note:</strong> If the query finds more than one record, only the first 
                        occurrence is updated.</p>
                </div>
                <p>The second parameter  
                    is an object defining the new values of the document.<!-- By default, all fields in 
                    the 
                    document gets updated, (except the <code class="w3-codespan">_id</code> field) 
                    so remember to set the value of every field, otherwise the value will be left 
                    empty.--></p>


                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Update the document with the address "Valley 345" to name="Mickey" and 
                        address="Canyon 123":</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> MongoClient = require(<span class="jsstringcolor" style="color:brown">'mongodb'</span>).<span class="jspropertycolor" style="color:black">MongoClient</span>;<br><span class="jskeywordcolor" style="color:mediumblue">var</span> url = <span class="jsstringcolor" style="color:brown">"mongodb://127.0.0.1:27017/"</span>;<br><span class="jsnumbercolor" style="color:red">
                            </span>  <br>MongoClient.<span class="jspropertycolor" style="color:black">connect</span>(url, <span class="jskeywordcolor" style="color:mediumblue">function</span>(err, db) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> dbo = db.<span class="jspropertycolor" style="color:black">db</span>(<span class="jsstringcolor" style="color:brown">"mydb"</span>);<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> myquery = { address: <span class="jsstringcolor" style="color:brown">"Valley 345"</span> };<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">var</span> newvalues = { <span class="jsnumbercolor" style="color:red">
                            </span>  $set: {name: <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jsstringcolor" style="color:brown">"Mickey"</span>, address: <span class="jsstringcolor" style="color:brown">"Canyon 123"</span> } };<br>&nbsp; dbo.<span class="jspropertycolor" style="color:black">collection</span>(<span class="jsstringcolor" style="color:brown">"customers"</span>).<span class="jspropertycolor" style="color:black">updateOne</span>(myquery, <span class="jsnumbercolor" style="color:red">
                            </span>  newvalues, <span class="jskeywordcolor" style="color:mediumblue">function</span>(err, res) {<br>&nbsp;&nbsp;&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  console.<span class="jspropertycolor" style="color:black">log</span>(<span class="jsstringcolor" style="color:brown">"1 document updated"</span>);<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  db.<span class="jspropertycolor" style="color:black">close</span>();<br>&nbsp; });<br>}); </span></div>
                    <a class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_update_one" target="_blank">Run example »</a>
                </div>

                <p>Save the code above in a file called "demo_update_one.js" and run the file:</p>
                <div class="w3-example">
                    <p>Run "demo_update_one.js"</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_update_one.js
                    </div>
                </div>
                <p>Which will give you this result:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">1 document updated</div>
                </div>
                <hr>
                <div id="midcontentadcontainer" style="overflow:auto;text-align:center">
                    <!-- MidContent -->
                    <!-- <p class="adtext">Advertisement</p> -->

                    <div id="adngin-mid_content-0"></div>

                </div>
                <hr>
                <h2>Update Only Specific Fields</h2>
                <p>When using the <code class="w3-codespan">$set</code> operator, only the 
                    specified fields are updated:</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Update the address from "Valley 345" to "Canyon 123":</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  .<span class="jspropertycolor" style="color:black"></span>.<span class="jspropertycolor" style="color:black"></span>.<span class="jspropertycolor" style="color:black"></span><br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">var</span> myquery = { address: <span class="jsstringcolor" style="color:brown">"Valley 345"</span> };<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">var</span> newvalues <span class="jsnumbercolor" style="color:red">
                            </span>  = { <strong>$set: { address: <span class="jsstringcolor" style="color:brown">"Canyon 123"</span> }</strong> };<br>&nbsp; dbo.<span class="jspropertycolor" style="color:black">collection</span>(<span class="jsstringcolor" style="color:brown">"customers"</span>).<span class="jspropertycolor" style="color:black">updateOne</span>(myquery, <span class="jsnumbercolor" style="color:red">
                            </span>  newvalues, <span class="jskeywordcolor" style="color:mediumblue">function</span>(err, res) {<br>.<span class="jspropertycolor" style="color:black"></span>.<span class="jspropertycolor" style="color:black"></span>.<span class="jspropertycolor" style="color:black"></span> </span></div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_update_set">Run example »</a>
                </div>

                <hr>

                <h2>Update Many Documents</h2>
                <p>To update <em>all</em> documents that meets the criteria of the query, use 
                    the <code class="w3-codespan">updateMany()</code> method.</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Update all documents where the name starts with the letter "S":</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> MongoClient = require(<span class="jsstringcolor" style="color:brown">'mongodb'</span>).<span class="jspropertycolor" style="color:black">MongoClient</span>;<br><span class="jskeywordcolor" style="color:mediumblue">var</span> url = <span class="jsstringcolor" style="color:brown">"mongodb://127.0.0.1:27017/"</span>;<br><span class="jsnumbercolor" style="color:red">
                            </span>  <br>MongoClient.<span class="jspropertycolor" style="color:black">connect</span>(url, <span class="jskeywordcolor" style="color:mediumblue">function</span>(err, db) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> dbo = db.<span class="jspropertycolor" style="color:black">db</span>(<span class="jsstringcolor" style="color:brown">"mydb"</span>);<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> myquery = { address: <span class="jsregexpcolor" style="color:#f50">/^S/</span> };<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">var</span> newvalues = {$set: {name: <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jsstringcolor" style="color:brown">"Minnie"</span>} };<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  dbo.<span class="jspropertycolor" style="color:black">collection</span>(<span class="jsstringcolor" style="color:brown">"customers"</span>).<span class="jspropertycolor" style="color:black">updateMany</span>(myquery, newvalues, <span class="jskeywordcolor" style="color:mediumblue">function</span>(err, <span class="jsnumbercolor" style="color:red">
                            </span>  res) {<br>&nbsp;&nbsp;&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  console.<span class="jspropertycolor" style="color:black">log</span>(res.<span class="jspropertycolor" style="color:black">result</span>.<span class="jspropertycolor" style="color:black">nModified</span> + <span class="jsstringcolor" style="color:brown">" document(s) updated"</span>);<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  db.<span class="jspropertycolor" style="color:black">close</span>();<br>&nbsp; });<br>}); </span></div>
                    <a class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_update_many" target="_blank">Run example »</a>
                </div>

                <p>Save the code above in a file called "demo_update_many.js" and run the file:</p>
                <div class="w3-example">
                    <p>Run "demo_update_many.js"</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_update_many.js
                    </div>
                </div>
                <p>Which will give you this result:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">2 document(s) updated</div>
                </div>

                <hr>
                <h2>The Result Object</h2>
                <p>The <code class="w3-codespan">updateOne()</code> and the
                    <code class="w3-codespan">updateMany()</code> methods return an object which contains information about how 
                    the execution affected the database.</p>
                <p>Most of the information is not important to understand, but one object inside 
                    the object is called "result" which tells us if the execution went OK, and how 
                    many documents were affected.</p>
                <p>The result object looks like this:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">
                        { n: 1, nModified: 2, ok: 1 }</div>
                </div>

                <p>You can use this object to return the number of updated documents:</p>


                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Return the number of updated documents:</p>
                    <div class="w3-code notranslate w3-black">
                        console.log(res.result.nModified);</div>
                </div>
                <p>Which will produce this result:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">
                        2</div>
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
