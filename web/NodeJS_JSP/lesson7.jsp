<%-- 
    Document   : lesson7.jsp
    Created on : Feb 21, 2023, 1:22:11 PM
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
                <h1>Node.js <span class="color_h1">URL Module</span></h1>

                <hr>

                <h2>The Built-in URL Module</h2>
                <p>The URL module splits up a web address into readable parts.</p>

                <p>To include the URL module, use the <code class="w3-codespan">require()</code> 
                    method:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> url = require(<span class="jsstringcolor" style="color:brown">'url'</span>); </span></div>
                </div>

                <p>Parse an address with the <code class="w3-codespan">url.parse()</code> 
                    method, and it will return a URL object with each part of the address as 
                    properties:</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Split a web address into readable parts:</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> url = require(<span class="jsstringcolor" style="color:brown">'url'</span>);<br><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> adr = <span class="jsstringcolor" style="color:brown">'http://localhost:8080/default.htm?year=2017&amp;month=february'</span>;<br><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> q = url.<span class="jspropertycolor" style="color:black">parse</span>(adr, <span class="jskeywordcolor" style="color:mediumblue">true</span>);<br><br><span class="jsnumbercolor" style="color:red">
                            </span>  console.<span class="jspropertycolor" style="color:black">log</span>(q.<span class="jspropertycolor" style="color:black">host</span>); <span class="commentcolor" style="color:green">//returns 'localhost:8080'<br></span><span class="jsnumbercolor" style="color:red">
                            </span>  console.<span class="jspropertycolor" style="color:black">log</span>(q.<span class="jspropertycolor" style="color:black">pathname</span>); <span class="commentcolor" style="color:green">//returns '/default.htm'<br></span>console.<span class="jspropertycolor" style="color:black">log</span>(q.<span class="jspropertycolor" style="color:black">search</span>); <span class="commentcolor" style="color:green">//returns '?year=2017&amp;month=february'<br></span><br><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> qdata = q.<span class="jspropertycolor" style="color:black">query</span>; <span class="commentcolor" style="color:green">//returns an object: { year: 2017, month: 'february' }<br></span><span class="jsnumbercolor" style="color:red">
                            </span>  console.<span class="jspropertycolor" style="color:black">log</span>(qdata.<span class="jspropertycolor" style="color:black">month</span>); <span class="commentcolor" style="color:green">//returns 'february'<br></span><span class="jsnumbercolor" style="color:red">
                            </span>   </span></div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_url">Run example »</a>
                </div>

                <hr>

                <h2>Node.js File Server</h2>

                <p>Now we know how to parse the query string, and in the previous chapter we 
                    learned how to make Node.js behave as a file 
                    server. Let us combine the two, and serve the file requested by the client.</p>
                <p>Create two html files and save them in the same folder as your node.js files.</p>
                <div class="w3-example">
                    <p>summer.html</p>
                    <div class="w3-code notranslate htmlHigh">
                        <span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>!DOCTYPE<span class="attributecolor" style="color:red"> html</span><span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>html<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>body<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>h1<span class="tagcolor" style="color:mediumblue">&gt;</span></span>Summer<span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/h1<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>p<span class="tagcolor" style="color:mediumblue">&gt;</span></span>I love 
                        the sun!<span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/p<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/body<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br>
                        <span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/html<span class="tagcolor" style="color:mediumblue">&gt;</span></span> </div>
                </div>
                <div class="w3-example">
                    <p>winter.html</p>
                    <div class="w3-code notranslate htmlHigh">
                        <span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>!DOCTYPE<span class="attributecolor" style="color:red"> html</span><span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>html<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>body<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>h1<span class="tagcolor" style="color:mediumblue">&gt;</span></span>Winter<span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/h1<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>p<span class="tagcolor" style="color:mediumblue">&gt;</span></span>I love 
                        the snow!<span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/p<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/body<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br>
                        <span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/html<span class="tagcolor" style="color:mediumblue">&gt;</span></span> </div>
                </div>
                <hr>
                <div id="midcontentadcontainer" style="overflow:auto;text-align:center">
                    <!-- MidContent -->
                    <!-- <p class="adtext">Advertisement</p> -->

                    <div id="adngin-mid_content-0"></div>

                </div>
                <hr>

                <p>Create a Node.js file that opens the requested file and returns the content 
                    to the client. If anything goes wrong, throw a 404 error:</p>
                <div class="w3-example">
                    <p>demo_fileserver.js:</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> http = require(<span class="jsstringcolor" style="color:brown">'http'</span>);<br><span class="jskeywordcolor" style="color:mediumblue">var</span> url = require(<span class="jsstringcolor" style="color:brown">'url'</span>);<br><span class="jskeywordcolor" style="color:mediumblue">var</span> fs = require(<span class="jsstringcolor" style="color:brown">'fs'</span>);<br><span class="jsnumbercolor" style="color:red">
                            </span>    <br>http.<span class="jspropertycolor" style="color:black">createServer</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span> <span class="jsnumbercolor" style="color:red">
                            </span>  (req, res) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">var</span> q = url.<span class="jspropertycolor" style="color:black">parse</span>(req.<span class="jspropertycolor" style="color:black">url</span>, <span class="jskeywordcolor" style="color:mediumblue">true</span>);<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">var</span> <span class="jsnumbercolor" style="color:red">
                            </span>    filename = <span class="jsstringcolor" style="color:brown">"."</span> + q.<span class="jspropertycolor" style="color:black">pathname</span>;<br>&nbsp; fs.<span class="jspropertycolor" style="color:black">readFile</span>(filename, <span class="jsnumbercolor" style="color:red">
                            </span>    <span class="jskeywordcolor" style="color:mediumblue">function</span>(err, data) {<br>&nbsp;&nbsp;&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) {<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; res.<span class="jspropertycolor" style="color:black">writeHead</span>(<span class="jsnumbercolor" style="color:red">404</span>, {<span class="jsstringcolor" style="color:brown">'Content-Type'</span>: <span class="jsstringcolor" style="color:brown">'text/html'</span>});<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    <span class="jskeywordcolor" style="color:mediumblue">return</span> res.<span class="jspropertycolor" style="color:black">end</span>(<span class="jsstringcolor" style="color:brown">"404 Not Found"</span>);<br>&nbsp;&nbsp;&nbsp; }&nbsp; <br>&nbsp;&nbsp;&nbsp; res.<span class="jspropertycolor" style="color:black">writeHead</span>(<span class="jsnumbercolor" style="color:red">200</span>, {<span class="jsstringcolor" style="color:brown">'Content-Type'</span>: <span class="jsstringcolor" style="color:brown">'text/html'</span>});<br>&nbsp;&nbsp;&nbsp; res.<span class="jspropertycolor" style="color:black">write</span>(data);<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    <span class="jskeywordcolor" style="color:mediumblue">return</span> res.<span class="jspropertycolor" style="color:black">end</span>();<br>&nbsp; });<br>}).<span class="jspropertycolor" style="color:black">listen</span>(<span class="jsnumbercolor" style="color:red">8080</span>); </span></div>
                </div>

                <p>Remember to initiate the file:</p>
                <div class="w3-example">
                    <p>Initiate demo_fileserver.js:</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_fileserver.js
                    </div>
                </div>
                <p>If you have followed the same steps on your computer, you should see two 
                    different results when opening these two addresses:</p>
                <p><a href="http://localhost:8080/summer.html" target="_blank">http://localhost:8080/summer.html</a></p>
                <div class="w3-example">
                    <p>Will produce this result:</p>
                    <div class="w3-code notranslate">
                        <h1>Summer</h1>
                        <p>I love the sun!</p>
                    </div>
                </div>
                <p><a href="http://localhost:8080/winter.html" target="_blank">http://localhost:8080/winter.html</a></p>
                <div class="w3-example">
                    <p>Will produce this result:</p>
                    <div class="w3-code notranslate">
                        <h1>Winter</h1>
                        <p>I love the snow!</p>
                    </div>
                </div>


                <hr>


                <div id="mypagediv2" style="position:relative;text-align:center;"></div>
                <hr>
                <h2>Video Learning</h2>
                <p>Link full video: <a href="https://youtu.be/BfwbQxIJz4Q">https://youtu.be/BfwbQxIJz4Q</a>
                    <br>
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/BfwbQxIJz4Q" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
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
