<%-- 
    Document   : lesson26
    Created on : Feb 21, 2023, 1:52:19 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="../Menu_lesson/header_menu.jsp"></jsp:include>
        <div class="w3-col l10 m12" class="main" style="margin: 0 100px;padding-top: 0px">
        </head>
        <body>
        <jsp:include page="../Menu_lesson/header_menu.jsp"></jsp:include>
            <div class="w3-col l10 m12" class="main" style="margin: 0 100px;padding-top: 0px">
                <h1>Node.js <span class="color_h1">MongoDB</span> Create Collection</h1>

                <hr>
                <div class="w3-panel w3-note">
                    <p>A <strong>collection</strong> in MongoDB is the same as a <strong>table</strong> in MySQL</p>
                </div>

                <h2>Creating a Collection</h2>
                <p>To create a collection in MongoDB, use the <code class="w3-codespan">createCollection()</code> method:</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Create a collection called "customers":</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> MongoClient = require(<span class="jsstringcolor" style="color:brown">'mongodb'</span>).<span class="jspropertycolor" style="color:black">MongoClient</span>;<br><span class="jskeywordcolor" style="color:mediumblue">var</span> url = <span class="jsstringcolor" style="color:brown">"mongodb://localhost:27017/"</span>;<br><span class="jsnumbercolor" style="color:red">
                            </span>  <br>MongoClient.<span class="jspropertycolor" style="color:black">connect</span>(url, <span class="jskeywordcolor" style="color:mediumblue">function</span>(err, db) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> dbo = db.<span class="jspropertycolor" style="color:black">db</span>(<span class="jsstringcolor" style="color:brown">"mydb"</span>);<br><span class="jsnumbercolor" style="color:red">
                            </span>  &nbsp; dbo.<span class="jspropertycolor" style="color:black">createCollection</span>(<span class="jsstringcolor" style="color:brown">"customers"</span>, <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">function</span>(err, res) {<br>&nbsp;&nbsp;&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp;&nbsp;&nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(<span class="jsstringcolor" style="color:brown">"Collection created!"</span>);<br>&nbsp;&nbsp;&nbsp; db.<span class="jspropertycolor" style="color:black">close</span>();<br>&nbsp; });<br>}); </span></div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_mongodb_createcollection">Run example »</a>
                </div>

                <p>Save the code above in a file called "demo_mongodb_createcollection.js" and run the file:</p>
                <div class="w3-example">
                    <p>Run "demo_mongodb_createcollection.js"</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_mongodb_createcollection.js
                    </div>
                </div>
                <p>Which will give you this result:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">
                        Collection created!</div>
                </div>

                <div class="w3-panel w3-note">
                    <p><strong>Important:</strong> In MongoDB, a collection is not created until it 
                        gets content!</p>
                </div>

                <p>MongoDB waits until you have inserted a document before it actually creates the collection.</p>

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
