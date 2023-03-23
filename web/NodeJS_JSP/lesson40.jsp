<%-- 
    Document   : lesson40
    Created on : Feb 21, 2023, 2:05:20 PM
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
                <h1>Node.js <span class="color_h1">Raspberry Pi GPIO - Flowing LEDs</span></h1>

                <hr>


                <h2>Using Array With Output to Create Flowing LEDs</h2>
                <p>In this chapter we will use several GPIO pins to create a "flowing" effect by 
                    turning them on and off in sequence.</p>
                <div style="width:560px;height:315px">
                    <iframe style="width:100%;height:100%" src="https://www.youtube.com/embed/FvbiyVa03_4" frameborder="0" allowfullscreen=""></iframe>
                </div>

                <hr>

                <h2>What do we need?</h2>
                <p>For this you need:</p>
                <ul>
                    <li>A Raspberry Pi with Raspian, internet, SSH, with Node.js installed</li>
                    <li>The <a href="nodejs_raspberrypi_components.asp#onoff" target="_blank">
                            onoff module</a> for Node.js</li>
                    <li>1 x <a href="nodejs_raspberrypi_components.asp#breadboard" target="_blank">Breadboard</a></li>
                    <li>8 x <a href="nodejs_raspberrypi_components.asp#resistor220ohm" target="_blank">220 Ohm resistor</a></li>
                    <li>8 x <a href="nodejs_raspberrypi_components.asp#throughHoleLED" target="_blank">Through Hole LED</a></li>
                    <li>9 x <a href="nodejs_raspberrypi_components.asp#jumperWireFemaletoMale" target="_blank">Female to male jumper wires</a></li>
                </ul>
                <div class="w3-panel w3-note">
                    <p><strong>Note:</strong> The resistor you need can be different from what we use depending on the type of LEDs you use. Most small LEDs only need a small resistor, around 200-500 ohms. It is generally not critical what exact value you use, but the smaller the value of the resistor, the brighter the LED will
                        shine.</p>
                </div>
                <p>Click the links in the list above for descriptions of the different 
                    components.</p>
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
                <div class="w3-panel w3-warning"><p>Just pulling the plug without shutting down properly may cause corruption of the memory card.</p></div>
                <div><img src="img_raspberrypi3_led_flowing.png" alt="Raspberry Pi 3 with Breadboard. Flowing LEDs circuit" style="width:100%;max-width:1000px">
                    <p>Look at the above illustration of the circuit.</p>
                    <ol>
                        <li>On the Raspberry Pi, connect the female leg of a jumper wire to a <span class="w3-blue">GND</span> pin. In our example we used Physical Pin 6 (<span class="w3-blue">GND</span>, 
                            row 3, right column)</li>
                        <li>On the Breadboard, connect the male leg of the jumper wire connected to 
                            the <span class="w3-blue">GND</span> power, to the <span class="w3-blue">Ground Bus</span> on the right side. That entire column 
                            of your breadboard is connected, so it doesn't matter which row. In our example we attached it to row 1</li>
                        <li>For each LED: Connect the LED so that it connects to 2 Tie-Point rows. In our example 
                            we connected:<ol>
                                <li>LED1 to rows 5 (cathode) &amp; 6 (anode) column J</li>
                                <li>LED2 to rows 8 (cathode) &amp; 9 (anode) column J</li>
                                <li>LED3 to rows 11 (cathode) &amp; 12 (anode) column J</li>
                                <li>LED4 to rows 14 (cathode) &amp; 15 (anode) column J</li>
                                <li>LED5 to rows 17 (cathode) &amp; 18 (anode) column J</li>
                                <li>LED6 to rows 20 (cathode) &amp; 21 (anode) column J</li>
                                <li>LED7 to rows 23 (cathode) &amp; 24 (anode) column J</li>
                                <li>LED8 to rows 26 (cathode) &amp; 27 (anode) column J</li>
                            </ol>
                        </li>
                        <li>For each LED: Connect one of the legs of a 220 ohm resistor from the the <span class="w3-blue">Ground Bus</span> 
                            column on the right side, and the other leg to the right side Tie-Point row 
                            where it connects to the cathode leg of the LED. In our example we 
                            connected:<ol>
                                <li>LED1 to row 5 column I</li>
                                <li>LED2 to row 8 column I</li>
                                <li>LED3 to row 11 column I</li>
                                <li>LED4 to row 14 column I</li>
                                <li>LED5 to row 17 column I</li>
                                <li>LED6 to row 20 column I</li>
                                <li>LED7 to row 23 column I</li>
                                <li>LED8 to row 26 column I</li>
                            </ol>
                        </li>
                        <li>For each LED: Connect the female leg of a jumper wire to a
                            <span class="w3-khaki">GPIO</span> pin on the Raspberry Pi, and the male leg 
                            of the jumper wire to the right side Tie-Point row 
                            where it connects to the anode leg of the LED. In our example we connected:<ol>
                                <li>LED1 from Physical Pin 
                                    7 (<span class="w3-khaki">GPIO 4</span>, row 4, left 
                                    column) to Tie-point row 6 column F</li>
                                <li>LED2 from Physical Pin 
                                    11 (<span class="w3-khaki">GPIO 17</span>, row 6, left 
                                    column) to Tie-point row 9 column F</li>
                                <li>LED3 from Physical Pin 
                                    13 (<span class="w3-khaki">GPIO 27</span>, row 7, left 
                                    column) to Tie-point row 12 column F</li>
                                <li>LED4 from Physical Pin 
                                    15 (<span class="w3-khaki">GPIO 22</span>, row 8, left 
                                    column) to Tie-point row 15 column F</li>
                                <li>LED5 from Physical Pin 
                                    12 (<span class="w3-khaki">GPIO 18</span>, row 6, right 
                                    column) to Tie-point row 18 column F</li>
                                <li>LED6 from Physical Pin 
                                    16 (<span class="w3-khaki">GPIO 23</span>, row 8, right column) to 
                                    Tie-point row 21 column F</li>
                                <li>LED7 from Physical Pin 
                                    18 (<span class="w3-khaki">GPIO 24</span>, row 9, right column) to 
                                    Tie-point row 24 column F</li>
                                <li>LED8 from Physical Pin 
                                    22 (<span class="w3-khaki">GPIO 25</span>, row 11, right column) to 
                                    Tie-point row 27 column F</li>
                            </ol>
                        </li>
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
                <h2>Raspberry Pi and Node.js Flowing LEDs Script</h2>
                <p>Go to the "nodetest" directory, and create a new file called "<code class="w3-codespan">flowingleds.js</code>":</p>
                <div class="w3-code notranslate w3-black">
                    pi@w3demopi:~ $ nano 
                    flowingleds.js
                </div>
                <p>The file is now open and can be edited with the built in Nano Editor.</p>
                <p>Write, or paste the following:</p>
                <div class="w3-example">
                    <h3>flowingleds.js<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> Gpio = require(<span class="jsstringcolor" style="color:brown">'onoff'</span>).<span class="jspropertycolor" style="color:black">Gpio</span>; <span class="commentcolor" style="color:green">//include onoff to interact with the GPIO<br></span><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> LED04 = <span class="jskeywordcolor" style="color:mediumblue">new</span> Gpio(<span class="jsnumbercolor" style="color:red">4</span>, <span class="jsstringcolor" style="color:brown">'out'</span>), <span class="commentcolor" style="color:green">//use declare variables for all the GPIO 
                                output pins<br></span>&nbsp; LED17 = <span class="jskeywordcolor" style="color:mediumblue">new</span> Gpio(<span class="jsnumbercolor" style="color:red">17</span>, <span class="jsstringcolor" style="color:brown">'out'</span>),<br>&nbsp; LED27 = <span class="jskeywordcolor" style="color:mediumblue">new</span> Gpio(<span class="jsnumbercolor" style="color:red">27</span>, <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jsstringcolor" style="color:brown">'out'</span>),<br>&nbsp; LED22 = <span class="jskeywordcolor" style="color:mediumblue">new</span> Gpio(<span class="jsnumbercolor" style="color:red">22</span>, <span class="jsstringcolor" style="color:brown">'out'</span>),<br>&nbsp; LED18 = <span class="jskeywordcolor" style="color:mediumblue">new</span> Gpio(<span class="jsnumbercolor" style="color:red">18</span>, <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jsstringcolor" style="color:brown">'out'</span>),<br>&nbsp; LED23 = <span class="jskeywordcolor" style="color:mediumblue">new</span> Gpio(<span class="jsnumbercolor" style="color:red">23</span>, <span class="jsstringcolor" style="color:brown">'out'</span>),<br>&nbsp; LED24 = <span class="jskeywordcolor" style="color:mediumblue">new</span> Gpio(<span class="jsnumbercolor" style="color:red">24</span>, <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jsstringcolor" style="color:brown">'out'</span>),<br>&nbsp; LED25 = <span class="jskeywordcolor" style="color:mediumblue">new</span> Gpio(<span class="jsnumbercolor" style="color:red">25</span>, <span class="jsstringcolor" style="color:brown">'out'</span>);<br><br><span class="commentcolor" style="color:green">//Put all the LED 
                                variables in an array<br></span><span class="jskeywordcolor" style="color:mediumblue">var</span> leds = [LED04, <span class="jsnumbercolor" style="color:red">
                            </span>  LED17, LED27, LED22, LED18, LED23, LED24, LED25];<br><span class="jskeywordcolor" style="color:mediumblue">var</span> indexCount = <span class="jsnumbercolor" style="color:red">0</span>; <span class="commentcolor" style="color:green">//a 
                                counter<br></span>dir = <span class="jsstringcolor" style="color:brown">"up"</span>; <span class="commentcolor" style="color:green">//variable for flowing direction<br></span><br><span class="jskeywordcolor" style="color:mediumblue">var</span> <span class="jsnumbercolor" style="color:red">
                            </span>  flowInterval = setInterval(flowingLeds, <span class="jsnumbercolor" style="color:red">100</span>); <span class="commentcolor" style="color:green">//run the flowingLeds function 
                                every 100ms<br></span><br><span class="jskeywordcolor" style="color:mediumblue">function</span> flowingLeds() { <span class="commentcolor" style="color:green">//function for flowing Leds<br></span>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  leds.<span class="jspropertycolor" style="color:black">forEach</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span>(currentValue) { <span class="commentcolor" style="color:green">//for each item in array<br></span>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  currentValue.<span class="jspropertycolor" style="color:black">writeSync</span>(<span class="jsnumbercolor" style="color:red">0</span>); <span class="commentcolor" style="color:green">//turn off LED<br></span>&nbsp; });<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (indexCount <span class="jsnumbercolor" style="color:red">
                            </span>  == <span class="jsnumbercolor" style="color:red">0</span>) dir = <span class="jsstringcolor" style="color:brown">"up"</span>; <span class="commentcolor" style="color:green">//set flow direction to "up" if the count reaches zero<br></span>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">if</span> (indexCount &gt;= leds.<span class="jspropertycolor" style="color:black">length</span>) dir = <span class="jsstringcolor" style="color:brown">"down"</span>; <span class="commentcolor" style="color:green">//set flow direction to "down" if 
                                the count reaches 7<br></span>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (dir == <span class="jsstringcolor" style="color:brown">"down"</span>) indexCount--; <span class="commentcolor" style="color:green">//count 
                                downwards if direction is down<br></span>&nbsp; leds[indexCount].<span class="jspropertycolor" style="color:black">writeSync</span>(<span class="jsnumbercolor" style="color:red">1</span>); <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="commentcolor" style="color:green">//turn on LED that where array index matches count<br></span>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (dir == <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jsstringcolor" style="color:brown">"up"</span>) indexCount++ <span class="commentcolor" style="color:green">//count upwards if direction is up<br></span>};<br><br><span class="jskeywordcolor" style="color:mediumblue">function</span> unexportOnClose() { <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="commentcolor" style="color:green">//function to run when exiting program<br></span>&nbsp; clearInterval(flowInterval); <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="commentcolor" style="color:green">//stop flow interwal<br></span>&nbsp; leds.<span class="jspropertycolor" style="color:black">forEach</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span>(currentValue) { <span class="commentcolor" style="color:green">//for 
                                each LED<br></span>&nbsp;&nbsp;&nbsp; currentValue.<span class="jspropertycolor" style="color:black">writeSync</span>(<span class="jsnumbercolor" style="color:red">0</span>); <span class="commentcolor" style="color:green">//turn off LED<br></span>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  currentValue.<span class="jspropertycolor" style="color:black">unexport</span>(); <span class="commentcolor" style="color:green">//unexport GPIO<br></span>&nbsp; });<br>};<br><br>process.<span class="jspropertycolor" style="color:black">on</span>(<span class="jsstringcolor" style="color:brown">'SIGINT'</span>, unexportOnClose); <span class="commentcolor" style="color:green">//function to 
                                run when user closes using ctrl+cc </span></span></div>
                </div>
                <p>Press "<code class="w3-codespan">Ctrl+x</code>" to save the code. Confirm with "<code class="w3-codespan">y</code>", and confirm the name with "<code class="w3-codespan">Enter</code>".</p>
                <p>Run the code:</p>
                <div class="w3-code notranslate w3-black">
                    pi@w3demopi:~ $ node flowingleds.js
                </div>
                <p>Now the LEDs should turn on and off in sequence, creating a flowing effect.</p>
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
