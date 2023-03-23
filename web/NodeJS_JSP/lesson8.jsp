<%-- 
    Document   : lesson8.jsp
    Created on : Feb 21, 2023, 1:23:02 PM
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
                <h1>Node.js <span class="color_h1">NPM</span></h1>

                <hr>
                <h2>What is NPM?</h2>
                <p>NPM is a package manager for Node.js packages, or modules if you like.</p>
                <p><a href="https://www.npmjs.com" target="_blank">www.npmjs.com</a> hosts thousands of 
                    free packages to download and use.</p>
                <p>The NPM program is installed on your computer when you install Node.js</p>
                <div class="w3-panel w3-note">
                    <p>NPM is already ready to run on your computer!</p>
                </div>

                <hr>

                <h2>What is a Package?</h2>
                <p>A package in Node.js contains all the files you need for a module.</p>
                <p>Modules are JavaScript libraries you can include in your project.</p>

                <hr>
                <h2>Download a Package</h2>
                <p>Downloading a package is very easy.</p>
                <p>Open the command line interface and tell NPM to download the package you want.</p>
                <p>I want to download a package called "upper-case":</p>

                <div class="w3-example">
                    <p>Download "upper-case":</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;npm install upper-case
                    </div>
                </div>
                <p>Now you have downloaded and installed your first package!</p>
                <p>NPM creates a folder named "node_modules", where the package will be placed. 
                    All packages you install in the future will be 
                    placed in this folder.</p>
                <p>My project now has a folder structure like this:</p>
                <p><code class="w3-codespan">C:\Users\<em>My Name</em>\node_modules\upper-case</code></p>
                <hr>
                <div id="midcontentadcontainer" style="overflow:auto;text-align:center">
                    <!-- MidContent -->
                    <!-- <p class="adtext">Advertisement</p> -->

                    <div id="adngin-mid_content-0"></div>

                </div>
                <hr>

                <h2>Using a Package</h2>
                <p>Once the package is installed, it is ready to use.</p>
                <p>Include the "upper-case" package the same way you include any other 
                    module:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> uc = require(<span class="jsstringcolor" style="color:brown">'upper-case'</span>); </span></div>
                </div>

                <p>Create a Node.js file that will convert the output "Hello World!" into upper-case letters:</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> http = require(<span class="jsstringcolor" style="color:brown">'http'</span>);<br><span class="jskeywordcolor" style="color:mediumblue">var</span> uc = require(<span class="jsstringcolor" style="color:brown">'upper-case'</span>);<br>http.<span class="jspropertycolor" style="color:black">createServer</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span> <span class="jsnumbercolor" style="color:red">
                            </span>  (req, res) {<br>&nbsp;&nbsp;res.<span class="jspropertycolor" style="color:black">writeHead</span>(<span class="jsnumbercolor" style="color:red">200</span>, {<span class="jsstringcolor" style="color:brown">'Content-Type'</span>: <span class="jsstringcolor" style="color:brown">'text/html'</span>});<br><span class="jsnumbercolor" style="color:red">
                            </span>  &nbsp; res.<span class="jspropertycolor" style="color:black">write</span>(<strong>uc.<span class="jspropertycolor" style="color:black">upperCase</span>(<span class="jsstringcolor" style="color:brown">"Hello 
                                    World!"</span>)</strong>);<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  res.<span class="jspropertycolor" style="color:black">end</span>();<br>}).<span class="jspropertycolor" style="color:black">listen</span>(<span class="jsnumbercolor" style="color:red">8080</span>); </span></div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs.asp?filename=demo_uppercase">Run example »</a>

                </div>

                <p>Save the code above in a file called "demo_uppercase.js", and initiate the file:</p>
                <div class="w3-example">
                    <p>Initiate demo_uppercase:</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_uppercase.js
                    </div>
                </div>
                <p>If you have followed the same steps on your computer, you will see the same result as the example: <a href="http://localhost:8080" target="_blank">http://localhost:8080</a></p>

                <hr>


                <div id="mypagediv2" style="position:relative;text-align:center;"></div>
                <hr>
                <h2>Video Learning</h2>
                <p>Link full video: <a href="https://youtu.be/WjW65qVKByI">https://youtu.be/WjW65qVKByI</a>
                    <br>
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/WjW65qVKByI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
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
