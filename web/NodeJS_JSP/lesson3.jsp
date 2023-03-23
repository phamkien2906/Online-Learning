<%-- 
    Document   : lesson3.jsp
    Created on : Feb 21, 2023, 1:17:46 PM
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
                <h1>Node.js <span class="color_h1">Get Started</span></h1>

                <hr>

                <h2>Download Node.js</h2>
                <p>The official Node.js website has installation instructions for Node.js:
                    <a target="_blank" href="https://nodejs.org">https://nodejs.org</a></p>
                <hr>
                <h2>Getting Started</h2>
                <p>Once you have downloaded and installed Node.js on your computer, let's try to 
                    display "Hello World" in a web browser.</p>
                <p>Create a Node.js file named "myfirst.js", and add the following 
                    code:</p>

                <div class="w3-example">
                    <p>myfirst.js</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> http = require(<span class="jsstringcolor" style="color:brown">'http'</span>);<br><br>http.<span class="jspropertycolor" style="color:black">createServer</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span> (req, res) {<br>&nbsp;&nbsp;res.<span class="jspropertycolor" style="color:black">writeHead</span>(<span class="jsnumbercolor" style="color:red">200</span>, {<span class="jsstringcolor" style="color:brown">'Content-Type'</span>: <span class="jsstringcolor" style="color:brown">'text/html'</span>});<br><span class="jsnumbercolor" style="color:red">
                            </span>  &nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  res.<span class="jspropertycolor" style="color:black">end</span>(<span class="jsstringcolor" style="color:brown">'Hello World!'</span>);<br>}).<span class="jspropertycolor" style="color:black">listen</span>(<span class="jsnumbercolor" style="color:red">8080</span>); </span></div>
                </div>
                <p>Save the file on your computer: C:\Users\<em>Your Name</em>\myfirst.js</p>
                <p>The code 
                    tells the computer to write "Hello World!" if anyone (e.g. a web browser) tries 
                    to access your computer on port 8080.</p>

                <p>For now, you do not have to 
                    understand the code. It will be explained later.</p>
                <hr>
                <h2>Command Line Interface</h2>
                <p>Node.js files must be initiated in the "Command Line Interface" program 
                    of your computer.</p>
                <p>How to open the command line interface on your computer depends on the operating system. For Windows users, press the start button and look for 
                    "Command 
                    Prompt", or simply write "cmd" in the search field.</p>
                <p>Navigate to the folder that contains the file "myfirst.js", the 
                    command line interface 
                    window should look something like this:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;_
                    </div>
                </div>



                <hr>
                <h2>Initiate the Node.js File</h2>
                <p>The file you have just created must be initiated by Node.js before any action 
                    can take place.</p>
                <p>Start your command line interface, write <code class="w3-codespan">node myfirst.js</code> and hit enter:</p>
                <div class="w3-example">
                    <p>Initiate "myfirst.js":</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node myfirst.js
                    </div>
                </div>

                <p>Now, your computer works as a server!</p>
                <p>If anyone tries to access your computer on port 8080, they will get a "Hello 
                    World!" message in return!</p>
                <p>Start your internet browser, and type in the address: <a href="http://localhost:8080" target="_blank">http://localhost:8080</a></p>



                <br>

                <div id="mypagediv2" style="position:relative;text-align:center;"></div>

                <hr>
                <h2>Video Learning</h2>
                <p>Link full video: <a href="https://youtu.be/illPEfNegm0">https://youtu.be/illPEfNegm0</a>
                    <br>
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/illPEfNegm0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
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
