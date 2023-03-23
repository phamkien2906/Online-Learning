<%-- 
    Document   : lesson43
    Created on : Feb 21, 2023, 2:11:06 PM
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
                <h1>Node.js <span class="color_h1">Raspberry Pi - Components</span></h1>

                <hr>
                <h2>What are Components?</h2>
                <p>Components are parts of a larger whole. In this chapter, we explain the different components we use in our tutorial.</p>
                <hr style="clear:both">
                <h2 id="raspberryPiGPIO">The Raspberry Pi and GPIO Pins</h2>
                <div><img src="img_raspberrypi3.png" alt="Raspberry Pi 3 with GPIO" style="float:left;margin-right:50px;width:50%;max-width:300px">
                    <p>This is an illustration of the Raspberry Pi 3.</p>
                    <p>The GPIO pins are the small 
                        red squares in two rows on the right side of the Raspberry Pi, on the actual Raspberry Pi they are small metal pins.</p>
                    <p>Input pins are like switches that you can turn on or off from the outside 
                        world (like a on/off light switch).</p>
                    <p>Output pins are like switches that the Raspberry Pi can turn on or off (like 
                        turning on/off a LED light).</p>
                    <p>The Raspberry Pi 3 has 26 GPIO pins, the rest of the pins are power, ground 
                        or "other".</p>
                    <p>The pin placements correspond with the table below.</p></div>

                <div class="w3-row-padding">
                    <div class="w3-col l9 m12 s12">
                        <h2>Raspberry Pi B+, 2, 3 &amp; Zero</h2>
                        <table class="w3-table w3-bordered w3-border w3-centered">
                            <tbody><tr>
                                    <td style="width:40%" class="w3-red">3V3</td>
                                    <td style="width:10%">1</td>
                                    <td style="width:10%">2</td>
                                    <td style="width:40%" class="w3-red">5V</td>
                                </tr>
                                <tr>
                                    <td class="w3-green">GPIO 2</td>
                                    <td>3</td>
                                    <td>4</td>
                                    <td class="w3-red">5V</td>
                                </tr>
                                <tr>
                                    <td class="w3-green">GPIO 3</td>
                                    <td>5</td>
                                    <td>6</td>
                                    <td class="w3-blue">GND</td>
                                </tr>
                                <tr>
                                    <td class="w3-khaki">GPIO 4</td>
                                    <td>7</td>
                                    <td>8</td>
                                    <td class="w3-gray">GPIO 14</td>
                                </tr>
                                <tr>
                                    <td class="w3-blue">GND</td>
                                    <td>9</td>
                                    <td>10</td>
                                    <td class="w3-gray">GPIO 15</td>
                                </tr>
                                <tr>
                                    <td class="w3-khaki">GPIO 17</td>
                                    <td>11</td>
                                    <td>12</td>
                                    <td class="w3-khaki">GPIO 18</td>
                                </tr>
                                <tr>
                                    <td class="w3-khaki">GPIO 27</td>
                                    <td>13</td>
                                    <td>14</td>
                                    <td class="w3-blue">GND</td>
                                </tr>
                                <tr>
                                    <td class="w3-khaki">GPIO 22</td>
                                    <td>15</td>
                                    <td>16</td>
                                    <td class="w3-khaki">GPIO 23</td>
                                </tr>
                                <tr>
                                    <td class="w3-red">3V3</td>
                                    <td>17</td>
                                    <td>18</td>
                                    <td class="w3-khaki">GPIO 24</td>
                                </tr>
                                <tr>
                                    <td class="w3-orange">GPIO 10</td>
                                    <td>19</td>
                                    <td>20</td>
                                    <td class="w3-blue">GND</td>
                                </tr>
                                <tr>
                                    <td class="w3-orange">GPIO 9</td>
                                    <td>21</td>
                                    <td>22</td>
                                    <td class="w3-khaki">GPIO 25</td>
                                </tr>
                                <tr>
                                    <td class="w3-orange">GPIO 11</td>
                                    <td>23</td>
                                    <td>24</td>
                                    <td class="w3-orange">GPIO 8</td>
                                </tr>
                                <tr>
                                    <td class="w3-blue">GND</td>
                                    <td>25</td>
                                    <td>26</td>
                                    <td class="w3-orange">GPIO 7</td>
                                </tr>
                                <tr>
                                    <td class="w3-black">DNC</td>
                                    <td>27</td>
                                    <td>28</td>
                                    <td class="w3-black">DNC</td>
                                </tr>
                                <tr>
                                    <td class="w3-khaki">GPIO 5</td>
                                    <td>29</td>
                                    <td>30</td>
                                    <td class="w3-blue">GND</td>
                                </tr>
                                <tr>
                                    <td class="w3-khaki">GPIO 6</td>
                                    <td>31</td>
                                    <td>32</td>
                                    <td class="w3-khaki">GPIO 12</td>
                                </tr>
                                <tr>
                                    <td class="w3-khaki">GPIO 13</td>
                                    <td>33</td>
                                    <td>34</td>
                                    <td class="w3-blue">GND</td>
                                </tr>
                                <tr>
                                    <td class="w3-khaki">GPIO 19</td>
                                    <td>35</td>
                                    <td>36</td>
                                    <td class="w3-khaki">GPIO 16</td>
                                </tr>
                                <tr>
                                    <td class="w3-khaki">GPIO 26</td>
                                    <td>37</td>
                                    <td>38</td>
                                    <td class="w3-khaki">GPIO 20</td>
                                </tr>
                                <tr>
                                    <td class="w3-blue">GND</td>
                                    <td>39</td>
                                    <td>40</td>
                                    <td class="w3-khaki">GPIO 21</td>
                                </tr>
                            </tbody></table>
                    </div>
                    <div class="w3-col l3 m12 s12">
                        <h2>Legend</h2>
                        <table class="w3-table w3-bordered w3-border w3-centered">
                            <tbody><tr><td>Physical Pin Number</td></tr>
                                <tr><td class="w3-red">Power +</td></tr>
                                <tr><td class="w3-blue">Ground</td></tr>
                                <tr><td class="w3-gray">UART</td></tr>
                                <tr><td class="w3-green">I2C</td></tr>
                                <tr><td class="w3-orange">SPI</td></tr>
                                <tr><td class="w3-khaki">GPIO</td></tr>
                                <tr><td class="w3-black">Do Not Connect</td></tr>  
                            </tbody></table>
                    </div>
                </div>
                <hr>
                <div id="midcontentadcontainer" style="overflow:auto;text-align:center">
                    <!-- MidContent -->
                    <!-- <p class="adtext">Advertisement</p> -->

                    <div id="adngin-mid_content-0"></div>

                </div>
                <hr>
                <h2 id="breadboard">The Breadboard</h2>
                <p>A breadboard is used for prototyping electronics, it allows you to create 
                    circuits without soldering. It is basically a plastic board, with a grid of 
                    tie-points (holes). Inside the board there are metal strips connecting the 
                    different tie-points in specific ways.</p>
                <p>In the illustration below we have highlighted some of the sections with different colors. This is to show you how the grid is connected.</p>
                <img src="img_breadboard_connections.png" alt="Breadboard with connections highlighted" style="float:left;margin-bottom:10px;margin-right:50px;width:50%;max-width:300px">
                <p>The different sections of the breadboard:</p>
                <ul>
                    <li>On the left, and right, side there are 2 columns of tie-points. All the 
                        tie points in each of these columns are connected.</li>
                    <li><span class="w3-red">The Power Bus</span> - The columns highlighted with red. There are usually used 
                        to connect power to the Breadboard. Since the entire column is connected, 
                        you can connect power to any of the tie-points in the column.</li>
                    <li><span class="w3-blue">The Ground Bus</span> - The columns highlighted with blue. There are usually 
                        used to connect Ground to the Breadboard. Since the entire column is 
                        connected, you can connect ground to any of the tie-points in the column.</li>
                    <li><span class="w3-green">Rows of connected Tie-Points</span> - The rows highlighted with green. The 
                        tie-points of each of these rows are connected, but not the entire row! The 
                        left side tie-points are connected (A-B-C-D-E), and the right side 
                        tie-points are connected (F-G-H-I-J).</li>
                    <li>In the center of the Breadboard there is a Trench, this separates the 
                        left and right rows. The width of the trench is designed so that many 
                        Integrated Circuits fit across it.</li>
                </ul>
                <hr style="clear:both">
                <h2>Other Electrical Components</h2>
                <table class="ws-table-all">
                    <tbody><tr id="throughHoleLED">
                            <td style="width:80%">
                                <h3>Through Hole LED</h3>
                                <p>Light emitting diode (LED). An LED is a diode that emits light when a voltage is applied to it. In our example we use a Through Hole LED. 
                                    They have a positive (called Anode), and a negative (called Cathode) pin. The 
                                    longer leg on the LED should indicate the positive pin.</p>
                            </td>
                            <td>
                                <img src="img_led.png" alt="Through Hole LED" style="width:100%;max-width:50px;">
                            </td>
                        </tr>  
                        <tr id="RGBLED">
                            <td style="width:80%">
                                <h3>RGB LED</h3>
                                <p>Light emitting diode (LED). An LED is a diode that emits light when a voltage is applied to it. An RGB LED has 4 pins. One for each color (R = Red, G = Green, and, B = Blue), and a common cathode/anode. This one LED can display the pure colors, or with PWD to modulate and mix colors.</p>
                            </td>
                            <td>
                                <img src="img_rgb_led.png" alt="RGB LED" style="width:100%;max-width:50px;">
                            </td>
                        </tr>  

                        <tr id="switchPushButton">
                            <td>
                                <h3>Push Button</h3>
                                <p>A push button is a type of switch. A switch makes or breaks a connection an an electric circuit.</p>
                            </td>
                            <td>
                                <img src="img_pushbutton.png" alt="Breadboard with connections highlighted" style="width:100%;max-width:100px">
                            </td>
                        </tr>  
                        <tr id="jumperWireFemaletoMale">
                            <td>
                                <h3>Jumper Wire - Female to Male</h3>
                                <p>Short pieces of wire called jumper wires are used to make connections. 
                                    Female to Male jumper wires can be used to connect from the GPIO on the 
                                    Raspberry Pi to the Breadboard.</p>
                            </td>
                            <td>
                                <img src="img_jumper_wire.jpg" alt="Female to male jumper wires" style="width:100%;max-width:100px">
                            </td>
                        </tr>
                        <tr id="jumperWireMaletoMale">
                            <td>
                                <h3>Jumper Wire - Male to Male</h3>
                                <p>Short pieces of wire called jumper wires are used to make connections. 
                                    Male to Male jumper wires can be used to make connections between different 
                                    parts of the Breadboard.</p>
                            </td>
                            <td>
                                <img src="img_jumper_wire_male_to_male.jpg" alt="Breadboard with connections highlighted" style="width:100%;max-width:100px">
                            </td>
                        </tr>
                        <tr id="resistor68ohm">
                            <td>
                                <h3>Resistor - 68 Ohm</h3>
                                <p>Resistors are used to reduce current, adjust signal levels, etc. This is 
                                    a 68 Ohm resistor.</p>
                            </td>
                            <td>
                                <img src="img_resistor_68ohm.png" alt="68 Ohm resistor" style="width:100%;max-width:100px">
                            </td>
                        </tr>
                        <tr id="resistor220ohm">
                            <td>
                                <h3>Resistor - 220 Ohm</h3>
                                <p>Resistors are used to reduce current, adjust signal levels, etc. This is 
                                    a 220 Ohm resistor.</p>
                            </td>
                            <td>
                                <img src="img_resistor_220ohm.png" alt="220 Ohm resistor" style="width:100%;max-width:100px">
                            </td>
                        </tr>
                        <tr id="resistor1kohm">
                            <td>
                                <h3>Resistor - 1k Ohm</h3>
                                <p>Resistors are used to reduce current, adjust signal levels, etc. This is 
                                    a 1k Ohm resistor.</p>
                            </td>
                            <td>
                                <img src="img_resistor_1kohm.png" alt="1k Ohm resistor" style="width:100%;max-width:100px">
                            </td>
                        </tr>
                    </tbody></table>
                <hr>
                <hr style="clear:both">
                <h2>Node.js Modules</h2>
                <table class="ws-table-all">
                    <tbody><tr id="onoff">
                            <td style="width:80%">
                                <p>onoff - GPIO access and interrupt detection with Node.js</p>
                            </td>
                            <td>
                                <p><a href="https://www.npmjs.com/package/onoff" target="_blank">documentation</a></p>
                            </td>
                        </tr>  
                        <tr id="socket.io">
                            <td style="width:80%">
                                <p>Socket.IO - real-time bidirectional event-based communication</p>
                            </td>
                            <td>
                                <p><a href="https://www.npmjs.com/package/socket.io" target="_blank">documentation</a></p>
                            </td>
                        </tr>  
                        <tr id="pigpio">
                            <td style="width:80%">
                                <p>pigpio - wrapper for pigpio C library. Enables GPIO, PWM, servo control, state change notification and interrupt handling with Node.js</p>
                            </td>
                            <td>
                                <p><a href="https://www.npmjs.com/package/pigpio" target="_blank">documentation</a></p>
                            </td>
                        </tr>  
                    </tbody></table>
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
