<%-- 
    Document   : lesson5.jsp
    Created on : Feb 21, 2023, 1:20:25 PM
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
                <h1>Node.js <span class="color_h1">HTTP Module</span></h1>

                <hr>

                <h2>The Built-in HTTP Module</h2>
                <p>Node.js has a built-in module called HTTP, which allows Node.js to transfer 
                    data over the Hyper Text Transfer Protocol (HTTP).</p>
                <p>To include the HTTP module, use the
                    <code class="w3-codespan">require()</code> method:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> http = require(<span class="jsstringcolor" style="color:brown">'http'</span>); </span></div>
                </div>

                <hr>

                <h2>Node.js as a Web Server</h2>
                <p>The HTTP module can create an HTTP server that listens to 
                    server ports and gives a response back to 
                    the client.</p>
                <p>Use the <code class="w3-codespan">createServer()</code> method to create an 
                    HTTP server:</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> http = require(<span class="jsstringcolor" style="color:brown">'http'</span>);<br><br><span class="commentcolor" style="color:green">//create a server object:<br></span>http.<span class="jspropertycolor" style="color:black">createServer</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span> <span class="jsnumbercolor" style="color:red">
                            </span>  (req, res) {<br>&nbsp; res.<span class="jspropertycolor" style="color:black">write</span>(<span class="jsstringcolor" style="color:brown">'Hello World!'</span>); <span class="commentcolor" style="color:green">//write a response to the 
                                client<br></span>&nbsp; res.<span class="jspropertycolor" style="color:black">end</span>(); <span class="commentcolor" style="color:green">//end the response<br></span>}).<span class="jspropertycolor" style="color:black">listen</span>(<span class="jsnumbercolor" style="color:red">8080</span>); <span class="commentcolor" style="color:green">//the 
                                server object listens on port 8080 </span></span></div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs.asp?filename=demo_http">Run example »</a>
                </div>

                <p>The function passed into the <code class="w3-codespan">http.createServer()</code> 
                    method, will be executed when someone tries to access the 
                    computer on port 8080.</p>
                <p>Save the code above in a file called "demo_http.js", and initiate 
                    the file:</p>
                <div class="w3-example">
                    <p>Initiate demo_http.js:</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_http.js
                    </div>
                </div>
                <p>If you have followed the same steps on your computer, you will see the same result as the example: <a href="http://localhost:8080" target="_blank">http://localhost:8080</a></p>
                <hr>
                <div id="midcontentadcontainer" style="overflow:auto;text-align:center">
                    <!-- MidContent -->
                    <!-- <p class="adtext">Advertisement</p> -->

                    <div id="adngin-mid_content-0"></div>

                </div>
                <hr>
                <h2>Add an HTTP Header</h2>
                <p>If the response from the HTTP server is supposed to be displayed as HTML, you 
                    should include an HTTP header with the correct content type:</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> http = require(<span class="jsstringcolor" style="color:brown">'http'</span>);<br>http.<span class="jspropertycolor" style="color:black">createServer</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span> <span class="jsnumbercolor" style="color:red">
                            </span>  (req, res) {<br><strong>&nbsp; res.<span class="jspropertycolor" style="color:black">writeHead</span>(<span class="jsnumbercolor" style="color:red">200</span>, <span class="jsnumbercolor" style="color:red">
                                </span>  {<span class="jsstringcolor" style="color:brown">'Content-Type'</span>: <span class="jsstringcolor" style="color:brown">'text/html'</span>});<br></strong>&nbsp; res.<span class="jspropertycolor" style="color:black">write</span>(<span class="jsstringcolor" style="color:brown">'Hello 
                                World!'</span>);<br>&nbsp; res.<span class="jspropertycolor" style="color:black">end</span>();<br>}).<span class="jspropertycolor" style="color:black">listen</span>(<span class="jsnumbercolor" style="color:red">8080</span>); </span></div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs.asp?filename=demo_http_header">Run example »</a>
                </div>

                <p>The first argument of the <code class="w3-codespan">res.writeHead()</code> method is the status code, 200 means 
                    that 
                    all is OK, the second argument is an object containing the response headers.</p>

                <hr>

                <h2>Read the Query String</h2>

                <p>The function passed into the <code class="w3-codespan">http.createServer()</code> 
                    has a <code class="w3-codespan">req</code> argument that represents the request from the 
                    client, as an object (http.IncomingMessage object).</p>
                <p>This object has a property called "url" which holds the 
                    part of the url that comes after the domain name:</p>
                <div class="w3-example">
                    <p>demo_http_url.js</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> http = require(<span class="jsstringcolor" style="color:brown">'http'</span>);<br>http.<span class="jspropertycolor" style="color:black">createServer</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span> <span class="jsnumbercolor" style="color:red">
                            </span>  (<strong>req</strong>, res) {<br>&nbsp;&nbsp;res.<span class="jspropertycolor" style="color:black">writeHead</span>(<span class="jsnumbercolor" style="color:red">200</span>, {<span class="jsstringcolor" style="color:brown">'Content-Type'</span>: <span class="jsstringcolor" style="color:brown">'text/html'</span>});<br><span class="jsnumbercolor" style="color:red">
                            </span>  &nbsp; res.<span class="jspropertycolor" style="color:black">write</span>(<strong>req.<span class="jspropertycolor" style="color:black">url</span></strong>);<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  res.<span class="jspropertycolor" style="color:black">end</span>();<br>}).<span class="jspropertycolor" style="color:black">listen</span>(<span class="jsnumbercolor" style="color:red">8080</span>); </span></div>
                </div>

                <p>Save the code above in a file called "demo_http_url.js" and 
                    initiate the file:</p>
                <div class="w3-example">
                    <p>Initiate demo_http_url.js:</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_http_url.js
                    </div>
                </div>
                <p>If you have followed the same steps on your computer, you should see two 
                    different results when opening these two addresses:</p>
                <p><a href="http://localhost:8080/summer" target="_blank">http://localhost:8080/summer</a></p>
                <div class="w3-example">
                    <p>Will produce this result:</p>
                    <div class="w3-code notranslate">
                        /summer</div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs.asp?filename=demo_querystring_summer">Run example »</a>
                </div>
                <p><a href="http://localhost:8080/winter" target="_blank">http://localhost:8080/winter</a></p>
                <div class="w3-example">
                    <p>Will produce this result:</p>
                    <div class="w3-code notranslate">
                        /winter</div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs.asp?filename=demo_querystring_winter">Run example »</a>
                </div>

                <hr>
                <h2>Split the Query String</h2>
                <p>There are built-in modules to easily split the query string into readable 
                    parts, such as the URL module.</p>

                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Split the query string into readable parts:</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>    <span class="jskeywordcolor" style="color:mediumblue">var</span> http = require(<span class="jsstringcolor" style="color:brown">'http'</span>);<br><strong><span class="jskeywordcolor" style="color:mediumblue">var</span> url = require(<span class="jsstringcolor" style="color:brown">'url'</span>);<br><span class="jsnumbercolor" style="color:red">
                                </span>    </strong><br><span class="jsnumbercolor" style="color:red">
                            </span>    http.<span class="jspropertycolor" style="color:black">createServer</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span> (req, res) {<br>&nbsp; res.<span class="jspropertycolor" style="color:black">writeHead</span>(<span class="jsnumbercolor" style="color:red">200</span>, <span class="jsnumbercolor" style="color:red">
                            </span>    {<span class="jsstringcolor" style="color:brown">'Content-Type'</span>: <span class="jsstringcolor" style="color:brown">'text/html'</span>});<br><strong>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">var</span> q = url.<span class="jspropertycolor" style="color:black">parse</span>(req.<span class="jspropertycolor" style="color:black">url</span>, <span class="jsnumbercolor" style="color:red">
                                </span>    <span class="jskeywordcolor" style="color:mediumblue">true</span>).<span class="jspropertycolor" style="color:black">query</span>;<br></strong>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">var</span> txt = <strong>q.<span class="jspropertycolor" style="color:black">year</span></strong> + <span class="jsstringcolor" style="color:brown">" "</span> + <span class="jsnumbercolor" style="color:red">
                            </span>    <strong>q.<span class="jspropertycolor" style="color:black">month</span></strong>;<br>&nbsp; res.<span class="jspropertycolor" style="color:black">end</span>(txt);<br><span class="jsnumbercolor" style="color:red">
                            </span>    }).<span class="jspropertycolor" style="color:black">listen</span>(<span class="jsnumbercolor" style="color:red">8080</span>);<br><span class="jsnumbercolor" style="color:red">
                            </span>   </span></div>
                </div>

                <p>Save the code above in a file called "demo_querystring.js" and 
                    initiate the file:</p>
                <div class="w3-example">
                    <p>Initiate demo_querystring.js:</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_querystring.js
                    </div>
                </div>
                <p>The address:</p>
                <p>
                    <a href="http://localhost:8080/?year=2017&amp;month=July" target="_blank">http://localhost:8080/?year=2017&amp;month=July</a>
                </p>
                <div class="w3-example">
                    <p>Will produce this result:</p>
                    <div class="w3-code notranslate">
                        2017 July</div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs.asp?filename=demo_querystring_query">Run example »</a>
                </div>

                <p>Read more about the URL module in the <a href="nodejs_url.asp">Node.js URL 
                        Module</a> chapter.</p>
                <hr>

                <div id="mypagediv2" style="position:relative;text-align:center;"></div>
                <hr>
                <h2>Video Learning</h2>
                <p>Link full video: <a href="https://youtu.be/x8rlNT-gaBs">https://youtu.be/x8rlNT-gaBs</a>
                    <br>
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/x8rlNT-gaBs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
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
