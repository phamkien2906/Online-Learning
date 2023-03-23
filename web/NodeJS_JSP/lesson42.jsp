<%-- 
    Document   : lesson42
    Created on : Feb 21, 2023, 2:10:10 PM
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
                <h1>Node.js <span class="color_h1">Raspberry Pi RGB LED with WebSocket</span></h1>

                <hr>
                <h2>Using Pulse-Width Modulation</h2>
                <p>In the previous chapters we have learned how to use WebSocket, and how to 
                    use GPIO to turn LEDs on and off.</p>
                <p>In this we will use chapter we use a RGB LED, with PWM (Pulse-width 
                    modulation) to display different colors based on user input via WebSocket.</p>
                <div style="width:560px;height:315px">
                    <iframe style="width:100%;height:100%" src="https://www.youtube.com/embed/NS3EymTXZm8" frameborder="0" allowfullscreen=""></iframe>
                </div>
                <p>An RGB LED is a LED with 3 different colors. It has a RED, GREEN and 
                    BLUE LED (RGB LED).</p>
                <p>And using PWM, we can set the individual strength of the 3 LEDs. This will allow us to 
                    mix them, to set a color.</p>
                <hr>

                <h2>What do we need?</h2>
                <p>In this chapter we will create an example where 
                    we control an RGB LED with a web page via WebSocket.</p>
                <p>For this you need:</p>
                <ul>
                    <li>A Raspberry Pi with Raspian, internet, SSH, with Node.js installed</li>
                    <li>The <a href="nodejs_raspberrypi_components.asp#pigpio" target="_blank">
                            pigpio module </a>for Node.js</li>
                    <li>The <a href="nodejs_raspberrypi_components.asp#socket.io" target="_blank">
                            socket.io module</a> for Node.js</li>
                    <li>1 x <a href="nodejs_raspberrypi_components.asp#breadboard" target="_blank">Breadboard</a></li>
                    <li>3 x
                        <a href="nodejs_raspberrypi_components.asp#resistor220ohm" target="_blank">220 
                            Ohm resistor</a></li>
                    <li>1 x <a href="nodejs_raspberrypi_components.asp#RGBLED" target="_blank">RGB LED</a> (common anode or common cathode)</li>
                    <li>4 x <a href="nodejs_raspberrypi_components.asp#jumperWireFemaletoMale" target="_blank">Female to male jumper wires</a></li>
                </ul>
                <p>Click the links in the list above for descriptions of the different 
                    components.</p>
                <div class="w3-panel w3-note">
                    <p><strong>Note:</strong> The resistor you need can be different from what we use depending on the type of LED you use. Most small LEDs only need a small resistor, around 200-500 ohms. It is generally not critical what exact value you use, but the smaller the value of the resistor, the brighter the LED will
                        shine.</p>
                </div>
                <hr style="clear:both">
                <h2>Install the pigpio Module</h2>
                <p>Earlier, we have used the "onoff" module, which works great for just turning 
                    on and off. Now we want to set the set the strength of the LEDs, so we need a 
                    GPIO Module with a bit more functionality.</p>
                <p>We will use the "pigpio" Node.js module, as this allows for PWM.</p>
                <p>With PWM we 
                    can set the strength of a LED from 0 to 255.</p>
                <p>The "pigpio" Node.js module is based on the pigpio C library.</p>
                <p>If you are using the "Lite" version of Raspbian, this is most likely not 
                    included and must be manually installed.</p>
                <p>Update your system package list:</p>
                <div class="w3-code notranslate w3-black">
                    pi@w3demopi:~ $ sudo apt-get update</div>
                <p>Install the pigpio C library:</p>
                <div class="w3-code notranslate w3-black">
                    pi@w3demopi:~ $ sudo apt-get install pigpio</div>
                <p>Now we can install the "pigpio" Node.js module using npm:</p>
                <div class="w3-code notranslate w3-black">
                    pi@w3demopi:~ $ npm install pigpio</div>
                <p>Now the "pigpio" module should be installed and we can use it to 
                    interact with the GPIO of the Raspberry Pi.</p>
                <div class="w3-panel w3-note">
                    <p><strong>Note:</strong> Since the "pigpio" module uses the pigpio C library, 
                        it requires root/sudo privileges to access hardware peripherals (like the 
                        GPIO).</p>
                </div>
                <hr style="clear:both">
                <h2>Building the Circuit</h2>
                <p>Now it is time to build the circuit on our Breadboard.</p>
                <p>If you are new to electronics, we recommend you turn off the power for 
                    the Raspberry Pi. And use an anti-static mat or a grounding strap to avoid 
                    damaging it.</p>
                <p>Shut down the Raspberry Pi properly with the command:</p>
                <div class="w3-code notranslate w3-black">
                    pi@w3demopi:~ $ sudo shutdown -h now
                </div>
                <p>After the LEDs stop blinking on the Raspberry Pi, then pull out the power 
                    plug from the Raspberry Pi (or turn of the power strip it is connected to).</p>
                <div class="w3-panel w3-warning"><p>Just pulling the plug without shutting down properly may cause corruption of the memory card.</p>
                </div>

                <p>In building this Circuit it is important to know if you have a common 
                    anode, or common cathode, RGB LED:</p>
                <p>You can check with your provider, or test it yourself:</p>
                <p>Connect cables to GND and 3.3V pin. Connect GND to the longest leg of the 
                    RGB LED and the 3.3 V to any other leg. If the it lights up, your RGB LED has 
                    a common cathode. If not, it has a common anode.</p>

                <button class="accordion">Building the Circuit - Common Cathode</button>
                <div class="acc_panel">
                    <img src="img_raspberrypi3_websocket_rgb_led_common_cathode.png" alt="Raspberry Pi 3 with Breadboard. RGB LED common Cathode" style="margin-top:10px;width:100%;max-width:1000px">
                    <p>Look at the above illustration of the circuit.</p>
                    <ol>
                        <li>On the Breadboard, connect the RGB LED to the right ground bus column, 
                            and make sure that each leg connects to a different row. The longest leg is 
                            the common cathode leg. In this example we have connected the LED to rows 
                            1-4, with the common cathode leg connected to row 2 column I. The <span class="w3-red">RED</span> leg is 
                            connected to row 1 column J, the <span class="w3-green">GREEN</span> leg is connected to row 3 column J, 
                            and the <span class="w3-blue">BLUE</span> leg is connected to row 4 column J</li>
                        <li>On the Raspberry Pi, connect the female leg of the first jumper wire to 
                            <span class="w3-blue">Ground</span>. You can use any <span class="w3-blue">GND</span> pin. In this example we used Physical Pin 9 (<span class="w3-blue">GND</span>, 
                            row 5, left column)</li>
                        <li>On the Breadboard, connect the male leg of the first jumper wire to 
                            the same row of the right ground bus column that you connected the common 
                            cathode to. In this example we connected it to row 2 column F</li>
                        <li>On the Raspberry Pi, connect the female leg of the second jumper cable 
                            to a <span class="w3-khaki">GPIO</span> pin. We will use this for the <span class="w3-red">RED</span> 
                            leg, In this example we used Physical Pin 
                            7 (<span class="w3-khaki">GPIO 4</span>, row 4, left 
                            column)</li>
                        <li>On the Breadboard, connect the male leg of the second jumper wire to the 
                            left ground bus, same row as the <span class="w3-red">RED</span> leg of the LED is connected. In this example we connected it to row 
                            1, 
                            column A</li>
                        <li>On the Breadboard, connect a resistor between the left and right ground 
                            bus columns for the row with the <span class="w3-red">RED</span> leg of the LED. In this example we have attached 
                            it to row 1, column E and F</li>
                        <li>On the Raspberry Pi, connect the female leg of the third jumper cable 
                            to a <span class="w3-khaki">GPIO</span> pin. We will use this for the <span class="w3-green">GREEN</span> 
                            leg, In this example we used Physical Pin 
                            11 (<span class="w3-khaki">GPIO 17</span>, row 6, left 
                            column)</li>
                        <li>On the Breadboard, connect the male leg of the third jumper wire to the 
                            left ground bus, same row as the <span class="w3-green">GREEN</span> leg of the LED is connected. In this example we connected it to row 
                            3, 
                            column A</li>
                        <li>On the Breadboard, connect a resistor between the left and right ground 
                            bus columns for the row with the <span class="w3-green">GREEN</span> leg of the LED. In this example we have attached 
                            it to row 3, column E and F</li>
                        <li>On the Raspberry Pi, connect the female leg of the forth jumper cable 
                            to a <span class="w3-khaki">GPIO</span> pin. We will use this for the <span class="w3-blue">BLUE</span> 
                            leg, In this example we used Physical Pin 
                            13 (<span class="w3-khaki">GPIO 27</span>, row 7, left 
                            column)</li>
                        <li>On the Breadboard, connect the male leg of the forth jumper wire to the 
                            left ground bus, same row as the <span class="w3-blue">BLUE</span> leg of the LED is connected. In this example we connected it to row 
                            4, 
                            column A</li>
                        <li>On the Breadboard, connect a resistor between the left and right ground 
                            bus columns for the row with the <span class="w3-blue">BLUE</span> leg of the LED. In this example we have attached 
                            it to row 4, column E and F</li>
                    </ol>
                    <p>Your circuit should now be complete, and your connections should look 
                        pretty similar to the illustration above.</p>
                    <p>Now it is time to boot up the Raspberry Pi, and write the Node.js script to 
                        interact with it.</p>
                </div>
                <button class="accordion">Building the Circuit - Common Anode</button>
                <div class="acc_panel">
                    <img src="img_raspberrypi3_websocket_rgb_led_common_anode.png" alt="Raspberry Pi 3 with Breadboard. RGB LED common Anode" style="margin-top:10px;width:100%;max-width:1000px;">
                    <p>Look at the above illustration of the circuit.</p>
                    <ol>
                        <li>On the Breadboard, connect the RGB LED to the right ground bus column, 
                            and make sure that each leg connects to a different row. The longest leg is 
                            the common anode leg. In this example we have connected the LED to rows 
                            1-4, with the common cathode leg connected to row 2 column I. The <span class="w3-red">RED</span> leg is 
                            connected to row 1 column J, the <span class="w3-green">GREEN</span> leg is connected to row 3 column J, 
                            and the <span class="w3-blue">BLUE</span> leg is connected to row 4 column J</li>
                        <li>On the Raspberry Pi, connect the female leg of the first jumper cable 
                            to a <span class="w3-khaki">GPIO</span> pin. We will use this for the <span class="w3-red">RED</span> 
                            leg, In this example we used Physical Pin 
                            7 (<span class="w3-khaki">GPIO 4</span>, row 4, left 
                            column)</li>
                        <li>On the Breadboard, connect the male leg of the first jumper wire to the 
                            left ground bus, same row as the <span class="w3-red">RED</span> leg of the LED is connected. In this example we connected it to row 
                            1, 
                            column A</li>
                        <li>On the Breadboard, connect a resistor between the left and right ground 
                            bus columns for the row with the <span class="w3-red">RED</span> leg of the LED. In this example we have attached 
                            it to row 1, column E and F</li>
                        <li>On the Raspberry Pi, connect the female leg of the second jumper cable 
                            to a <span class="w3-khaki">GPIO</span> pin. We will use this for the <span class="w3-green">GREEN</span> 
                            leg, In this example we used Physical Pin 
                            11 (<span class="w3-khaki">GPIO 17</span>, row 6, left 
                            column)</li>
                        <li>On the Breadboard, connect the male leg of the second jumper wire to the 
                            left ground bus, same row as the <span class="w3-green">GREEN</span> leg of the LED is connected. In this example we connected it to row 
                            3, 
                            column A</li>
                        <li>On the Breadboard, connect a resistor between the left and right ground 
                            bus columns for the row with the <span class="w3-green">GREEN</span> leg of the LED. In this example we have attached 
                            it to row 3, column E and F</li>
                        <li>On the Raspberry Pi, connect the female leg of the third jumper cable 
                            to a <span class="w3-khaki">GPIO</span> pin. We will use this for the <span class="w3-blue">BLUE</span> 
                            leg, In this example we used Physical Pin 
                            13 (<span class="w3-khaki">GPIO 27</span>, row 7, left 
                            column)</li>
                        <li>On the Breadboard, connect the male leg of the third jumper wire to the 
                            left ground bus, same row as the <span class="w3-blue">BLUE</span> leg of the LED is connected. In this example we connected it to row 
                            4, 
                            column A</li>
                        <li>On the Breadboard, connect a resistor between the left and right ground 
                            bus columns for the row with the <span class="w3-blue">BLUE</span> leg of the LED. In this example we have attached 
                            it to row 4, column E and F</li>
                        <li>On the Raspberry Pi, connect the female leg of the forth jumper wire to 
                            <span class="w3-red">3.3V</span>. In this example we used Physical Pin 1 (<span class="w3-red">3.3V</span>, 
                            row 1, left column)</li>
                        <li>On the Breadboard, connect the male leg of the forth jumper wire to 
                            the same row of the right ground bus column that you connected the common 
                            anode to. In this example we connected it to row 2 column F</li>
                    </ol>
                    <p>Your circuit should now be complete, and your connections should look 
                        pretty similar to the illustration above.</p>
                    <p>Now it is time to boot up the Raspberry Pi, and write the Node.js script to 
                        interact with it.</p>
                </div>
                <hr>
                <div id="midcontentadcontainer" style="overflow:auto;text-align:center">
                    <!-- MidContent -->
                    <!-- <p class="adtext">Advertisement</p> -->

                    <div id="adngin-mid_content-0"></div>

                </div>
                <hr>
                <h2>Raspberry Pi and Node.js RGB LED and WebSocket Script</h2>
                <p>Go to the "nodetest" directory, and create a new file called "<code class="w3-codespan">rgbws.js</code>":</p>
                <div class="w3-code notranslate w3-black">
                    pi@w3demopi:~ $ nano rgbws.js
                </div>
                <p>The file is now open and can be edited with the built in Nano Editor.</p>
                <button class="accordion">Using a Common Cathode RGB LED</button>
                <div class="acc_panel">
                    <p>Write, or paste the following:</p>
                    <div class="w3-example">
                        <h3>rgbws.js<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                        <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                                </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> http = require(<span class="jsstringcolor" style="color:brown">'http'</span>).<span class="jspropertycolor" style="color:black">createServer</span>(handler); <span class="commentcolor" style="color:green">//require http server, and 
                                    create server with function handler()<br></span><span class="jskeywordcolor" style="color:mediumblue">var</span> fs = require(<span class="jsstringcolor" style="color:brown">'fs'</span>); <span class="commentcolor" style="color:green">//require 
                                    filesystem module<br></span><span class="jskeywordcolor" style="color:mediumblue">var</span> io = require(<span class="jsstringcolor" style="color:brown">'socket.io'</span>)(http) <span class="commentcolor" style="color:green">//require socket.io 
                                    module and pass the http object (server)<br></span><span class="jskeywordcolor" style="color:mediumblue">var</span> Gpio = require(<span class="jsstringcolor" style="color:brown">'pigpio'</span>).<span class="jspropertycolor" style="color:black">Gpio</span>, <span class="jsnumbercolor" style="color:red">
                                </span>  <span class="commentcolor" style="color:green">//include pigpio to interact with the GPIO<br></span>ledRed = <span class="jskeywordcolor" style="color:mediumblue">new</span> Gpio(<span class="jsnumbercolor" style="color:red">4</span>, {mode: <span class="jsnumbercolor" style="color:red">
                                </span>  Gpio.<span class="jspropertycolor" style="color:black">OUTPUT</span>}), <span class="commentcolor" style="color:green">//use GPIO pin 4 as output for RED<br></span>ledGreen = <span class="jskeywordcolor" style="color:mediumblue">new</span> Gpio(<span class="jsnumbercolor" style="color:red">17</span>, <span class="jsnumbercolor" style="color:red">
                                </span>  {mode: Gpio.<span class="jspropertycolor" style="color:black">OUTPUT</span>}), <span class="commentcolor" style="color:green">//use GPIO pin 17 as output for GREEN<br></span>ledBlue = <span class="jskeywordcolor" style="color:mediumblue">new</span> <span class="jsnumbercolor" style="color:red">
                                </span>  Gpio(<span class="jsnumbercolor" style="color:red">27</span>, {mode: Gpio.<span class="jspropertycolor" style="color:black">OUTPUT</span>}), <span class="commentcolor" style="color:green">//use GPIO pin 27 as output for BLUE<br></span>redRGB <span class="jsnumbercolor" style="color:red">
                                </span>  = <span class="jsnumbercolor" style="color:red">0</span>, <span class="commentcolor" style="color:green">//set starting value of RED variable to off (0 for common cathode)<br></span><span class="jsnumbercolor" style="color:red">
                                </span>  greenRGB = <span class="jsnumbercolor" style="color:red">0</span>, <span class="commentcolor" style="color:green">//set starting value of GREEN variable to off (0 for common 
                                    cathode)<br></span>blueRGB = <span class="jsnumbercolor" style="color:red">0</span>; <span class="commentcolor" style="color:green">//set starting value of BLUE variable to off (0 for 
                                    common cathode)<br></span><br><span class="commentcolor" style="color:green">//RESET RGB LED<br></span>ledRed.<span class="jspropertycolor" style="color:black">digitalWrite</span>(<span class="jsnumbercolor" style="color:red">0</span>); <span class="commentcolor" style="color:green">// Turn RED 
                                    LED off<br></span>ledGreen.<span class="jspropertycolor" style="color:black">digitalWrite</span>(<span class="jsnumbercolor" style="color:red">0</span>); <span class="commentcolor" style="color:green">// Turn GREEN LED off<br></span><span class="jsnumbercolor" style="color:red">
                                </span>  ledBlue.<span class="jspropertycolor" style="color:black">digitalWrite</span>(<span class="jsnumbercolor" style="color:red">0</span>); <span class="commentcolor" style="color:green">// Turn BLUE LED off<br></span><br>http.<span class="jspropertycolor" style="color:black">listen</span>(<span class="jsnumbercolor" style="color:red">8080</span>); <span class="jsnumbercolor" style="color:red">
                                </span>  <span class="commentcolor" style="color:green">//listen to port 8080<br></span><br><span class="jskeywordcolor" style="color:mediumblue">function</span> handler (req, res) { <span class="commentcolor" style="color:green">//what to do on 
                                    requests to port 8080<br></span>&nbsp; fs.<span class="jspropertycolor" style="color:black">readFile</span>(__dirname + <span class="jsstringcolor" style="color:brown">'/public/rgb.html'</span>, <span class="jsnumbercolor" style="color:red">
                                </span>  <span class="jskeywordcolor" style="color:mediumblue">function</span>(err, data) { <span class="commentcolor" style="color:green">//read file rgb.html in public folder<br></span>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                                </span>  <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) {<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; res.<span class="jspropertycolor" style="color:black">writeHead</span>(<span class="jsnumbercolor" style="color:red">404</span>, <span class="jsnumbercolor" style="color:red">
                                </span>  {<span class="jsstringcolor" style="color:brown">'Content-Type'</span>: <span class="jsstringcolor" style="color:brown">'text/html'</span>}); <span class="commentcolor" style="color:green">//display 404 on error<br></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                                </span>  <span class="jskeywordcolor" style="color:mediumblue">return</span> res.<span class="jspropertycolor" style="color:black">end</span>(<span class="jsstringcolor" style="color:brown">"404 Not Found"</span>);<br>&nbsp;&nbsp;&nbsp; }<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                                </span>  res.<span class="jspropertycolor" style="color:black">writeHead</span>(<span class="jsnumbercolor" style="color:red">200</span>, {<span class="jsstringcolor" style="color:brown">'Content-Type'</span>: <span class="jsstringcolor" style="color:brown">'text/html'</span>}); <span class="commentcolor" style="color:green">//write HTML<br></span>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                                </span>  res.<span class="jspropertycolor" style="color:black">write</span>(data); <span class="commentcolor" style="color:green">//write data from rgb.html<br></span>&nbsp;&nbsp;&nbsp; <span class="jskeywordcolor" style="color:mediumblue">return</span> <span class="jsnumbercolor" style="color:red">
                                </span>  res.<span class="jspropertycolor" style="color:black">end</span>();<br>&nbsp; });<br>}<br><br>io.<span class="jspropertycolor" style="color:black">sockets</span>.<span class="jspropertycolor" style="color:black">on</span>(<span class="jsstringcolor" style="color:brown">'connection'</span>, <span class="jskeywordcolor" style="color:mediumblue">function</span> <span class="jsnumbercolor" style="color:red">
                                </span>  (socket) {<span class="commentcolor" style="color:green">// Web Socket Connection<br></span>&nbsp; socket.<span class="jspropertycolor" style="color:black">on</span>(<span class="jsstringcolor" style="color:brown">'rgbLed'</span>, <span class="jsnumbercolor" style="color:red">
                                </span>  <span class="jskeywordcolor" style="color:mediumblue">function</span>(data) { <span class="commentcolor" style="color:green">//get light switch status from client<br></span>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                                </span>  console.<span class="jspropertycolor" style="color:black">log</span>(data); <span class="commentcolor" style="color:green">//output data from WebSocket connection to console<br></span><br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                                </span>  <span class="commentcolor" style="color:green">//for common cathode RGB LED&nbsp;0 is fully off, and 255 is fully on<br></span>&nbsp;&nbsp;&nbsp; redRGB=parseInt(data.<span class="jspropertycolor" style="color:black">red</span>);<span class="jsnumbercolor" style="color:red">
                                </span>  <br>&nbsp;&nbsp;&nbsp; greenRGB=parseInt(data.<span class="jspropertycolor" style="color:black">green</span>);<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                                </span>  blueRGB=parseInt(data.<span class="jspropertycolor" style="color:black">blue</span>);<br><br>&nbsp;&nbsp;&nbsp; ledRed.<span class="jspropertycolor" style="color:black">pwmWrite</span>(redRGB); <span class="commentcolor" style="color:green">//set RED LED to specified 
                                    value<br></span>&nbsp;&nbsp;&nbsp; ledGreen.<span class="jspropertycolor" style="color:black">pwmWrite</span>(greenRGB); <span class="commentcolor" style="color:green">//set GREEN LED to 
                                    specified value<br></span>&nbsp;&nbsp;&nbsp; ledBlue.<span class="jspropertycolor" style="color:black">pwmWrite</span>(blueRGB); <span class="commentcolor" style="color:green">//set BLUE 
                                    LED to specified value<br></span>&nbsp; });<br>});<br><br>process.<span class="jspropertycolor" style="color:black">on</span>(<span class="jsstringcolor" style="color:brown">'SIGINT'</span>, <span class="jsnumbercolor" style="color:red">
                                </span>  <span class="jskeywordcolor" style="color:mediumblue">function</span> () { <span class="commentcolor" style="color:green">//on ctrl+c<br></span>&nbsp; ledRed.<span class="jspropertycolor" style="color:black">digitalWrite</span>(<span class="jsnumbercolor" style="color:red">0</span>); <span class="commentcolor" style="color:green">// Turn RED LED 
                                    off<br></span>&nbsp; ledGreen.<span class="jspropertycolor" style="color:black">digitalWrite</span>(<span class="jsnumbercolor" style="color:red">0</span>); <span class="commentcolor" style="color:green">// Turn GREEN LED off<br></span>&nbsp; <span class="jsnumbercolor" style="color:red">
                                </span>  ledBlue.<span class="jspropertycolor" style="color:black">digitalWrite</span>(<span class="jsnumbercolor" style="color:red">0</span>); <span class="commentcolor" style="color:green">// Turn BLUE LED off<br></span>&nbsp; process.<span class="jspropertycolor" style="color:black">exit</span>(); <span class="commentcolor" style="color:green">//exit 
                                    completely<br></span>}); </span></div>
                    </div>
                    <p>Press "<code class="w3-codespan">Ctrl+x</code>" to save the code. Confirm with "<code class="w3-codespan">y</code>", and confirm the name with "<code class="w3-codespan">Enter</code>".</p>
                </div>
                <button class="accordion">Using a Common Anode RGB LED</button>
                <div class="acc_panel">
                    <p>Write, or paste the following:</p>
                    <div class="w3-example">
                        <h3>rgbws.js<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                        <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                                </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> http = require(<span class="jsstringcolor" style="color:brown">'http'</span>).<span class="jspropertycolor" style="color:black">createServer</span>(handler); <span class="commentcolor" style="color:green">//require http server, and 
                                    create server with function handler()<br></span><span class="jskeywordcolor" style="color:mediumblue">var</span> fs = require(<span class="jsstringcolor" style="color:brown">'fs'</span>); <span class="commentcolor" style="color:green">//require 
                                    filesystem module<br></span><span class="jskeywordcolor" style="color:mediumblue">var</span> io = require(<span class="jsstringcolor" style="color:brown">'socket.io'</span>)(http) <span class="commentcolor" style="color:green">//require socket.io 
                                    module and pass the http object (server)<br></span><span class="jskeywordcolor" style="color:mediumblue">var</span> Gpio = require(<span class="jsstringcolor" style="color:brown">'pigpio'</span>).<span class="jspropertycolor" style="color:black">Gpio</span>, <span class="jsnumbercolor" style="color:red">
                                </span>  <span class="commentcolor" style="color:green">//include pigpio to interact with the GPIO<br></span>ledRed = <span class="jskeywordcolor" style="color:mediumblue">new</span> Gpio(<span class="jsnumbercolor" style="color:red">4</span>, {mode: <span class="jsnumbercolor" style="color:red">
                                </span>  Gpio.<span class="jspropertycolor" style="color:black">OUTPUT</span>}), <span class="commentcolor" style="color:green">//use GPIO pin 4 as output for RED<br></span>ledGreen = <span class="jskeywordcolor" style="color:mediumblue">new</span> Gpio(<span class="jsnumbercolor" style="color:red">17</span>, <span class="jsnumbercolor" style="color:red">
                                </span>  {mode: Gpio.<span class="jspropertycolor" style="color:black">OUTPUT</span>}), <span class="commentcolor" style="color:green">//use GPIO pin 17 as output for GREEN<br></span>ledBlue = <span class="jskeywordcolor" style="color:mediumblue">new</span> <span class="jsnumbercolor" style="color:red">
                                </span>  Gpio(<span class="jsnumbercolor" style="color:red">27</span>, {mode: Gpio.<span class="jspropertycolor" style="color:black">OUTPUT</span>}), <span class="commentcolor" style="color:green">//use GPIO pin 27 as output for BLUE<br></span>redRGB <span class="jsnumbercolor" style="color:red">
                                </span>  = <span class="jsnumbercolor" style="color:red">255</span>, <span class="commentcolor" style="color:green">//set starting value of RED variable to off (255 for common anode)<br></span><span class="jsnumbercolor" style="color:red">
                                </span>  greenRGB = <span class="jsnumbercolor" style="color:red">255</span>, <span class="commentcolor" style="color:green">//set starting value of GREEN variable to off (255 for common 
                                    anode)<br></span>blueRGB = <span class="jsnumbercolor" style="color:red">255</span>; <span class="commentcolor" style="color:green">//set starting value of BLUE variable to off (255 for 
                                    common anode)<br></span><br><span class="commentcolor" style="color:green">//RESET RGB LED<br></span>ledRed.<span class="jspropertycolor" style="color:black">digitalWrite</span>(<span class="jsnumbercolor" style="color:red">1</span>); <span class="commentcolor" style="color:green">// Turn RED 
                                    LED off<br></span>ledGreen.<span class="jspropertycolor" style="color:black">digitalWrite</span>(<span class="jsnumbercolor" style="color:red">1</span>); <span class="commentcolor" style="color:green">// Turn GREEN LED off<br></span><span class="jsnumbercolor" style="color:red">
                                </span>  ledBlue.<span class="jspropertycolor" style="color:black">digitalWrite</span>(<span class="jsnumbercolor" style="color:red">1</span>); <span class="commentcolor" style="color:green">// Turn BLUE LED off<br></span><br>http.<span class="jspropertycolor" style="color:black">listen</span>(<span class="jsnumbercolor" style="color:red">8080</span>); <span class="jsnumbercolor" style="color:red">
                                </span>  <span class="commentcolor" style="color:green">//listen to port 8080<br></span><br><span class="jskeywordcolor" style="color:mediumblue">function</span> handler (req, res) { <span class="commentcolor" style="color:green">//what to do on 
                                    requests to port 8080<br></span>&nbsp; fs.<span class="jspropertycolor" style="color:black">readFile</span>(__dirname + <span class="jsstringcolor" style="color:brown">'/public/rgb.html'</span>, <span class="jsnumbercolor" style="color:red">
                                </span>  <span class="jskeywordcolor" style="color:mediumblue">function</span>(err, data) { <span class="commentcolor" style="color:green">//read file rgb.html in public folder<br></span>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                                </span>  <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) {<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; res.<span class="jspropertycolor" style="color:black">writeHead</span>(<span class="jsnumbercolor" style="color:red">404</span>, <span class="jsnumbercolor" style="color:red">
                                </span>  {<span class="jsstringcolor" style="color:brown">'Content-Type'</span>: <span class="jsstringcolor" style="color:brown">'text/html'</span>}); <span class="commentcolor" style="color:green">//display 404 on error<br></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                                </span>  <span class="jskeywordcolor" style="color:mediumblue">return</span> res.<span class="jspropertycolor" style="color:black">end</span>(<span class="jsstringcolor" style="color:brown">"404 Not Found"</span>);<br>&nbsp;&nbsp;&nbsp; }<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                                </span>  res.<span class="jspropertycolor" style="color:black">writeHead</span>(<span class="jsnumbercolor" style="color:red">200</span>, {<span class="jsstringcolor" style="color:brown">'Content-Type'</span>: <span class="jsstringcolor" style="color:brown">'text/html'</span>}); <span class="commentcolor" style="color:green">//write HTML<br></span>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                                </span>  res.<span class="jspropertycolor" style="color:black">write</span>(data); <span class="commentcolor" style="color:green">//write data from rgb.html<br></span>&nbsp;&nbsp;&nbsp; <span class="jskeywordcolor" style="color:mediumblue">return</span> <span class="jsnumbercolor" style="color:red">
                                </span>  res.<span class="jspropertycolor" style="color:black">end</span>();<br>&nbsp; });<br>}<br><br>io.<span class="jspropertycolor" style="color:black">sockets</span>.<span class="jspropertycolor" style="color:black">on</span>(<span class="jsstringcolor" style="color:brown">'connection'</span>, <span class="jskeywordcolor" style="color:mediumblue">function</span> <span class="jsnumbercolor" style="color:red">
                                </span>  (socket) {<span class="commentcolor" style="color:green">// Web Socket Connection<br></span>&nbsp; socket.<span class="jspropertycolor" style="color:black">on</span>(<span class="jsstringcolor" style="color:brown">'rgbLed'</span>, <span class="jsnumbercolor" style="color:red">
                                </span>  <span class="jskeywordcolor" style="color:mediumblue">function</span>(data) { <span class="commentcolor" style="color:green">//get light switch status from client<br></span>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                                </span>  console.<span class="jspropertycolor" style="color:black">log</span>(data); <span class="commentcolor" style="color:green">//output data from WebSocket connection to console<br></span><br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                                </span>  <span class="commentcolor" style="color:green">//for common anode RGB LED&nbsp; 255 is fully off, and 0 is fully on, so we 
                                    have to change the value from the client<br></span>&nbsp;&nbsp;&nbsp; redRGB=<span class="jsnumbercolor" style="color:red">255</span>-parseInt(data.<span class="jspropertycolor" style="color:black">red</span>);<span class="jsnumbercolor" style="color:red">
                                </span>  <br>&nbsp;&nbsp;&nbsp; greenRGB=<span class="jsnumbercolor" style="color:red">255</span>-parseInt(data.<span class="jspropertycolor" style="color:black">green</span>);<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                                </span>  blueRGB=<span class="jsnumbercolor" style="color:red">255</span>-parseInt(data.<span class="jspropertycolor" style="color:black">blue</span>);<br><br>&nbsp;&nbsp;&nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(<span class="jsstringcolor" style="color:brown">"rbg: "</span> <span class="jsnumbercolor" style="color:red">
                                </span>  + redRGB + <span class="jsstringcolor" style="color:brown">", "</span> + greenRGB + <span class="jsstringcolor" style="color:brown">", "</span> + blueRGB); <span class="commentcolor" style="color:green">//output converted to console<br></span><span class="jsnumbercolor" style="color:red">
                                </span>  <br>&nbsp;&nbsp;&nbsp; ledRed.<span class="jspropertycolor" style="color:black">pwmWrite</span>(redRGB); <span class="commentcolor" style="color:green">//set RED LED to specified 
                                    value<br></span>&nbsp;&nbsp;&nbsp; ledGreen.<span class="jspropertycolor" style="color:black">pwmWrite</span>(greenRGB); <span class="commentcolor" style="color:green">//set GREEN LED to 
                                    specified value<br></span>&nbsp;&nbsp;&nbsp; ledBlue.<span class="jspropertycolor" style="color:black">pwmWrite</span>(blueRGB); <span class="commentcolor" style="color:green">//set BLUE 
                                    LED to specified value<br></span>&nbsp; });<br>});<br><br>process.<span class="jspropertycolor" style="color:black">on</span>(<span class="jsstringcolor" style="color:brown">'SIGINT'</span>, <span class="jsnumbercolor" style="color:red">
                                </span>  <span class="jskeywordcolor" style="color:mediumblue">function</span> () { <span class="commentcolor" style="color:green">//on ctrl+c<br></span>&nbsp; ledRed.<span class="jspropertycolor" style="color:black">digitalWrite</span>(<span class="jsnumbercolor" style="color:red">1</span>); <span class="commentcolor" style="color:green">// Turn RED LED 
                                    off<br></span>&nbsp; ledGreen.<span class="jspropertycolor" style="color:black">digitalWrite</span>(<span class="jsnumbercolor" style="color:red">1</span>); <span class="commentcolor" style="color:green">// Turn GREEN LED off<br></span>&nbsp; <span class="jsnumbercolor" style="color:red">
                                </span>  ledBlue.<span class="jspropertycolor" style="color:black">digitalWrite</span>(<span class="jsnumbercolor" style="color:red">1</span>); <span class="commentcolor" style="color:green">// Turn BLUE LED off<br></span>&nbsp; process.<span class="jspropertycolor" style="color:black">exit</span>(); <span class="commentcolor" style="color:green">//exit 
                                    completely<br></span>}); </span></div>
                    </div>
                    <p>Press "<code class="w3-codespan">Ctrl+x</code>" to save the code. Confirm with "<code class="w3-codespan">y</code>", and confirm the name with "<code class="w3-codespan">Enter</code>".</p>
                </div>
                <hr>
                <h2>Raspberry Pi and Node.js WebSocket UI</h2>

                <p>Now it is time add the HTML that allows for user input via WebSocket.</p>
                <p>For this we want:</p>
                <ul>
                    <li>3 color sliders, one for each color (RGB)</li>
                    <li>A color picker</li>
                    <li>A div showing the current color</li>
                </ul>
                <p>Go to the folder "public":</p>
                <div class="w3-code notranslate w3-black">
                    pi@w3demopi:~/nodetest $ 
                    cd public
                </div>
                <p>And create a HTML file, rgb.html:</p>
                <div class="w3-code notranslate w3-black">
                    pi@w3demopi:~/nodetest/public $ 
                    nano rgb.html</div>
                <div class="w3-example">
                    <p>rgb.html:</p>
                    <div class="w3-code notranslate htmlHigh">
                        <span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>!DOCTYPE<span class="attributecolor" style="color:red"> html</span><span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>html<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>meta<span class="attributecolor" style="color:red"> name<span class="attributevaluecolor" style="color:mediumblue">="viewport"</span> 
                                content<span class="attributevaluecolor" style="color:mediumblue">="width=device-width, initial-scale=1"</span></span><span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>link<span class="attributecolor" style="color:red"> rel<span class="attributevaluecolor" style="color:mediumblue">="stylesheet"</span> 
                                href<span class="attributevaluecolor" style="color:mediumblue">="https://www.w3schools.com/w3css/4/w3.css"</span></span><span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>style<span class="tagcolor" style="color:mediumblue">&gt;</span></span><span class="cssselectorcolor" style="color:brown"><br>.slider <span class="cssdelimitercolor" style="color:black">{</span><span class="csspropertycolor" style="color:red"><br>&nbsp; 
                                -webkit-appearance<span class="csspropertyvaluecolor" style="color:mediumblue"><span class="cssdelimitercolor" style="color:black">:</span> none<span class="cssdelimitercolor" style="color:black">;</span></span><br>&nbsp; width<span class="csspropertyvaluecolor" style="color:mediumblue"><span class="cssdelimitercolor" style="color:black">:</span> 100%<span class="cssdelimitercolor" style="color:black">;</span></span><br>&nbsp; height<span class="csspropertyvaluecolor" style="color:mediumblue"><span class="cssdelimitercolor" style="color:black">:</span> 15px<span class="cssdelimitercolor" style="color:black">;</span></span><br>&nbsp; 
                                border-radius<span class="csspropertyvaluecolor" style="color:mediumblue"><span class="cssdelimitercolor" style="color:black">:</span> 5px<span class="cssdelimitercolor" style="color:black">;</span></span><br>&nbsp; background<span class="csspropertyvaluecolor" style="color:mediumblue"><span class="cssdelimitercolor" style="color:black">:</span> #d3d3d3<span class="cssdelimitercolor" style="color:black">;</span></span><br>&nbsp; outline<span class="csspropertyvaluecolor" style="color:mediumblue"><span class="cssdelimitercolor" style="color:black">:</span> none<span class="cssdelimitercolor" style="color:black">;</span></span><br>&nbsp; 
                                opacity<span class="csspropertyvaluecolor" style="color:mediumblue"><span class="cssdelimitercolor" style="color:black">:</span> 0.7<span class="cssdelimitercolor" style="color:black">;</span></span><br>&nbsp; -webkit-transition<span class="csspropertyvaluecolor" style="color:mediumblue"><span class="cssdelimitercolor" style="color:black">:</span> .2s<span class="cssdelimitercolor" style="color:black">;</span></span><br>&nbsp; transition<span class="csspropertyvaluecolor" style="color:mediumblue"><span class="cssdelimitercolor" style="color:black">:</span> 
                                    opacity .2s<span class="cssdelimitercolor" style="color:black">;</span></span><br></span><span class="cssdelimitercolor" style="color:black">}</span><br><br>.slider:hover <span class="cssdelimitercolor" style="color:black">{</span><span class="csspropertycolor" style="color:red">opacity<span class="csspropertyvaluecolor" style="color:mediumblue"><span class="cssdelimitercolor" style="color:black">:</span> 1<span class="cssdelimitercolor" style="color:black">;</span></span></span><span class="cssdelimitercolor" style="color:black">}</span><br>
                            <br>.slider::-webkit-slider-thumb <span class="cssdelimitercolor" style="color:black">{</span><span class="csspropertycolor" style="color:red"><br>&nbsp; -webkit-appearance<span class="csspropertyvaluecolor" style="color:mediumblue"><span class="cssdelimitercolor" style="color:black">:</span> none<span class="cssdelimitercolor" style="color:black">;</span></span><br>&nbsp; 
                                appearance<span class="csspropertyvaluecolor" style="color:mediumblue"><span class="cssdelimitercolor" style="color:black">:</span> none<span class="cssdelimitercolor" style="color:black">;</span></span><br>&nbsp; width<span class="csspropertyvaluecolor" style="color:mediumblue"><span class="cssdelimitercolor" style="color:black">:</span> 25px<span class="cssdelimitercolor" style="color:black">;</span></span><br>&nbsp; height<span class="csspropertyvaluecolor" style="color:mediumblue"><span class="cssdelimitercolor" style="color:black">:</span> 25px<span class="cssdelimitercolor" style="color:black">;</span></span><br>&nbsp; 
                                border-radius<span class="csspropertyvaluecolor" style="color:mediumblue"><span class="cssdelimitercolor" style="color:black">:</span> 50%<span class="cssdelimitercolor" style="color:black">;</span></span><br>&nbsp; cursor<span class="csspropertyvaluecolor" style="color:mediumblue"><span class="cssdelimitercolor" style="color:black">:</span> pointer<span class="cssdelimitercolor" style="color:black">;</span></span><br></span><span class="cssdelimitercolor" style="color:black">}</span><br><br>.slider::-moz-range-thumb <span class="cssdelimitercolor" style="color:black">{</span><span class="csspropertycolor" style="color:red"><br>&nbsp; width<span class="csspropertyvaluecolor" style="color:mediumblue"><span class="cssdelimitercolor" style="color:black">:</span> 
                                    25px<span class="cssdelimitercolor" style="color:black">;</span></span><br>&nbsp; height<span class="csspropertyvaluecolor" style="color:mediumblue"><span class="cssdelimitercolor" style="color:black">:</span> 25px<span class="cssdelimitercolor" style="color:black">;</span></span><br>&nbsp; border-radius<span class="csspropertyvaluecolor" style="color:mediumblue"><span class="cssdelimitercolor" style="color:black">:</span> 50%<span class="cssdelimitercolor" style="color:black">;</span></span><br>&nbsp; 
                                background<span class="csspropertyvaluecolor" style="color:mediumblue"><span class="cssdelimitercolor" style="color:black">:</span> #4CAF50<span class="cssdelimitercolor" style="color:black">;</span></span><br>&nbsp; cursor<span class="csspropertyvaluecolor" style="color:mediumblue"><span class="cssdelimitercolor" style="color:black">:</span> pointer<span class="cssdelimitercolor" style="color:black">;</span></span><br></span><span class="cssdelimitercolor" style="color:black">}</span><br>#redSlider::-webkit-slider-thumb <span class="cssdelimitercolor" style="color:black">{</span><span class="csspropertycolor" style="color:red">background<span class="csspropertyvaluecolor" style="color:mediumblue"><span class="cssdelimitercolor" style="color:black">:</span> red<span class="cssdelimitercolor" style="color:black">;</span></span></span><span class="cssdelimitercolor" style="color:black">}</span><br>#redSlider::-moz-range-thumb 
                            <span class="cssdelimitercolor" style="color:black">{</span><span class="csspropertycolor" style="color:red">background<span class="csspropertyvaluecolor" style="color:mediumblue"><span class="cssdelimitercolor" style="color:black">:</span> red<span class="cssdelimitercolor" style="color:black">;</span></span></span><span class="cssdelimitercolor" style="color:black">}</span><br>#greenSlider::-webkit-slider-thumb <span class="cssdelimitercolor" style="color:black">{</span><span class="csspropertycolor" style="color:red">background<span class="csspropertyvaluecolor" style="color:mediumblue"><span class="cssdelimitercolor" style="color:black">:</span> 
                                    green<span class="cssdelimitercolor" style="color:black">;</span></span></span><span class="cssdelimitercolor" style="color:black">}</span><br>#greenSlider::-moz-range-thumb <span class="cssdelimitercolor" style="color:black">{</span><span class="csspropertycolor" style="color:red">background<span class="csspropertyvaluecolor" style="color:mediumblue"><span class="cssdelimitercolor" style="color:black">:</span> green<span class="cssdelimitercolor" style="color:black">;</span></span></span><span class="cssdelimitercolor" style="color:black">}</span><br>#blueSlider::-webkit-slider-thumb 
                            <span class="cssdelimitercolor" style="color:black">{</span><span class="csspropertycolor" style="color:red">background<span class="csspropertyvaluecolor" style="color:mediumblue"><span class="cssdelimitercolor" style="color:black">:</span> blue<span class="cssdelimitercolor" style="color:black">;</span></span></span><span class="cssdelimitercolor" style="color:black">}</span><br>#blueSlider::-moz-range-thumb <span class="cssdelimitercolor" style="color:black">{</span><span class="csspropertycolor" style="color:red">background<span class="csspropertyvaluecolor" style="color:mediumblue"><span class="cssdelimitercolor" style="color:black">:</span> blue<span class="cssdelimitercolor" style="color:black">;</span></span></span><span class="cssdelimitercolor" style="color:black">}</span><br>
                        </span><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/style<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>body<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>div<span class="attributecolor" style="color:red"> class<span class="attributevaluecolor" style="color:mediumblue">="w3-container"</span></span><span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>h1<span class="tagcolor" style="color:mediumblue">&gt;</span></span>RGB Color<span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/h1<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br>
                        <span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>div<span class="attributecolor" style="color:red"> class<span class="attributevaluecolor" style="color:mediumblue">="w3-cell-row"</span></span><span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>div<span class="attributecolor" style="color:red"> class<span class="attributevaluecolor" style="color:mediumblue">="w3-container w3-cell w3-mobile"</span></span><span class="tagcolor" style="color:mediumblue">&gt;</span></span><br>
                        <span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>p<span class="tagcolor" style="color:mediumblue">&gt;</span></span><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>input<span class="attributecolor" style="color:red"> type<span class="attributevaluecolor" style="color:mediumblue">="range"</span> min<span class="attributevaluecolor" style="color:mediumblue">="0"</span> max<span class="attributevaluecolor" style="color:mediumblue">="255"</span> value<span class="attributevaluecolor" style="color:mediumblue">="0"</span> class<span class="attributevaluecolor" style="color:mediumblue">="slider"</span> id<span class="attributevaluecolor" style="color:mediumblue">="redSlider"</span></span><span class="tagcolor" style="color:mediumblue">&gt;</span></span><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/p<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br>
                        <span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>p<span class="tagcolor" style="color:mediumblue">&gt;</span></span><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>input<span class="attributecolor" style="color:red"> type<span class="attributevaluecolor" style="color:mediumblue">="range"</span> min<span class="attributevaluecolor" style="color:mediumblue">="0"</span> max<span class="attributevaluecolor" style="color:mediumblue">="255"</span> value<span class="attributevaluecolor" style="color:mediumblue">="0"</span> class<span class="attributevaluecolor" style="color:mediumblue">="slider"</span> id<span class="attributevaluecolor" style="color:mediumblue">="greenSlider"</span></span><span class="tagcolor" style="color:mediumblue">&gt;</span></span><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/p<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br>
                        <span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>p<span class="tagcolor" style="color:mediumblue">&gt;</span></span><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>input<span class="attributecolor" style="color:red"> type<span class="attributevaluecolor" style="color:mediumblue">="range"</span> min<span class="attributevaluecolor" style="color:mediumblue">="0"</span> max<span class="attributevaluecolor" style="color:mediumblue">="255"</span> value<span class="attributevaluecolor" style="color:mediumblue">="0"</span> class<span class="attributevaluecolor" style="color:mediumblue">="slider"</span> id<span class="attributevaluecolor" style="color:mediumblue">="blueSlider"</span></span><span class="tagcolor" style="color:mediumblue">&gt;</span></span><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/p<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br>
                        <span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/div<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>div<span class="attributecolor" style="color:red"> class<span class="attributevaluecolor" style="color:mediumblue">="w3-container w3-cell w3-mobile"</span> style<span class="attributevaluecolor" style="color:mediumblue">="background-color:black"</span> 
                                id<span class="attributevaluecolor" style="color:mediumblue">="colorShow"</span></span><span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>div<span class="tagcolor" style="color:mediumblue">&gt;</span></span><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/div<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/div<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/div<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>p<span class="tagcolor" style="color:mediumblue">&gt;</span></span>Or pick a color: 
                        <span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>input<span class="attributecolor" style="color:red"> type<span class="attributevaluecolor" style="color:mediumblue">="color"</span> id<span class="attributevaluecolor" style="color:mediumblue">="pickColor"</span></span><span class="tagcolor" style="color:mediumblue">&gt;</span></span><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/p<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/div<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>script<span class="attributecolor" style="color:red"> src<span class="attributevaluecolor" style="color:mediumblue">="https://cdnjs.cloudflare.com/ajax/libs/socket.io/2.0.3/socket.io.js"</span></span><span class="tagcolor" style="color:mediumblue">&gt;</span></span><span class="jscolor" style="color:black"></span><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/script<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br>
                        <span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>script<span class="attributecolor" style="color:red"> src<span class="attributevaluecolor" style="color:mediumblue">="https://www.w3schools.com/lib/w3color.js"</span></span><span class="tagcolor" style="color:mediumblue">&gt;</span></span><span class="jscolor" style="color:black"></span><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/script<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>script<span class="tagcolor" style="color:mediumblue">&gt;</span></span><span class="jscolor" style="color:black"><br><span class="jsnumbercolor" style="color:red">
                            </span>    <span class="jskeywordcolor" style="color:mediumblue">var</span> socket = io(); <span class="commentcolor" style="color:green">//load socket.io-client and connect to the host that 
                                serves the page<br></span><span class="jskeywordcolor" style="color:mediumblue">var</span> rgb = w3color(<span class="jsstringcolor" style="color:brown">"rgb(0,0,0)"</span>); <span class="commentcolor" style="color:green">//we use the w3color.js 
                                library to keep the color as an object<br></span>window.<span class="jspropertycolor" style="color:black">addEventListener</span>(<span class="jsstringcolor" style="color:brown">"load"</span>, <span class="jsnumbercolor" style="color:red">
                            </span>    <span class="jskeywordcolor" style="color:mediumblue">function</span>(){ <span class="commentcolor" style="color:green">//when page loads<br></span>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">var</span> rSlider = <span class="jsnumbercolor" style="color:red">
                            </span>    document.<span class="jspropertycolor" style="color:black">getElementById</span>(<span class="jsstringcolor" style="color:brown">"redSlider"</span>);<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">var</span> gSlider = <span class="jsnumbercolor" style="color:red">
                            </span>    document.<span class="jspropertycolor" style="color:black">getElementById</span>(<span class="jsstringcolor" style="color:brown">"greenSlider"</span>);<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">var</span> bSlider = <span class="jsnumbercolor" style="color:red">
                            </span>    document.<span class="jspropertycolor" style="color:black">getElementById</span>(<span class="jsstringcolor" style="color:brown">"blueSlider"</span>);<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">var</span> picker = <span class="jsnumbercolor" style="color:red">
                            </span>    document.<span class="jspropertycolor" style="color:black">getElementById</span>(<span class="jsstringcolor" style="color:brown">"pickColor"</span>);<br><br>&nbsp; rSlider.<span class="jspropertycolor" style="color:black">addEventListener</span>(<span class="jsstringcolor" style="color:brown">"change"</span>, <span class="jsnumbercolor" style="color:red">
                            </span>    <span class="jskeywordcolor" style="color:mediumblue">function</span>() { <span class="commentcolor" style="color:green">//add event listener for when red slider changes<br></span>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    rgb.<span class="jspropertycolor" style="color:black">red</span> = <span class="jskeywordcolor" style="color:mediumblue">this</span>.<span class="jspropertycolor" style="color:black">value</span>; <span class="commentcolor" style="color:green">//update the RED color according to the slider<br></span>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    colorShow.<span class="jspropertycolor" style="color:black">style</span>.<span class="jspropertycolor" style="color:black">backgroundColor</span> = rgb.<span class="jspropertycolor" style="color:black">toRgbString</span>(); <span class="commentcolor" style="color:green">//update the "Current 
                                color"<br></span>&nbsp;&nbsp;&nbsp; socket.<span class="jspropertycolor" style="color:black">emit</span>(<span class="jsstringcolor" style="color:brown">"rgbLed"</span>, rgb); <span class="commentcolor" style="color:green">//send the updated 
                                color to RGB LED via WebSocket<br></span>&nbsp; });<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    gSlider.<span class="jspropertycolor" style="color:black">addEventListener</span>(<span class="jsstringcolor" style="color:brown">"change"</span>, <span class="jskeywordcolor" style="color:mediumblue">function</span>() { <span class="commentcolor" style="color:green">//add event listener for 
                                when green slider changes<br></span>&nbsp;&nbsp;&nbsp; rgb.<span class="jspropertycolor" style="color:black">green</span> = <span class="jskeywordcolor" style="color:mediumblue">this</span>.<span class="jspropertycolor" style="color:black">value</span>; <span class="jsnumbercolor" style="color:red">
                            </span>    <span class="commentcolor" style="color:green">//update the GREEN color according to the slider<br></span>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    colorShow.<span class="jspropertycolor" style="color:black">style</span>.<span class="jspropertycolor" style="color:black">backgroundColor</span> = rgb.<span class="jspropertycolor" style="color:black">toRgbString</span>(); <span class="commentcolor" style="color:green">//update the "Current 
                                color"<br></span>&nbsp;&nbsp;&nbsp; socket.<span class="jspropertycolor" style="color:black">emit</span>(<span class="jsstringcolor" style="color:brown">"rgbLed"</span>, rgb); <span class="commentcolor" style="color:green">//send the updated 
                                color to RGB LED via WebSocket<br></span>&nbsp; });<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    bSlider.<span class="jspropertycolor" style="color:black">addEventListener</span>(<span class="jsstringcolor" style="color:brown">"change"</span>, <span class="jskeywordcolor" style="color:mediumblue">function</span>() { <span class="commentcolor" style="color:green">//add event listener for 
                                when blue slider changes<br></span>&nbsp;&nbsp;&nbsp; rgb.<span class="jspropertycolor" style="color:black">blue</span> = <span class="jskeywordcolor" style="color:mediumblue">this</span>.<span class="jspropertycolor" style="color:black">value</span>;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    <span class="commentcolor" style="color:green">//update the BLUE color according to the slider<br></span>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    colorShow.<span class="jspropertycolor" style="color:black">style</span>.<span class="jspropertycolor" style="color:black">backgroundColor</span> = rgb.<span class="jspropertycolor" style="color:black">toRgbString</span>(); <span class="commentcolor" style="color:green">//update the "Current 
                                color"<br></span>&nbsp;&nbsp;&nbsp; socket.<span class="jspropertycolor" style="color:black">emit</span>(<span class="jsstringcolor" style="color:brown">"rgbLed"</span>, rgb); <span class="commentcolor" style="color:green">//send the updated 
                                color to RGB LED via WebSocket<br></span>&nbsp; });<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    picker.<span class="jspropertycolor" style="color:black">addEventListener</span>(<span class="jsstringcolor" style="color:brown">"input"</span>, <span class="jskeywordcolor" style="color:mediumblue">function</span>() { <span class="commentcolor" style="color:green">//add event listener for when 
                                colorpicker changes<br></span>&nbsp;&nbsp;&nbsp; rgb.<span class="jspropertycolor" style="color:black">red</span> = w3color(<span class="jskeywordcolor" style="color:mediumblue">this</span>.<span class="jspropertycolor" style="color:black">value</span>).<span class="jspropertycolor" style="color:black">red</span>; <span class="jsnumbercolor" style="color:red">
                            </span>    <span class="commentcolor" style="color:green">//Update the RED color according to the picker<br></span>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    rgb.<span class="jspropertycolor" style="color:black">green</span> = w3color(<span class="jskeywordcolor" style="color:mediumblue">this</span>.<span class="jspropertycolor" style="color:black">value</span>).<span class="jspropertycolor" style="color:black">green</span>; <span class="commentcolor" style="color:green">//Update the GREEN color according to 
                                the picker<br></span>&nbsp;&nbsp;&nbsp; rgb.<span class="jspropertycolor" style="color:black">blue</span> = w3color(<span class="jskeywordcolor" style="color:mediumblue">this</span>.<span class="jspropertycolor" style="color:black">value</span>).<span class="jspropertycolor" style="color:black">blue</span>; <span class="jsnumbercolor" style="color:red">
                            </span>    <span class="commentcolor" style="color:green">//Update the BLUE color according to the picker<br></span>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    colorShow.<span class="jspropertycolor" style="color:black">style</span>.<span class="jspropertycolor" style="color:black">backgroundColor</span> = rgb.<span class="jspropertycolor" style="color:black">toRgbString</span>();&nbsp; <span class="commentcolor" style="color:green">//update the 
                                "Current color"<br></span>&nbsp;&nbsp;&nbsp; rSlider.<span class="jspropertycolor" style="color:black">value</span> = rgb.<span class="jspropertycolor" style="color:black">red</span>;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    <span class="commentcolor" style="color:green">//Update the RED slider position according to the picker<br></span>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    gSlider.<span class="jspropertycolor" style="color:black">value</span> = rgb.<span class="jspropertycolor" style="color:black">green</span>;&nbsp; <span class="commentcolor" style="color:green">//Update the GREEN slider position 
                                according to the picker<br></span>&nbsp;&nbsp;&nbsp; bSlider.<span class="jspropertycolor" style="color:black">value</span> = rgb.<span class="jspropertycolor" style="color:black">blue</span>;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    <span class="commentcolor" style="color:green">//Update the BLUE slider position according to the picker<br></span>&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>    socket.<span class="jspropertycolor" style="color:black">emit</span>(<span class="jsstringcolor" style="color:brown">"rgbLed"</span>, rgb);&nbsp; <span class="commentcolor" style="color:green">//send the updated color to RGB LED via 
                                WebSocket<br></span>&nbsp; });<br>});<br><span class="jsnumbercolor" style="color:red">
                            </span>    </span><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/script<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/body<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/html<span class="tagcolor" style="color:mediumblue">&gt;</span></span> </div>
                </div>

                <p>Return to the "nodetest" folder: </p>
                <div class="w3-code notranslate w3-black">
                    pi@w3demopi:~/nodetest $ 
                    cd ..</div>
                <p>Run the code:</p>
                <div class="w3-code notranslate w3-black">
                    pi@w3demopi:~ $ sudo node rgbws.js
                </div>
                <div class="w3-panel w3-note">
                    <p><strong>Note:</strong> Since the "pigpio" module uses the pigpio C library, 
                        it requires root/sudo privileges to access hardware peripherals (like the 
                        GPIO).</p>
                </div>
                <p>Open the website in a browser using http://[RaspberryPi_IP]:8080/</p>
                <p>Now the RGB LED should change color depending on the user input.</p>
                <p>End the program with <code class="w3-codespan">Ctrl+c</code>.</p>
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
