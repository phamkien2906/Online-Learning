<%-- 
    Document   : lesson41
    Created on : Feb 21, 2023, 2:06:13 PM
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
                <h1>Node.js and <span class="color_h1">Raspberry Pi - Webserver with WebSocket</span></h1>

                <hr>
                <div class="w3-row">
                    <div class="w3-half w3-container">
                        <h2>What is WebSocket?</h2>
                        <p>WebSocket enables bidirectional communication in real time over the web.</p>
                        <p>WebSocket can be run together with a normal HTTP server. You can click a button in a web browser, and enable a GPIO on your Raspberry Pi which turns on a light in your house. All in real time, and with communication going both ways!</p>
                        <p>In this chapter, we will set up a web server with WebSocket. Then create a browser UI to interact with our earlier example of <a href="nodejs_raspberrypi_led_pushbutton.asp">turning a LED on and off with a button</a>.</p>

                    </div>
                    <div class="w3-half w3-container" style="">
                        <iframe style="width:100%;height:100%;min-width:315px;min-height:550px" src="https://www.youtube.com/embed/iedgqPJ0xX8" frameborder="0" allowfullscreen=""></iframe>
                    </div>
                </div>
                <hr>

                <h2>What Do I Need?</h2>
                <p>For this tutorial you need a Raspberry Pi. In our examples we use a a Raspberry Pi 3, 
                    but this tutorial should work for most versions.</p>
                <p>For this you need:</p>
                <ul>
                    <li>A Raspberry Pi with Raspian, internet, SSH, with Node.js installed</li>
                    <li>The <a href="nodejs_raspberrypi_components.asp#onoff" target="_blank">
                            onoff module</a> for Node.js</li>
                    <li>The <a href="nodejs_raspberrypi_components.asp#socket.io" target="_blank">
                            socket.io module</a> for Node.js</li>
                    <li>1 x <a href="nodejs_raspberrypi_components.asp#breadboard" target="_blank">Breadboard</a></li>
                    <li>1 x 
                        <a href="nodejs_raspberrypi_components.asp#resistor68ohm" target="_blank">68 Ohm resistor</a></li>
                    <li>1 x 
                        <a href="nodejs_raspberrypi_components.asp#resistor1kohm" target="_blank">1k Ohm resistor</a></li>
                    <li>1 x 
                        <a href="nodejs_raspberrypi_components.asp#throughHoleLED" target="_blank">Through Hole LED</a></li>
                    <li>1 x 
                        <a href="nodejs_raspberrypi_components.asp#switchPushButton" target="_blank">Push Button</a></li>
                    <li>4 x 
                        <a href="nodejs_raspberrypi_components.asp#jumperWireFemaletoMale" target="_blank">Female to male jumper wires</a></li>
                    <li>1 x 
                        <a href="nodejs_raspberrypi_components.asp#jumperWireMaletoMale" target="_blank">Male to Male jumper wires</a></li>
                </ul>
                <p>Click the links in the list above for descriptions of the different 
                    components.</p>
                <div class="w3-panel w3-note">
                    <p><strong>Note:</strong> The resistor you need can be different from what we use depending on the type of LED you use. Most small LEDs only need a small resistor, around 200-500 ohms. It is generally not critical what exact value you use, but the smaller the value of the resistor, the brighter the LED will
                        shine.</p>
                </div>
                <p>Compared to our earlier example, the only new thing we need is to set up a 
                    web server, and install the socket.io module.</p>
                <hr>

                <h2>Webserver for Raspberry Pi and Node.js</h2>
                <p>Following the earlier chapters in this Node.js tutorial, lets set up a web 
                    server that can serve HTML files.</p>
                <p>In our "nodetest" directory create a new directory we can use for static html files:</p>
                <div class="w3-code notranslate w3-black">
                    pi@w3demopi:~/nodetest $ 
                    mkdir public</div>
                <p>Now lets set up a webserver. Create a Node.js file that opens the requested 
                    file and returns the content to the client. If anything goes wrong, throw a 404 
                    error.</p>
                <div class="w3-code notranslate w3-black">
                    pi@w3demopi:~/nodetest $ 
                    nano webserver.js</div>
                <div class="w3-example">
                    <p>webserver.js:</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>    <span class="jskeywordcolor" style="color:mediumblue">var</span> http = require(<span class="jsstringcolor" style="color:brown">'http'</span>).<span class="jspropertycolor" style="color:black">createServer</span>(handler); <span class="commentcolor" style="color:green">//require http server, and 
                                create server with function handler()<br></span><span class="jskeywordcolor" style="color:mediumblue">var</span> fs = require(<span class="jsstringcolor" style="color:brown">'fs'</span>); <span class="commentcolor" style="color:green">//require filesystem module<br></span><br>http.<span class="jspropertycolor" style="color:black">listen</span>(<span class="jsnumbercolor" style="color:red">8080</span>); <span class="commentcolor" style="color:green">//listen to port 8080<br></span><br><span class="jsnumbercolor" style="color:red">
                            </span>    <span class="jskeywordcolor" style="color:mediumblue">function</span> handler (req, res) { <span class="commentcolor" style="color:green">//create server<br></span>&nbsp;&nbsp;fs.<span class="jspropertycolor" style="color:black">readFile</span>(__dirname + <span class="jsstringcolor" style="color:brown">'/public/index.html'</span>, <span class="jskeywordcolor" style="color:mediumblue">function</span>(err, data) { <span class="commentcolor" style="color:green">//read 
                                file index.html in public folder<br></span>&nbsp;&nbsp;&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jsnumbercolor" style="color:red">
                            </span>    {<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; res.<span class="jspropertycolor" style="color:black">writeHead</span>(<span class="jsnumbercolor" style="color:red">404</span>, <span class="jsnumbercolor" style="color:red">
                            </span>    {<span class="jsstringcolor" style="color:brown">'Content-Type'</span>: <span class="jsstringcolor" style="color:brown">'text/html'</span>}); <span class="commentcolor" style="color:green">//display 404 on error<br></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    <span class="jskeywordcolor" style="color:mediumblue">return</span> res.<span class="jspropertycolor" style="color:black">end</span>(<span class="jsstringcolor" style="color:brown">"404 Not Found"</span>);<br>&nbsp;&nbsp;&nbsp; } <br>&nbsp;&nbsp;&nbsp; res.<span class="jspropertycolor" style="color:black">writeHead</span>(<span class="jsnumbercolor" style="color:red">200</span>, {<span class="jsstringcolor" style="color:brown">'Content-Type'</span>: <span class="jsstringcolor" style="color:brown">'text/html'</span>}); <span class="commentcolor" style="color:green">//write HTML<br></span>&nbsp;&nbsp;&nbsp; res.<span class="jspropertycolor" style="color:black">write</span>(data); <span class="commentcolor" style="color:green">//write data from index.html<br></span>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    <span class="jskeywordcolor" style="color:mediumblue">return</span> res.<span class="jspropertycolor" style="color:black">end</span>();<br>&nbsp;&nbsp;});<br>} </span></div>
                </div>

                <p>Go to the folder "public":</p>
                <div class="w3-code notranslate w3-black">
                    pi@w3demopi:~/nodetest $ 
                    cd public
                </div>
                <p>And create a HTML file, index.html:</p>
                <div class="w3-code notranslate w3-black">
                    pi@w3demopi:~/nodetest/public $ 
                    nano index.html</div>
                <div class="w3-example">
                    <p>index.html:</p>
                    <div class="w3-code notranslate htmlHigh">
                        <span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>!DOCTYPE<span class="attributecolor" style="color:red"> html</span><span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>html<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>body<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>h1<span class="tagcolor" style="color:mediumblue">&gt;</span></span>Control LED light<span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/h1<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>input<span class="attributecolor" style="color:red"> 
                                id<span class="attributevaluecolor" style="color:mediumblue">="light"</span> type<span class="attributevaluecolor" style="color:mediumblue">="checkbox"</span></span><span class="tagcolor" style="color:mediumblue">&gt;</span></span>LED<br><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/body<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/html<span class="tagcolor" style="color:mediumblue">&gt;</span></span> </div>
                </div>

                <p>This file will not have any functionality yet. For now it is just a 
                    placeholder. Lets see if the webserver is working:</p>
                <div class="w3-code notranslate w3-black">
                    pi@w3demopi:~/nodetest/public $ cd ..</div>
                <div class="w3-code notranslate w3-black">
                    pi@w3demopi:~/nodetest $ node webserver.js</div>
                <p>Open the website in a browser using http://[RaspberryPi_IP]:8080/:</p>
                <p>The webserver should now be up and running, and we can move on to the 
                    WebSocket part.</p>
                <hr>

                <h2>Install socket.io for Node.js</h2>
                <p>With the webserver set up, update your Raspberry Pi system packages to their latest versions.</p>
                <p>Update your system package list:</p>
                <div class="w3-code notranslate w3-black">
                    pi@w3demopi:~ $ sudo apt-get update
                </div>
                <p>Upgrade all your installed packages to their latest version:</p>
                <div class="w3-code notranslate w3-black">
                    pi@w3demopi:~ $ sudo apt-get dist-upgrade
                </div>
                <div class="w3-panel w3-note">
                    <p>Doing this regularly will keep your Raspberry Pi installation up to date.</p>
                </div>
                <p>To download and install newest version of socket.io, use the following command:</p>
                <div class="w3-code notranslate w3-black">
                    pi@w3demopi:~ $ 
                    npm install socket.io --save</div>
                <hr>
                <div id="midcontentadcontainer" style="overflow:auto;text-align:center">
                    <!-- MidContent -->
                    <!-- <p class="adtext">Advertisement</p> -->

                    <div id="adngin-mid_content-0"></div>

                </div>
                <hr>
                <h2>Adding WebSocket to our Webserver</h2>
                <p>Now we can use WebSocket in our application. Lets update our index.html 
                    file:</p>
                <div class="w3-example">
                    <p>index.html:</p>
                    <div class="w3-code notranslate htmlHigh">
                        <span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>!DOCTYPE<span class="attributecolor" style="color:red"> html</span><span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>html<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>body<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>h1<span class="tagcolor" style="color:mediumblue">&gt;</span></span>Control LED 
                        light<span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/h1<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>p<span class="tagcolor" style="color:mediumblue">&gt;</span></span><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>input<span class="attributecolor" style="color:red"> type<span class="attributevaluecolor" style="color:mediumblue">="checkbox"</span> id<span class="attributevaluecolor" style="color:mediumblue">="light"</span></span><span class="tagcolor" style="color:mediumblue">&gt;</span></span><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/p<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>script<span class="attributecolor" style="color:red"> src<span class="attributevaluecolor" style="color:mediumblue">="https://cdnjs.cloudflare.com/ajax/libs/socket.io/2.0.3/socket.io.js"</span></span><span class="tagcolor" style="color:mediumblue">&gt;</span></span><span class="jscolor" style="color:black"></span><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/script<span class="tagcolor" style="color:mediumblue">&gt;</span></span> 
                        <span class="commentcolor" style="color:green">&lt;!-- include socket.io client side script --&gt;</span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>script<span class="tagcolor" style="color:mediumblue">&gt;</span></span><span class="jscolor" style="color:black"><br><span class="jskeywordcolor" style="color:mediumblue">var</span> socket = io(); <span class="jsnumbercolor" style="color:red">
                            </span>    <span class="commentcolor" style="color:green">//load socket.io-client and connect to the host that serves the page<br></span><span class="jsnumbercolor" style="color:red">
                            </span>    window.<span class="jspropertycolor" style="color:black">addEventListener</span>(<span class="jsstringcolor" style="color:brown">"load"</span>, <span class="jskeywordcolor" style="color:mediumblue">function</span>(){ <span class="commentcolor" style="color:green">//when page loads<br></span>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">var</span> <span class="jsnumbercolor" style="color:red">
                            </span>    lightbox = document.<span class="jspropertycolor" style="color:black">getElementById</span>(<span class="jsstringcolor" style="color:brown">"light"</span>); <br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    lightbox.<span class="jspropertycolor" style="color:black">addEventListener</span>(<span class="jsstringcolor" style="color:brown">"change"</span>, <span class="jskeywordcolor" style="color:mediumblue">function</span>() { <span class="commentcolor" style="color:green">//add event listener for 
                                when checkbox changes<br></span>&nbsp;&nbsp;&nbsp; socket.<span class="jspropertycolor" style="color:black">emit</span>(<span class="jsstringcolor" style="color:brown">"light"</span>, Number(<span class="jskeywordcolor" style="color:mediumblue">this</span>.<span class="jspropertycolor" style="color:black">checked</span>)); <span class="jsnumbercolor" style="color:red">
                            </span>    <span class="commentcolor" style="color:green">//send button status to server (as 1 or 0)<br></span>&nbsp; });<br>});<br>socket.<span class="jspropertycolor" style="color:black">on</span>(<span class="jsstringcolor" style="color:brown">'light'</span>, <span class="jsnumbercolor" style="color:red">
                            </span>    <span class="jskeywordcolor" style="color:mediumblue">function</span> (data) { <span class="commentcolor" style="color:green">//get button status from client<br></span>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    document.<span class="jspropertycolor" style="color:black">getElementById</span>(<span class="jsstringcolor" style="color:brown">"light"</span>).<span class="jspropertycolor" style="color:black">checked</span> = data; <span class="commentcolor" style="color:green">//change checkbox according 
                                to push button on Raspberry Pi<br></span>&nbsp; socket.<span class="jspropertycolor" style="color:black">emit</span>(<span class="jsstringcolor" style="color:brown">"light"</span>, data); <span class="commentcolor" style="color:green">//send 
                                push button status to back to server<br></span>});<br></span><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/script<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/body<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/html<span class="tagcolor" style="color:mediumblue">&gt;</span></span> </div>
                </div>

                <p>And our webserver.js file:</p>
                <div class="w3-example">
                    <p>webserver.js:</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>    <span class="jskeywordcolor" style="color:mediumblue">var</span> http = require(<span class="jsstringcolor" style="color:brown">'http'</span>).<span class="jspropertycolor" style="color:black">createServer</span>(handler); <span class="commentcolor" style="color:green">//require http server, and 
                                create server with function handler()<br></span><span class="jskeywordcolor" style="color:mediumblue">var</span> fs = require(<span class="jsstringcolor" style="color:brown">'fs'</span>); <span class="commentcolor" style="color:green">//require filesystem module<br></span><span class="jskeywordcolor" style="color:mediumblue">var</span> io <span class="jsnumbercolor" style="color:red">
                            </span>    = require(<span class="jsstringcolor" style="color:brown">'socket.io'</span>)(http) <span class="commentcolor" style="color:green">//require socket.io module and pass the http 
                                object (server)<br></span><br>http.<span class="jspropertycolor" style="color:black">listen</span>(<span class="jsnumbercolor" style="color:red">8080</span>); <span class="commentcolor" style="color:green">//listen to port 8080<br></span><br><span class="jsnumbercolor" style="color:red">
                            </span>    <span class="jskeywordcolor" style="color:mediumblue">function</span> handler (req, res) { <span class="commentcolor" style="color:green">//create server<br></span>&nbsp; fs.<span class="jspropertycolor" style="color:black">readFile</span>(__dirname + <span class="jsstringcolor" style="color:brown">'/public/index.html'</span>, <span class="jskeywordcolor" style="color:mediumblue">function</span>(err, data) { <span class="commentcolor" style="color:green">//read 
                                file index.html in public folder<br></span>&nbsp;&nbsp;&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jsnumbercolor" style="color:red">
                            </span>    {<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; res.<span class="jspropertycolor" style="color:black">writeHead</span>(<span class="jsnumbercolor" style="color:red">404</span>, <span class="jsnumbercolor" style="color:red">
                            </span>    {<span class="jsstringcolor" style="color:brown">'Content-Type'</span>: <span class="jsstringcolor" style="color:brown">'text/html'</span>}); <span class="commentcolor" style="color:green">//display 404 on error<br></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    <span class="jskeywordcolor" style="color:mediumblue">return</span> res.<span class="jspropertycolor" style="color:black">end</span>(<span class="jsstringcolor" style="color:brown">"404 Not Found"</span>);<br>&nbsp;&nbsp;&nbsp; } <br>&nbsp;&nbsp;&nbsp; res.<span class="jspropertycolor" style="color:black">writeHead</span>(<span class="jsnumbercolor" style="color:red">200</span>, {<span class="jsstringcolor" style="color:brown">'Content-Type'</span>: <span class="jsstringcolor" style="color:brown">'text/html'</span>}); <span class="commentcolor" style="color:green">//write HTML<br></span>&nbsp;&nbsp;&nbsp; res.<span class="jspropertycolor" style="color:black">write</span>(data); <span class="commentcolor" style="color:green">//write data from index.html<br></span>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    <span class="jskeywordcolor" style="color:mediumblue">return</span> res.<span class="jspropertycolor" style="color:black">end</span>();<br>&nbsp; });<br>}<br><br><span class="jsnumbercolor" style="color:red">
                            </span>    io.<span class="jspropertycolor" style="color:black">sockets</span>.<span class="jspropertycolor" style="color:black">on</span>(<span class="jsstringcolor" style="color:brown">'connection'</span>, <span class="jskeywordcolor" style="color:mediumblue">function</span> (socket) {<span class="commentcolor" style="color:green">// WebSocket Connection<br></span>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    <span class="jskeywordcolor" style="color:mediumblue">var</span> lightvalue = <span class="jsnumbercolor" style="color:red">0</span>; <span class="commentcolor" style="color:green">//static variable for current status<br></span>&nbsp; socket.<span class="jspropertycolor" style="color:black">on</span>(<span class="jsstringcolor" style="color:brown">'light'</span>, <span class="jsnumbercolor" style="color:red">
                            </span>    <span class="jskeywordcolor" style="color:mediumblue">function</span>(data) { <span class="commentcolor" style="color:green">//get light switch status from client<br></span>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    lightvalue = data;<br>&nbsp;&nbsp;&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (lightvalue) {<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    console.<span class="jspropertycolor" style="color:black">log</span>(lightvalue); <span class="commentcolor" style="color:green">//turn LED on or off, for now we will just show it 
                                in console.log<br></span>&nbsp;&nbsp;&nbsp; }<br>&nbsp; });<br>}); </span></div>
                </div>

                <p>Lets test the server:</p>
                <div class="w3-code notranslate w3-black">
                    pi@w3demopi:~ $ 
                    node webserver.js
                </div>
                <p>Open the website in a browser using http://[RaspberryPi_IP]:8080/:</p>
                <p>Now the server should output all the changes to the checkbox to the console 
                    on the Raspberry Pi.</p>
                <p>The client is sending the changes to the server, and the server is 
                    responding.</p>
                <p>Lets add the <a href="nodejs_raspberrypi_led_pushbutton.asp">push button 
                        controlled LED</a> from a previous chapter.</p>
                <hr>
                <h2>Adding Hardware, and sending a response to the Client</h2>

                <p>Lets update our webserver.js file again. We will use a lot of the code from 
                    the Pushbutton controlled LED chapter.</p>
                <div class="w3-example">
                    <p>webserver.js:</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>    <span class="jskeywordcolor" style="color:mediumblue">var</span> http = require(<span class="jsstringcolor" style="color:brown">'http'</span>).<span class="jspropertycolor" style="color:black">createServer</span>(handler); <span class="commentcolor" style="color:green">//require http server, and 
                                create server with function handler()<br></span><span class="jskeywordcolor" style="color:mediumblue">var</span> fs = require(<span class="jsstringcolor" style="color:brown">'fs'</span>); <span class="commentcolor" style="color:green">//require filesystem module<br></span><span class="jskeywordcolor" style="color:mediumblue">var</span> io <span class="jsnumbercolor" style="color:red">
                            </span>    = require(<span class="jsstringcolor" style="color:brown">'socket.io'</span>)(http) <span class="commentcolor" style="color:green">//require socket.io module and pass the http 
                                object (server)<br></span><span class="jskeywordcolor" style="color:mediumblue">var</span> Gpio = require(<span class="jsstringcolor" style="color:brown">'onoff'</span>).<span class="jspropertycolor" style="color:black">Gpio</span>; <span class="commentcolor" style="color:green">//include onoff to 
                                interact with the GPIO<br></span><span class="jskeywordcolor" style="color:mediumblue">var</span> LED = <span class="jskeywordcolor" style="color:mediumblue">new</span> Gpio(<span class="jsnumbercolor" style="color:red">4</span>, <span class="jsstringcolor" style="color:brown">'out'</span>); <span class="commentcolor" style="color:green">//use GPIO pin 4 as 
                                output<br></span><span class="jskeywordcolor" style="color:mediumblue">var</span> pushButton = <span class="jskeywordcolor" style="color:mediumblue">new</span> Gpio(<span class="jsnumbercolor" style="color:red">17</span>, <span class="jsstringcolor" style="color:brown">'in'</span>, <span class="jsstringcolor" style="color:brown">'both'</span>); <span class="commentcolor" style="color:green">//use GPIO pin 17 as 
                                input, and 'both' button presses, and releases should be handled<br></span><br><span class="jsnumbercolor" style="color:red">
                            </span>    http.<span class="jspropertycolor" style="color:black">listen</span>(<span class="jsnumbercolor" style="color:red">8080</span>); <span class="commentcolor" style="color:green">//listen to port 8080<br></span><br><span class="jskeywordcolor" style="color:mediumblue">function</span> handler (req, res) <span class="jsnumbercolor" style="color:red">
                            </span>    { <span class="commentcolor" style="color:green">//create server<br></span>&nbsp; fs.<span class="jspropertycolor" style="color:black">readFile</span>(__dirname <span class="jsnumbercolor" style="color:red">
                            </span>    + <span class="jsstringcolor" style="color:brown">'/public/index.html'</span>, <span class="jskeywordcolor" style="color:mediumblue">function</span>(err, data) { <span class="commentcolor" style="color:green">//read file index.html in 
                                public folder<br></span>&nbsp;&nbsp;&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) {<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; res.<span class="jspropertycolor" style="color:black">writeHead</span>(<span class="jsnumbercolor" style="color:red">404</span>, {<span class="jsstringcolor" style="color:brown">'Content-Type'</span>: <span class="jsstringcolor" style="color:brown">'text/html'</span>}); <span class="commentcolor" style="color:green">//display 404 on error<br></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    <span class="jskeywordcolor" style="color:mediumblue">return</span> res.<span class="jspropertycolor" style="color:black">end</span>(<span class="jsstringcolor" style="color:brown">"404 Not Found"</span>);<br>&nbsp;&nbsp;&nbsp; } <br>&nbsp;&nbsp;&nbsp; res.<span class="jspropertycolor" style="color:black">writeHead</span>(<span class="jsnumbercolor" style="color:red">200</span>, {<span class="jsstringcolor" style="color:brown">'Content-Type'</span>: <span class="jsstringcolor" style="color:brown">'text/html'</span>}); <span class="commentcolor" style="color:green">//write HTML<br></span>&nbsp;&nbsp;&nbsp; res.<span class="jspropertycolor" style="color:black">write</span>(data); <span class="commentcolor" style="color:green">//write data from index.html<br></span>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    <span class="jskeywordcolor" style="color:mediumblue">return</span> res.<span class="jspropertycolor" style="color:black">end</span>();<br>&nbsp; });<br>}<br><br><span class="jsnumbercolor" style="color:red">
                            </span>    io.<span class="jspropertycolor" style="color:black">sockets</span>.<span class="jspropertycolor" style="color:black">on</span>(<span class="jsstringcolor" style="color:brown">'connection'</span>, <span class="jskeywordcolor" style="color:mediumblue">function</span> (socket) {<span class="commentcolor" style="color:green">// WebSocket Connection<br></span>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    <span class="jskeywordcolor" style="color:mediumblue">var</span> lightvalue = <span class="jsnumbercolor" style="color:red">0</span>; <span class="commentcolor" style="color:green">//static variable for current status<br></span>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    pushButton.<span class="jspropertycolor" style="color:black">watch</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span> (err, value) { <span class="commentcolor" style="color:green">//Watch for hardware interrupts on 
                                pushButton<br></span>&nbsp;&nbsp;&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) { <span class="commentcolor" style="color:green">//if an error<br></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    console.<span class="jspropertycolor" style="color:black">error</span>(<span class="jsstringcolor" style="color:brown">'There was an error'</span>, err); <span class="commentcolor" style="color:green">//output error message to console<br></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    <span class="jskeywordcolor" style="color:mediumblue">return</span>;<br>&nbsp;&nbsp;&nbsp; }<br>&nbsp;&nbsp;&nbsp; lightvalue = value;<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    socket.<span class="jspropertycolor" style="color:black">emit</span>(<span class="jsstringcolor" style="color:brown">'light'</span>, lightvalue); <span class="commentcolor" style="color:green">//send button status to client<br></span>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    });<br>&nbsp; socket.<span class="jspropertycolor" style="color:black">on</span>(<span class="jsstringcolor" style="color:brown">'light'</span>, <span class="jskeywordcolor" style="color:mediumblue">function</span>(data) { <span class="commentcolor" style="color:green">//get light switch status 
                                from client<br></span>&nbsp;&nbsp;&nbsp; lightvalue = data;<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    <span class="jskeywordcolor" style="color:mediumblue">if</span> (lightvalue != LED.<span class="jspropertycolor" style="color:black">readSync</span>()) { <span class="commentcolor" style="color:green">//only change LED if status has changed<br></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    LED.<span class="jspropertycolor" style="color:black">writeSync</span>(lightvalue); <span class="commentcolor" style="color:green">//turn LED on or off<br></span>&nbsp;&nbsp;&nbsp; }<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    });<br>});<br><br>process.<span class="jspropertycolor" style="color:black">on</span>(<span class="jsstringcolor" style="color:brown">'SIGINT'</span>, <span class="jskeywordcolor" style="color:mediumblue">function</span> () { <span class="commentcolor" style="color:green">//on ctrl+c<br></span>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    LED.<span class="jspropertycolor" style="color:black">writeSync</span>(<span class="jsnumbercolor" style="color:red">0</span>); <span class="commentcolor" style="color:green">// Turn LED off<br></span>&nbsp; LED.<span class="jspropertycolor" style="color:black">unexport</span>(); <span class="commentcolor" style="color:green">// Unexport LED 
                                GPIO to free resources<br></span>&nbsp; pushButton.<span class="jspropertycolor" style="color:black">unexport</span>(); <span class="commentcolor" style="color:green">// Unexport Button 
                                GPIO to free resources<br></span>&nbsp; process.<span class="jspropertycolor" style="color:black">exit</span>(); <span class="commentcolor" style="color:green">//exit completely<br></span>}); </span></div>
                </div>

                <p>Lets test the server:</p>
                <div class="w3-code notranslate w3-black">
                    pi@w3demopi:~ $ node webserver.js
                </div>
                <p>Open the website in a browser using http://[RaspberryPi_IP]:8080/:</p>
                <p>Now the server should output all the changes to the checkbox to the console 
                    on the Raspberry Pi.</p>
                <p>The client is sending the changes to the server, and the server is 
                    responding.</p>
                <p>End the program with <code class="w3-codespan">Ctrl+c</code>.</p>
                <hr>

                <div id="mypagediv2" style="position:relative;text-align:center;"></div>
                <hr>
                <h2>Video Learning</h2>
                <p>Link full video: <a href="https://youtu.be/6S3pW2q0WK8">https://youtu.be/6S3pW2q0WK8</a>
                    <br>
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/6S3pW2q0WK8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
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
