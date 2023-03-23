<%-- 
    Document   : lesson31
    Created on : Feb 21, 2023, 1:57:46 PM
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
                <h1>Node.js <span class="color_h1">MongoDB</span> Delete</h1>

                <hr>

                <h2>Delete Document</h2>
                <p>To delete a record, or document as it is called in MongoDB, we use the
                    <code class="w3-codespan">deleteOne()</code> method.</p>
                <p>The first parameter of the <code class="w3-codespan">deleteOne()</code> method 
                    is a query object defining which document to delete.</p>
                <div class="w3-panel w3-note">
                    <p><strong>Note:</strong> If the query finds more than one document, only the first 
                        occurrence is deleted.</p>
                </div>

                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Delete the document with the address "Mountain 21":</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> MongoClient = require(<span class="jsstringcolor" style="color:brown">'mongodb'</span>).<span class="jspropertycolor" style="color:black">MongoClient</span>;<br><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> url = <span class="jsstringcolor" style="color:brown">"mongodb://localhost:27017/"</span>;<br><br><span class="jsnumbercolor" style="color:red">
                            </span>  MongoClient.<span class="jspropertycolor" style="color:black">connect</span>(url, <span class="jskeywordcolor" style="color:mediumblue">function</span>(err, db) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> dbo = db.<span class="jspropertycolor" style="color:black">db</span>(<span class="jsstringcolor" style="color:brown">"mydb"</span>);<br><span class="jsnumbercolor" style="color:red">
                            </span>  <strong>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">var</span> myquery = { address: <span class="jsstringcolor" style="color:brown">'Mountain 21'</span> };<br></strong>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  dbo.<span class="jspropertycolor" style="color:black">collection</span>(<span class="jsstringcolor" style="color:brown">"customers"</span>).<span class="jspropertycolor" style="color:black">deleteOne</span>(myquery, <span class="jskeywordcolor" style="color:mediumblue">function</span>(err, obj) {<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp;&nbsp;&nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(<span class="jsstringcolor" style="color:brown">"1 
                                document deleted"</span>);<br>&nbsp;&nbsp;&nbsp; db.<span class="jspropertycolor" style="color:black">close</span>();<br>&nbsp; });<br>}); </span></div>
                    <a class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_delete" target="_blank">Run example »</a>
                </div>

                <p>Save the code above in a file called "demo_delete.js" and run the file:</p>
                <div class="w3-example">
                    <p>Run "demo_delete.js"</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_delete.js
                    </div>
                </div>
                <p>Which will give you this result:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">1 document deleted</div>
                </div>
                <hr>
                <div id="midcontentadcontainer" style="overflow:auto;text-align:center">
                    <!-- MidContent -->
                    <!-- <p class="adtext">Advertisement</p> -->

                    <div id="adngin-mid_content-0"></div>

                </div>
                <hr>
                <h2>Delete Many</h2>
                <p>To delete more than one document, use the
                    <code class="w3-codespan">deleteMany()</code> method.</p>
                <p>The first parameter of the <code class="w3-codespan">deleteMany()</code> method 
                    is a query object defining which documents to delete.</p>

                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Delete all documents were the address starts with the letter "O":</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> MongoClient = require(<span class="jsstringcolor" style="color:brown">'mongodb'</span>).<span class="jspropertycolor" style="color:black">MongoClient</span>;<br><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> url = <span class="jsstringcolor" style="color:brown">"mongodb://localhost:27017/"</span>;<br><br><span class="jsnumbercolor" style="color:red">
                            </span>  MongoClient.<span class="jspropertycolor" style="color:black">connect</span>(url, <span class="jskeywordcolor" style="color:mediumblue">function</span>(err, db) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> dbo = db.<span class="jspropertycolor" style="color:black">db</span>(<span class="jsstringcolor" style="color:brown">"mydb"</span>);<br><span class="jsnumbercolor" style="color:red">
                            </span>  <strong>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">var</span> myquery = { address: <span class="jsregexpcolor" style="color:#f50">/^O/</span> };<br></strong>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  dbo.<span class="jspropertycolor" style="color:black">collection</span>(<span class="jsstringcolor" style="color:brown">"customers"</span>).<span class="jspropertycolor" style="color:black">deleteMany</span>(myquery, <span class="jskeywordcolor" style="color:mediumblue">function</span>(err, obj) {<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp;&nbsp;&nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(obj.<span class="jspropertycolor" style="color:black">result</span>.<span class="jspropertycolor" style="color:black">n</span> + <span class="jsstringcolor" style="color:brown">" 
                                document(s) deleted"</span>);<br>&nbsp;&nbsp;&nbsp; db.<span class="jspropertycolor" style="color:black">close</span>();<br>&nbsp; });<br>}); </span></div>
                    <a class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_delete_many" target="_blank">Run example »</a>
                </div>

                <p>Save the code above in a file called "demo_delete_many.js" and run the file:</p>
                <div class="w3-example">
                    <p>Run "demo_delete_many.js"</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_delete_many.js
                    </div>
                </div>
                <p>Which will give you this result:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">2 document(s) deleted</div>
                </div>

                <hr>

                <h2>The Result Object</h2>
                <p>The <code class="w3-codespan">deleteMany()</code> method returns an object which contains information about how 
                    the execution affected the database.</p>
                <p>Most of the information is not important to understand, but one object inside 
                    the object is called "result" which tells us if the execution went OK, and how 
                    many documents were affected.</p>
                <p>The result object looks like this:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">
                        { n: 2, ok: 1 }</div>
                </div>

                <p>You can use this object to return the number of deleted documents:</p>


                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Return the number of deleted documents:</p>
                    <div class="w3-code notranslate w3-black">
                        console.log(obj.result.n);</div>
                </div>
                <p>Which will produce this result:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">
                        2</div>
                </div>

                <hr>

                <div id="mypagediv2" style="position:relative;text-align:center;"></div>
                <br>
                <h2>Video Learning</h2>
                <p>Link full video: <a href="https://youtu.be/ZEpiQcb5xJ0">https://youtu.be/ZEpiQcb5xJ0</a>
                    <br>
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/ZEpiQcb5xJ0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
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
