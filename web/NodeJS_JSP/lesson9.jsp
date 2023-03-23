<%-- 
    Document   : lesson9.jsp
    Created on : Feb 21, 2023, 1:25:28 PM
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
                <h1>Node.js <span class="color_h1">Events</span></h1>

                <hr>
                <p class="intro">Node.js is perfect for event-driven applications.</p>
                <hr>

                <h2>Events in Node.js</h2>
                <p>Every action on a computer is an event. Like when a connection is made or a 
                    file is opened.</p>
                <p>Objects in Node.js can fire events, like the readStream object fires 
                    events when opening and closing a file:</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> fs = require(<span class="jsstringcolor" style="color:brown">'fs'</span>);<br><span class="jskeywordcolor" style="color:mediumblue">var</span> rs = fs.<span class="jspropertycolor" style="color:black">createReadStream</span>(<span class="jsstringcolor" style="color:brown">'./demofile.txt'</span>);<br><span class="jsnumbercolor" style="color:red">
                            </span>  rs.<span class="jspropertycolor" style="color:black">on</span>(<span class="jsstringcolor" style="color:brown">'open'</span>, <span class="jskeywordcolor" style="color:mediumblue">function</span> () {<br>&nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(<span class="jsstringcolor" style="color:brown">'The file is open'</span>);<br><span class="jsnumbercolor" style="color:red">
                            </span>  }); </span></div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_events_open">Run example »</a>
                </div>

                <hr>

                <h2>Events Module</h2>
                <p>Node.js has a 
                    built-in module, called "Events", where you can create-, fire-, and listen for- your own 
                    events.</p>
                <p>To include the built-in Events module use the <code class="w3-codespan">require()</code> 
                    method. In addition, all event properties and methods are an instance of an 
                    EventEmitter object. To be able to access these properties and methods, create 
                    an EventEmitter object:</p>

                <div class="w3-example">
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> events = require(<span class="jsstringcolor" style="color:brown">'events'</span>);<br><span class="jskeywordcolor" style="color:mediumblue">var</span> eventEmitter = <span class="jskeywordcolor" style="color:mediumblue">new</span> events.<span class="jspropertycolor" style="color:black">EventEmitter</span>(); </span></div>
                </div>

                <hr>


                <h2>The EventEmitter Object</h2>
                <p>You can assign event handlers to your own events with the EventEmitter 
                    object.</p>
                <p>In the example below we have created a function that will be 
                    executed when a "scream" event is fired.</p>
                <p>To fire an event, use the <code class="w3-codespan">emit()</code> method.</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> events = require(<span class="jsstringcolor" style="color:brown">'events'</span>);<br><span class="jskeywordcolor" style="color:mediumblue">var</span> eventEmitter = <span class="jskeywordcolor" style="color:mediumblue">new</span> events.<span class="jspropertycolor" style="color:black">EventEmitter</span>();<br><span class="jsnumbercolor" style="color:red">
                            </span>  <br><span class="commentcolor" style="color:green">//Create an event handler:<br></span><span class="jskeywordcolor" style="color:mediumblue">var</span> myEventHandler = <span class="jskeywordcolor" style="color:mediumblue">function</span> () {<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  console.<span class="jspropertycolor" style="color:black">log</span>(<span class="jsstringcolor" style="color:brown">'I hear a scream!'</span>);<br>}<br><br><span class="commentcolor" style="color:green">//Assign the event handler to an 
                                event:<br></span>eventEmitter.<span class="jspropertycolor" style="color:black">on</span>(<span class="jsstringcolor" style="color:brown">'scream'</span>, myEventHandler);<br><br><span class="commentcolor" style="color:green">//Fire the 
                                'scream' event:<br></span>eventEmitter.<span class="jspropertycolor" style="color:black">emit</span>(<span class="jsstringcolor" style="color:brown">'scream'</span>);<br> </span></div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_eventemitter">Run example »</a>
                </div>

                <br>

                <div id="mypagediv2" style="position:relative;text-align:center;"></div>
                <hr>
                <h2>Video Learning</h2>
                <p>Link full video: <a href="https://youtu.be/uuR2vvcAftM">https://youtu.be/uuR2vvcAftM</a>
                    <br>
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/uuR2vvcAftM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
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
