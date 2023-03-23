<%-- 
    Document   : lesson35
    Created on : Feb 21, 2023, 2:01:04 PM
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
                <h1>Node.js <span class="color_h1">MongoDB</span> Join</h1>

                <hr>

                <h2>Join Collections</h2>
                <p>MongoDB is not a relational database, but you can perform a left outer join 
                    by using the <code class="w3-codespan">$lookup</code> stage.</p>
                <p>The <code class="w3-codespan">$lookup</code> stage lets you specify which 
                    collection you want to join with the current collection, and which 
                    fields that should match.</p>

                <p>Consider you have a "orders" collection and a "products" collection:</p>
                <div class="w3-example">
                    <h3>orders<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <div class="w3-code notranslate w3-black">[<br>&nbsp; { _id: 1, product_id: 
                        154, status: 1 }<br>]</div>
                </div>

                <div class="w3-example">
                    <h3>products<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <div class="w3-code notranslate w3-black">[<br>&nbsp; { _id: 154, name: 
                        'Chocolate Heaven' },<br>&nbsp; { _id: 155, name: 'Tasty Lemons' },<br>&nbsp; { 
                        _id: 156, name: 'Vanilla Dreams' }<br>]</div>
                </div>

                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Join the matching "products" document(s) to the "orders" collection:</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> MongoClient = require(<span class="jsstringcolor" style="color:brown">'mongodb'</span>).<span class="jspropertycolor" style="color:black">MongoClient</span>;<br><span class="jskeywordcolor" style="color:mediumblue">var</span> url = <span class="jsstringcolor" style="color:brown">"mongodb://127.0.0.1:27017/"</span>;<br><span class="jsnumbercolor" style="color:red">
                            </span>  <br>MongoClient.<span class="jspropertycolor" style="color:black">connect</span>(url, <span class="jskeywordcolor" style="color:mediumblue">function</span>(err, db) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> dbo = db.<span class="jspropertycolor" style="color:black">db</span>(<span class="jsstringcolor" style="color:brown">"mydb"</span>);<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  dbo.<span class="jspropertycolor" style="color:black">collection</span>(<span class="jsstringcolor" style="color:brown">'orders'</span>).<span class="jspropertycolor" style="color:black">aggregate</span>([<br><strong>&nbsp;&nbsp;&nbsp; { $lookup:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                                </span>  {<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from: <span class="jsstringcolor" style="color:brown">'products'</span>,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                                </span>  localField: <span class="jsstringcolor" style="color:brown">'product_id'</span>,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                                </span>  foreignField: <span class="jsstringcolor" style="color:brown">'_id'</span>,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                                </span>  as: <span class="jsstringcolor" style="color:brown">'orderdetails'</span><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>&nbsp;&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                                </span>  }<br></strong>&nbsp;&nbsp;&nbsp; ]).<span class="jspropertycolor" style="color:black">toArray</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span>(err, <span class="jsnumbercolor" style="color:red">
                            </span>  res) {<br>&nbsp;&nbsp;&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  console.<span class="jspropertycolor" style="color:black">log</span>(JSON.<span class="jspropertycolor" style="color:black">stringify</span>(res));<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  db.<span class="jspropertycolor" style="color:black">close</span>();<br>&nbsp; });<br>}); </span></div>
                    <a class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_mongodb_join" target="_blank">Run example »</a>
                </div>


                <p>Save the code above in a file called "demo_mongodb_join.js" and run the file:</p>
                <div class="w3-example">
                    <p>Run "demo_mongodb_join.js"</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_mongodb_join.js
                    </div>
                </div>
                <p>Which will give you this result:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">[<br>&nbsp; { "_id": 1, "product_id": 
                        154, "status": 1, "orderdetails": [<br>&nbsp;&nbsp;&nbsp; { "_id": 154, "name": 
                        "Chocolate Heaven" } ]<br>&nbsp; }<br>]</div>
                </div>
                <p>As you can see from the result above, the matching document from the products 
                    collection is included in the orders collection as an array.</p>
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
