<%-- 
    Document   : lesson23
    Created on : Feb 21, 2023, 1:48:59 PM
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
                <h1>Node.js <span class="color_h1">MySQL </span>Join</h1>

                <hr>

                <h2>Join Two or More Tables</h2>
                <p>You can combine rows from two or more tables, based on a related column 
                    between them, by using a JOIN statement.</p>

                <p>Consider you have a "users" table and a "products" table:</p>
                <div class="w3-example">
                    <h3>users<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <div class="w3-code notranslate w3-black">[<br>&nbsp; { id: 1, name: 'John', 
                        favorite_product: 154},<br>&nbsp; { id: 
                        2, name: 'Peter', favorite_product: 154},<br>&nbsp; { id: 3, name: 'Amy', 
                        favorite_product: 155},<br>&nbsp; { id: 4, name: 'Hannah', favorite_product:},<br>&nbsp; { id: 5, name: 'Michael', 
                        favorite_product:}<br>]</div>
                </div>

                <div class="w3-example">
                    <h3>products<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <div class="w3-code notranslate w3-black">[<br>&nbsp; { id: 154, name: 
                        'Chocolate Heaven' },<br>&nbsp; { id: 155, name: 'Tasty Lemons' },<br>&nbsp; { 
                        id: 156, name: 'Vanilla Dreams' }<br>]</div>
                </div>

                <p>These two tables can be combined by using users' <code class="w3-codespan">favorite_product</code> field and products' 
                    <code class="w3-codespan">id</code> field.</p>

                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Select records with a match in both tables:</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> mysql = require(<span class="jsstringcolor" style="color:brown">'mysql'</span>);<br><br><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> con = mysql.<span class="jspropertycolor" style="color:black">createConnection</span>({<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  host: <span class="jsstringcolor" style="color:brown">"localhost"</span>,<br>&nbsp; user: <span class="jsstringcolor" style="color:brown">"yourusername"</span>,<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  password: <span class="jsstringcolor" style="color:brown">"yourpassword"</span>,<br>&nbsp; database: <span class="jsstringcolor" style="color:brown">"mydb"</span><br>});<br><span class="jsnumbercolor" style="color:red">
                            </span>  <br>con.<span class="jspropertycolor" style="color:black">connect</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span>(err) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">var</span> <span class="jsnumbercolor" style="color:red">
                            </span>  sql = <span class="jsstringcolor" style="color:brown">"SELECT users.name AS user, products.name AS favorite FROM users <strong>
                                    JOIN products ON 
                                    users.favorite_product = products.id</strong>"</span>;<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  con.<span class="jspropertycolor" style="color:black">query</span>(sql, <span class="jskeywordcolor" style="color:mediumblue">function</span> (err, result) {<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp;&nbsp;&nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(result);<br>&nbsp; });<br><span class="jsnumbercolor" style="color:red">
                            </span>  }); </span></div>
                    <a class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_db_join" target="_blank">Run example »</a>
                </div>
                <div class="w3-panel w3-note">
                    <p><strong>Note:</strong> You can use INNER JOIN instead of JOIN. They will 
                        both give you the same result.</p>
                </div>


                <p>Save the code above in a file called "demo_db_join.js" and run the file:</p>
                <div class="w3-example">
                    <p>Run "demo_db_join.js"</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_db_join.js
                    </div>
                </div>
                <p>Which will give you this result:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">[<br>&nbsp; { user: 'John', favorite: 
                        'Chocolate Heaven' },<br>&nbsp; { user: 'Peter', favorite: 'Chocolate Heaven' },<br>&nbsp; { 
                        user: 'Amy', favorite: 'Tasty Lemons' }<br>]</div>
                </div>
                <p>As you can see from the result above, only the records with a match in both 
                    tables are returned.</p>
                <hr>
                <div id="midcontentadcontainer" style="overflow:auto;text-align:center">
                    <!-- MidContent -->
                    <!-- <p class="adtext">Advertisement</p> -->

                    <div id="adngin-mid_content-0"></div>

                </div>
                <hr>
                <h2>Left Join</h2>
                <p>If you want to return <em>all</em> users, no matter if they have a favorite product or 
                    not, use the LEFT JOIN statement:</p>

                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Select all users and their favorite product:</p>
                    <div class="w3-code notranslate">
                        SELECT users.name AS user,<br>products.name AS favorite<br>FROM users<strong><br>LEFT
                            JOIN</strong> products ON users.favorite_product = products.id<br></div>
                    <a class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_db_left_join" target="_blank">Run example »</a>
                </div>


                <p>Which will give you this result:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">[<br>&nbsp; { user: 'John', favorite: 
                        'Chocolate Heaven' },<br>&nbsp; { user: 'Peter', favorite: 'Chocolate Heaven' },<br>&nbsp; { 
                        user: 'Amy', favorite: 'Tasty Lemons' },<br>&nbsp; { 
                        user: 'Hannah', favorite: null },<br>&nbsp; { user: 'Michael', favorite: null }<br>]</div>
                </div>
                <hr>
                <h2>Right Join</h2>
                <p>If you want to return all products, and the users who have them as their 
                    favorite, even if no user have them as their favorite, use the RIGHT JOIN 
                    statement:</p>

                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Select all products and the user who have them as their favorite:</p>
                    <div class="w3-code notranslate">
                        SELECT users.name AS user,<br>products.name AS favorite<br>FROM users<strong><br>RIGHT
                            JOIN</strong> products ON users.favorite_product = products.id</div>
                    <a class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_db_right_join" target="_blank">Run example »</a>
                </div>


                <p>Which will give you this result:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">[<br>&nbsp; { user: 'John', favorite: 
                        'Chocolate Heaven' },<br>&nbsp; { user: 'Peter', favorite: 'Chocolate Heaven' },<br>&nbsp; { 
                        user: 'Amy', favorite: 'Tasty Lemons' },<br>&nbsp; { 
                        user: null, favorite: 'Vanilla Dreams' }<br>]</div>
                </div>
                <div class="w3-panel w3-note">
                    <p><strong>Note:</strong> Hannah and Michael, who have no favorite product, are not included in the result.</p>
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
