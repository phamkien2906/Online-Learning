<%-- 
    Document   : lesson1
    Created on : Feb 21, 2023, 12:59:30 PM
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
                <h1>Node.js <span class="color_h1">Tutorial</span></h1>


                <div class="w3-panel w3-info intro">
                    <p>Node.js is an open source server environment.</p>
                    <p>Node.js allows you to run JavaScript on the server.</p>
                    <a class="w3-btn w3-margin-bottom" href="nodejs_intro.asp" style="font-size: 18px;padding-left:25px;padding-right:25px;font-family: 'Source Sans Pro', sans-serif;margin-top:6px;">Start learning Node.js now »</a>
                </div>

                <hr>

                <h2>Learning by Examples</h2>
                <p>Our "Show Node.js" tool makes it easy to learn Node.js, it shows both the 
                    code and the result.</p>

                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> http = require(<span class="jsstringcolor" style="color:brown">'http'</span>);<br><br>http.<span class="jspropertycolor" style="color:black">createServer</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span> (req, res) {<br>&nbsp;&nbsp;res.<span class="jspropertycolor" style="color:black">writeHead</span>(<span class="jsnumbercolor" style="color:red">200</span>, {<span class="jsstringcolor" style="color:brown">'Content-Type'</span>: <span class="jsstringcolor" style="color:brown">'text/plain'</span>});<br>&nbsp;&nbsp;res.<span class="jspropertycolor" style="color:black">end</span>(<span class="jsstringcolor" style="color:brown">'Hello World!'</span>);<br>}).<span class="jspropertycolor" style="color:black">listen</span>(<span class="jsnumbercolor" style="color:red">8080</span>);  </span></div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs.asp?filename=demo_intro">Run example »</a>
                </div>
                <p><b>Click on the "Run example" button to see how it works.</b></p>
                <hr>
                <h2>Examples Running in the Command Line Interface</h2>

                <p>In this tutorial there will be some examples that are better explained by displaying the result in the 
                    command line interface.</p>
                <p>When this happens, The "Show Node.js" tool will show the result in a black screen on the right:</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black">
                            console.<span class="jspropertycolor" style="color:black">log</span>(<span class="jsstringcolor" style="color:brown">'This example is different!'</span>);<br>
                            console.<span class="jspropertycolor" style="color:black">log</span>(<span class="jsstringcolor" style="color:brown">'The result is displayed in the Command Line Interface'</span>);  </span></div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_intro_cmd">Run example »</a>
                </div>
                <p><b>Click on the "Run example" button to see how it works.</b></p>
                <hr>
                <style>
                    #img_mylearning {
                        max-width:100%;
                    }
                </style>
                <h2>My Learning</h2>

                <p>Track your progress with the free "My Learning" program here at W3Schools.</p>
                <p>Log in to your account, and start earning points!</p>
                <p>This is an optional feature. You can study W3Schools without using My Learning.</p>


                <!--
                <a class="ws-btn w3-margin-bottom"
                 href="https://profile.w3schools.com/log-in?redirect_url=https%3A%2F%2Fmy-learning.w3schools.com"
                 target="_blank"
                 style="font-size: 18px;padding-left:25px;padding-right:25px;
                 font-family : 'Source Sans Pro', sans-serif;
                 margin-top:6px;"
                 >
                 Sign up
                </a>
                -->
                <hr>

                <h2>Node.js Reference</h2>
                <p>Node.js has a set of built-in modules.</p>
                <p><a href="ref_modules.asp">Built-in Modules</a></p>

                <hr>

                <h2>Download Node.js</h2>
                <p>Download Node.js from the official Node.js web site:
                    <a target="_blank" href="https://nodejs.org/">https://nodejs.org</a></p>
                <hr>
                <h2>Video Learning</h2>
                <p>Link full video: <a href="https://youtu.be/OR0hBEUk4wI">https://youtu.be/OR0hBEUk4wI</a>
                    <br>
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/OR0hBEUk4wI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>                <hr>

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
