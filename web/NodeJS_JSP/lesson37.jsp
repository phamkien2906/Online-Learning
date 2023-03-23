<%-- 
    Document   : lesson37
    Created on : Feb 21, 2023, 2:02:39 PM
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
                <h1>Node.js <span class="color_h1">Raspberry Pi - GPIO Introduction</span></h1>

                <hr>
                <h2>What is GPIO?</h2>
                <p>GPIO stands for General Purpose Input Output.</p>
                <p>The Raspberry Pi has two rows of GPIO pins, which are connections between the 
                    Raspberry Pi, and the real world.</p>
                <p>Output pins are like switches that the Raspberry Pi can turn on or off (like 
                    turning on/off a LED light). But it can also send a signal to another device.</p>
                <p>Input pins are like switches that you can turn on or off from the outside 
                    world (like a on/off light switch). But it can also be a data from a sensor, or 
                    a signal from another device.</p>
                <p>That means that you can interact with the real world, and control devices and 
                    electronics using the Raspberry PI and its GPIO pins!</p>
                <hr>
                <h2>Taking a Closer Look at the GPIO Pins</h2>
                <div><img src="img_raspberrypi3.png" alt="Raspberry Pi 3 with GPIO" style="float:left;margin-right:50px;width:50%;max-width:300px">
                    <p>This is an illustration of the Raspberry Pi 3.</p>
                    <p>The GPIO pins are the small 
                        red squares in two rows on the right side of the Raspberry Pi, on the actual Raspberry Pi they are small metal pins.</p>
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
                <h2>Taking a Closer Look at the Breadboard</h2>
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
                <h2>Install the onoff Module</h2>
                <p>To interface with the GPIO on the Raspberry Pi using Node.js, we will use a 
                    Module called "onoff".</p>
                <p>Install the onoff module using npm:</p>
                <div class="w3-code notranslate w3-black">
                    pi@w3demopi:~ $ npm install onoff
                </div>
                <p>Now onoff should be installed and we can interact with the GPIO of the Raspberry Pi.</p>
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
