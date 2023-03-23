<%-- 
    Document   : lesson39
    Created on : Feb 21, 2023, 2:04:34 PM
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
                <h1>Node.js <span class="color_h1">Raspberry Pi GPIO - LED and Pushbutton</span></h1>

                <hr>
                <h2>Using both Input and Output</h2>
                <p>In the previous chapter we learned how to use a Raspberry Pi and its GPIO to 
                    make a LED blink.</p>
                <p>For that we used a GPIO pin as "Output".</p>
                <p>In this chapter we will use another GPIO pin as "Input".</p>
                <p>Instead of blinking for 5 seconds, we want the LED to light up when you push 
                    a button connected to the breadboard.</p>
                <hr>

                <h2>What do we need?</h2>
                <p>In this chapter we will create a simple example where 
                    we control a LED light with a Push Button.</p>
                <p>For this you need:</p>
                <ul>
                    <li>A Raspberry Pi with Raspian, internet, SSH, with Node.js installed</li>
                    <li>The <a href="nodejs_raspberrypi_components.asp#onoff" target="_blank">
                            onoff module</a> for Node.js</li>
                    <li>1 x <a href="nodejs_raspberrypi_components.asp#breadboard" target="_blank">Breadboard</a></li>
                    <li>1 x <a href="nodejs_raspberrypi_components.asp#resistor68ohm" target="_blank">68 Ohm resistor</a></li>
                    <li>1 x <a href="nodejs_raspberrypi_components.asp#resistor1kohm" target="_blank">1k Ohm resistor</a></li>
                    <li>1 x <a href="nodejs_raspberrypi_components.asp#throughHoleLED" target="_blank">Through Hole LED</a></li>
                    <li>1 x <a href="nodejs_raspberrypi_components.asp#switchPushButton" target="_blank">Push Button</a></li>
                    <li>4 x <a href="nodejs_raspberrypi_components.asp#jumperWireFemaletoMale" target="_blank">Female to male jumper wires</a></li>
                    <li>1 x <a href="nodejs_raspberrypi_components.asp#jumperWireMaletoMale" target="_blank">Male to Male jumper wires</a></li>
                </ul>
                <p>Click the links in the list above for descriptions of the different 
                    components.</p>
                <div class="w3-panel w3-note">
                    <p><strong>Note:</strong> The resistor you need can be different from what we use depending on the type of LED you use. Most small LEDs only need a small resistor, around 200-500 ohms. It is generally not critical what exact value you use, but the smaller the value of the resistor, the brighter the LED will
                        shine.</p>
                </div>
                <p>In this chapter we will build on the circuit we built in last chapter, so you 
                    will recognize some of the parts in the list above.</p>
                <hr style="clear:both">
                <h2>Building the Circuit</h2>
                <p>Now it is time to build the circuit on our Breadboard. We will use the <a href="nodejs_raspberrypi_gpio_led.asp">circuit we created in the last chapter</a> as a starting point.</p>
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
                <div><img src="img_raspberrypi3_led_button.png" alt="Raspberry Pi 3 with Breadboard. LED and Button circuit" style="width:100%;max-width:1000px">
                    <p>Look at the above illustration of the circuit.</p>
                    <ol>
                        <li>Starting with the circuit we created in the last chapter:<br>
                            On the Raspberry Pi, connect the female leg of a jumper wire to a 
                            <span class="w3-red">5V</span> 
                            power pin. In our example we used Physical Pin 2 (<span class="w3-red">5V</span>, 
                            row 1, right column)</li>
                        <li>On the Breadboard, connect the male leg of the jumper wire connected to 
                            the <span class="w3-red">5V</span> power, to the 
                            <span class="w3-red">Power Bus</span> on the right side. That entire column 
                            of your breadboard is connected, so it doesn't matter which row. In our 
                            example we attached it to row 1</li>
                        <li>On the Breadboard, connect the push button so that it fits across the 
                            Trench. In our example it connects to rows 13 and 15, columns E and F</li>
                        <li>On the Breadboard, connect one leg of the 1k ohm resistor to the <span class="w3-blue">Ground Bus</span> 
                            column on the right side, and the other leg to the right side Tie-Point row 
                            where it connects to one of the right side legs of the push button. In our example we attached 
                            one side to Tie-Point row 13, column J, and the other side to the closest <span class="w3-blue">Ground Bus</span> hole</li>
                        <li>On the Breadboard, connect a male-to-male jumper wire from the right 
                            <span class="w3-red">Power Bus</span>, to the right Tie-Point row that 
                            connects to the other leg of the 
                            push button. In our example we attached 
                            one side to Tie-Point row 15, column J, and the other side to the closest <span class="w3-red">Power Bus</span> hole</li>
                        <li>On the Raspberry Pi, connect the female leg of a jumper wire to a 
                            <span class="w3-khaki">GPIO</span> pin. In our example we used Physical Pin 
                            11 (<span class="w3-khaki">GPIO 17</span>, row 6, left 
                            column)</li>
                        <li>On the Breadboard, connect the male leg of the jumper wire to left 
                            Tie-Point row the Push Button leg that is directly across the 
                            <span class="w3-blue">Ground</span> connection leg.&nbsp; In our example we 
                            attached it to row 13, column A</li>
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
                <h2>Raspberry Pi and Node.js LED and Button Script</h2>
                <p>Go to the "nodetest" directory, and create a new file called "<code class="w3-codespan">buttonled.js</code>":</p>
                <div class="w3-code notranslate w3-black">
                    pi@w3demopi:~ $ nano buttonled.js
                </div>
                <p>The file is now open and can be edited with the built in Nano Editor.</p>
                <p>Write, or paste the following:</p>
                <div class="w3-example">
                    <h3>buttonled.js<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span><span class="jsnumbercolor" style="color:red">
                            </span>  Gpio = require(<span class="jsstringcolor" style="color:brown">'onoff'</span>).<span class="jspropertycolor" style="color:black">Gpio</span>; <span class="commentcolor" style="color:green">//include onoff to interact with the GPIO<br></span><span class="jskeywordcolor" style="color:mediumblue">var</span> <span class="jsnumbercolor" style="color:red">
                            </span>  LED = <span class="jskeywordcolor" style="color:mediumblue">new</span> Gpio(<span class="jsnumbercolor" style="color:red">4</span>, <span class="jsstringcolor" style="color:brown">'out'</span>); <span class="commentcolor" style="color:green">//use GPIO pin 4 as output<br></span><span class="jskeywordcolor" style="color:mediumblue">var</span> pushButton = <span class="jskeywordcolor" style="color:mediumblue">new</span> <span class="jsnumbercolor" style="color:red">
                            </span>  Gpio(<span class="jsnumbercolor" style="color:red">17</span>, <span class="jsstringcolor" style="color:brown">'in'</span>, <span class="jsstringcolor" style="color:brown">'both'</span>); <span class="commentcolor" style="color:green">//use GPIO pin 17 as input, and 'both' button presses, 
                                and releases should be handled<br></span><br>pushButton.<span class="jspropertycolor" style="color:black">watch</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span> (err, value) { <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="commentcolor" style="color:green">//Watch for hardware interrupts on pushButton GPIO, specify callback function<br></span>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) { <span class="commentcolor" style="color:green">//if an error<br></span>&nbsp;&nbsp;&nbsp; console.<span class="jspropertycolor" style="color:black">error</span>(<span class="jsstringcolor" style="color:brown">'There was an 
                                error'</span>, err); <span class="commentcolor" style="color:green">//output error message to console<br></span>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">return</span>;<br>&nbsp; }<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  LED.<span class="jspropertycolor" style="color:black">writeSync</span>(value); <span class="commentcolor" style="color:green">//turn LED on or off depending on the button state (0 or 
                                1)<br></span>});<br><br><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">function</span> unexportOnClose() { <span class="commentcolor" style="color:green">//function to run when exiting program<br></span>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  LED.<span class="jspropertycolor" style="color:black">writeSync</span>(<span class="jsnumbercolor" style="color:red">0</span>); <span class="commentcolor" style="color:green">// Turn LED off<br></span>&nbsp; LED.<span class="jspropertycolor" style="color:black">unexport</span>(); <span class="commentcolor" style="color:green">// Unexport LED 
                                GPIO to free resources<br></span>&nbsp; pushButton.<span class="jspropertycolor" style="color:black">unexport</span>(); <span class="commentcolor" style="color:green">// Unexport Button 
                                GPIO to free resources<br></span>};<br><br>process.<span class="jspropertycolor" style="color:black">on</span>(<span class="jsstringcolor" style="color:brown">'SIGINT'</span>, unexportOnClose); <span class="commentcolor" style="color:green">//function to 
                                run when user closes using ctrl+c </span></span></div>
                </div>
                <p>Press "<code class="w3-codespan">Ctrl+x</code>" to save the code. Confirm with "<code class="w3-codespan">y</code>", and confirm the name with "<code class="w3-codespan">Enter</code>".</p>
                <p>Run the code:</p>
                <div class="w3-code notranslate w3-black">
                    pi@w3demopi:~ $ node buttonled.js
                </div>
                <p>Now the LED should turn on when you press the button, and turn off when you 
                    release it.</p>
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
