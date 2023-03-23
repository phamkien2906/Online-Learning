<%-- 
    Document   : lesson4.jsp
    Created on : Feb 21, 2023, 1:19:07 PM
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
                <h1>Node.js <span class="color_h1">Modules</span></h1>

                <hr>

                <h2>What is a Module in Node.js?</h2>
                <p>Consider modules to be the same as JavaScript libraries.</p>
                <p>A set of functions you want to include in your application.</p>

                <hr>

                <h2>Built-in Modules</h2>
                <p>Node.js has a set of built-in modules which you can use without any further 
                    installation.</p>
                <p>Look at our <a href="ref_modules.asp">Built-in Modules Reference</a> for a 
                    complete list of modules.</p>
                <hr>
                <h2>Include Modules</h2>
                <p>To include a module, use the <code class="w3-codespan">require()</code> 
                    function with the name of the module:</p>

                <div class="w3-example">
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> http = require(<span class="jsstringcolor" style="color:brown">'http'</span>); </span></div>
                </div>

                <p>Now your application has access to the HTTP module, and is able to create a server:</p>

                <div class="w3-example">
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  http.<span class="jspropertycolor" style="color:black">createServer</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span> (req, res) {<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  res.<span class="jspropertycolor" style="color:black">writeHead</span>(<span class="jsnumbercolor" style="color:red">200</span>, {<span class="jsstringcolor" style="color:brown">'Content-Type'</span>: <span class="jsstringcolor" style="color:brown">'text/html'</span>});<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  res.<span class="jspropertycolor" style="color:black">end</span>(<span class="jsstringcolor" style="color:brown">'Hello World!'</span>);<br>}).<span class="jspropertycolor" style="color:black">listen</span>(<span class="jsnumbercolor" style="color:red">8080</span>); </span></div>
                </div>

                <hr>

                <h2>Create Your Own Modules</h2>
                <p>You can create your own modules, and easily include them in your applications.</p>
                <p>The following example creates a module that returns a date and time object:</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Create a module that returns the current date and time:</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  exports.<span class="jspropertycolor" style="color:black">myDateTime</span> = <span class="jskeywordcolor" style="color:mediumblue">function</span> () {<br>&nbsp;&nbsp;<span class="jskeywordcolor" style="color:mediumblue">return</span> Date();<br>}; </span></div>
                </div>
                <p>Use the <code class="w3-codespan">exports</code> keyword to make properties and methods available outside the module file.</p>
                <p>Save the code above in a file called "myfirstmodule.js"</p>
                <hr>
                <div id="midcontentadcontainer" style="overflow:auto;text-align:center">
                    <!-- MidContent -->
                    <!-- <p class="adtext">Advertisement</p> -->

                    <div id="adngin-mid_content-0"></div>

                </div>
                <hr>
                <h2>Include Your Own Module</h2>
                <p>Now you can include and use the module in any of your Node.js files.</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Use the module "myfirstmodule" in a Node.js file:</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> http = require(<span class="jsstringcolor" style="color:brown">'http'</span>);<br><span class="jsnumbercolor" style="color:red">
                            </span>  <strong><span class="jskeywordcolor" style="color:mediumblue">var</span> dt = require(<span class="jsstringcolor" style="color:brown">'./myfirstmodule'</span>);<br></strong><br><span class="jsnumbercolor" style="color:red">
                            </span>  http.<span class="jspropertycolor" style="color:black">createServer</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span> (req, res) {<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  res.<span class="jspropertycolor" style="color:black">writeHead</span>(<span class="jsnumbercolor" style="color:red">200</span>, {<span class="jsstringcolor" style="color:brown">'Content-Type'</span>: <span class="jsstringcolor" style="color:brown">'text/html'</span>});<br>&nbsp;<span class="jsnumbercolor" style="color:red">
                            </span>  res.<span class="jspropertycolor" style="color:black">write</span>(<span class="jsstringcolor" style="color:brown">"The date and time are currently: "</span> + <strong>dt.<span class="jspropertycolor" style="color:black">myDateTime</span>()</strong>);<br><span class="jsnumbercolor" style="color:red">
                            </span>  &nbsp;  <span class="jsnumbercolor" style="color:red">
                            </span>  res.<span class="jspropertycolor" style="color:black">end</span>();<br><span class="jsnumbercolor" style="color:red">
                            </span>  }).<span class="jspropertycolor" style="color:black">listen</span>(<span class="jsnumbercolor" style="color:red">8080</span>); </span></div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs.asp?filename=demo_module">Run example »</a>
                </div>
                <p>Notice that we use <code class="w3-codespan">./</code> to locate the module, that means that the 
                    module is located in the same folder as the Node.js file.</p>
                <p>Save the code above in a file called "demo_module.js", and initiate the file:</p>
                <div class="w3-example">
                    <p>Initiate demo_module.js:</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_module.js
                    </div>
                </div>
                <p>If you have followed the same steps on your computer, you will see the same result as the example: <a href="http://localhost:8080" target="_blank">http://localhost:8080</a></p>

                <hr>


                <div id="mypagediv2" style="position:relative;text-align:center;"></div>
                <hr>
                <h2>Video Learning</h2>
                <p>Link full video: <a href="https://youtu.be/fPf88MxlnEQ">https://youtu.be/fPf88MxlnEQ</a>
                    <br>
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/fPf88MxlnEQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
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
