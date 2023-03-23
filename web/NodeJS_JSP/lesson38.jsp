<%-- 
    Document   : lesson38
    Created on : Feb 21, 2023, 2:03:33 PM
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
                <h1>Node.js <span class="color_h1">Raspberry Pi GPIO - Blinking LED</span></h1>

                <hr>
                <h2>Using the GPIO for Output</h2>
                <p>In this chapter we will use a Raspberry Pi and its GPIO to 
                    make a LED blink.</p>
                <p>We use Node.js with the onoff module to control the GPIO.</p>
                <p>To get a LED light to turn on, we use a GPIO pin as "Output", and create a 
                    script to turn it on and off (blinking).</p>
                <div style="width:560px;height:315px">
                    <iframe style="width:100%;height:100%" src="https://www.youtube.com/embed/NdZkEvPNomg" frameborder="0" allowfullscreen=""></iframe>
                </div>

                <hr>

                <h2>What do we need?</h2>
                <p>In this chapter we will create a simple example where 
                    we control a LED light.</p>
                <p>For this you need:</p>
                <ul>
                    <li>A Raspberry Pi with Raspian, internet, SSH, with Node.js installed</li>
                    <li>The <a href="nodejs_raspberrypi_components.asp#onoff" target="_blank">
                            onoff module</a> for Node.js</li>
                    <li>1 x <a href="nodejs_raspberrypi_components.asp#breadboard" target="_blank">Breadboard</a></li>
                    <li>1 x 
                        <a href="nodejs_raspberrypi_components.asp#resistor68ohm" target="_blank">68 Ohm resistor</a></li>
                    <li>1 x 
                        <a href="nodejs_raspberrypi_components.asp#throughHoleLED" target="_blank">Through Hole LED</a></li>
                    <li>2 x 
                        <a href="nodejs_raspberrypi_components.asp#jumperWireFemaletoMale" target="_blank">Female to male jumper wires</a></li>
                </ul>
                <p>Click the links in the list above for descriptions of the different 
                    components.</p>
                <div class="w3-panel w3-note">
                    <p><strong>Note:</strong> The resistor you need can be different from what we use depending on the type of LED you use. Most small LEDs only need a small resistor, around 200-500 ohms. It is generally not critical what exact value you use, but the smaller the value of the resistor, the brighter the LED will
                        shine.</p>
                </div>

                <hr>
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
                    plug from the Raspberry Pi (or turn off the power strip it is connected to).</p>
                <div class="w3-panel w3-warning"><p>Just pulling the plug without shutting down properly may cause corruption of the memory card.</p></div>
                <div><img src="img_raspberrypi3_led_simple.png" alt="Raspberry Pi 3 with Breadboard. Simple LED circuit" style="width:100%;max-width:1000px">
                    <p>Look at the above illustration of the circuit.</p>
                    <ol>
                        <li>On the Raspberry Pi, connect the female leg of the first jumper wire to 
                            <span class="w3-blue">Ground</span>. You can use any <span class="w3-blue">GND</span> pin. In this example we used Physical Pin 9 (<span class="w3-blue">GND</span>, 
                            row 5, left column)</li>
                        <li>On the Breadboard, connect the male leg of the first jumper wire to 
                            the <span class="w3-blue">Ground Bus</span> column on the right. That entire 
                            column of your breadboard is connected, so it doesn't matter which row. In 
                            this example we have attached it to row 1</li>
                        <li>On the Raspberry Pi, connect the female leg of the second jumper cable 
                            to a <span class="w3-khaki">GPIO</span> pin. In this example we used Physical Pin 
                            7 (<span class="w3-khaki">GPIO 4</span>, row 4, left 
                            column)</li>
                        <li>On the Breadboard, connect the male leg of the second jumper wire to the 
                            Tie-Point row of your choice. In this example we connected it to row 5, 
                            column A</li>
                        <li>On the Breadboard, connect one leg of the resistor to the <span class="w3-blue">Ground Bus</span>  
                            column on the right side. That entire column of your breadboard is 
                            connected, so it doesn't matter which row. In this example we have attached 
                            it to row 5</li>
                        <li>On the Breadboard, connect the other leg of the resistor to the right 
                            side Tie-Point row of your choice. In this example we have used row 5, 
                            column J</li>
                        <li>On the Breadboard, connect the cathode leg (the shortest leg) of the 
                            LED to the same Tie-Point row that you connected the resistor from <span class="w3-blue">GND</span> 
                            to. In this example we used row 5, column F</li>
                        <li>On the Breadboard, connect the anode leg (the longest leg) of the 
                            LED to the same Tie-Point row that you connected the jumper from 
                            the <span class="w3-khaki">GPIO</span> pin to. In this example we used row 
                            5, column E</li>
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
                <h2>Raspberry Pi and Node.js Blinking LED Script</h2>
                <p>Now that we have everything set up, we can write a script to turn the LED on and off.</p>
                <p>Start by making a directory where we can keep our Node.js scripts:</p>
                <div class="w3-code notranslate w3-black">
                    pi@w3demopi:~ $ mkdir nodetest
                </div>
                <p>Go to our new directory:</p>
                <div class="w3-code notranslate w3-black">
                    pi@w3demopi:~ $ cd nodetest
                </div>
                <p>Now we will create a new file called "<code class="w3-codespan">blink.js</code>" using the Nano Editor:</p>
                <div class="w3-code notranslate w3-black">
                    pi@w3demopi:~ $ nano blink.js
                </div>
                <p>The file is now open and can be edited with the built in Nano Editor.</p>
                <p>Write, or paste the following code:</p>
                <div class="w3-example">
                    <h3>blink.js<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> Gpio = require(<span class="jsstringcolor" style="color:brown">'onoff'</span>).<span class="jspropertycolor" style="color:black">Gpio</span>; <span class="commentcolor" style="color:green">//include onoff to interact with the GPIO<br></span><span class="jskeywordcolor" style="color:mediumblue">var</span> LED = <span class="jskeywordcolor" style="color:mediumblue">new</span> Gpio(<span class="jsnumbercolor" style="color:red">4</span>, <span class="jsstringcolor" style="color:brown">'out'</span>); <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="commentcolor" style="color:green">//use GPIO pin 4, and specify that it is output<br></span><span class="jskeywordcolor" style="color:mediumblue">var</span> <span class="jsnumbercolor" style="color:red">
                            </span>  blinkInterval = setInterval(blinkLED, <span class="jsnumbercolor" style="color:red">250</span>); <span class="commentcolor" style="color:green">//run the blinkLED function every 
                                250ms<br></span><br><span class="jskeywordcolor" style="color:mediumblue">function</span> blinkLED() { <span class="commentcolor" style="color:green">//function to start blinking<br></span>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (LED.<span class="jspropertycolor" style="color:black">readSync</span>() === <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jsnumbercolor" style="color:red">0</span>) { <span class="commentcolor" style="color:green">//check the pin state, if the state is 0 (or off)<br></span>&nbsp;&nbsp;&nbsp; LED.<span class="jspropertycolor" style="color:black">writeSync</span>(<span class="jsnumbercolor" style="color:red">1</span>); <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="commentcolor" style="color:green">//set pin state to 1 (turn LED on)<br></span>&nbsp; } <span class="jskeywordcolor" style="color:mediumblue">else</span> {<br>&nbsp;&nbsp;&nbsp; LED.<span class="jspropertycolor" style="color:black">writeSync</span>(<span class="jsnumbercolor" style="color:red">0</span>); <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="commentcolor" style="color:green">//set pin state to 0 (turn LED off)<br></span>&nbsp; }<br>}<br><br><span class="jskeywordcolor" style="color:mediumblue">function</span> endBlink() <span class="jsnumbercolor" style="color:red">
                            </span>  { <span class="commentcolor" style="color:green">//function to stop blinking<br></span>&nbsp; clearInterval(blinkInterval); <span class="commentcolor" style="color:green">// Stop blink intervals<br></span>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  LED.<span class="jspropertycolor" style="color:black">writeSync</span>(<span class="jsnumbercolor" style="color:red">0</span>); <span class="commentcolor" style="color:green">// Turn LED off<br></span>&nbsp; LED.<span class="jspropertycolor" style="color:black">unexport</span>(); <span class="commentcolor" style="color:green">// Unexport GPIO 
                                to free resources<br></span>}<br><br>setTimeout(endBlink, <span class="jsnumbercolor" style="color:red">5000</span>); <span class="commentcolor" style="color:green">//stop blinking 
                                after 5 seconds </span></span></div>
                </div>
                <p>Press "<code class="w3-codespan">Ctrl+x</code>" to save the code. Confirm with "<code class="w3-codespan">y</code>", and confirm the name with "<code class="w3-codespan">Enter</code>".</p>
                <p>Run the code:</p>
                <div class="w3-code notranslate w3-black">
                    pi@w3demopi:~ $ node blink.js
                </div>
                <p>Now the LED should blink for 5 seconds (10 times) before turning off again!</p>
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
