<%-- 
    Document   : lesson36
    Created on : Feb 21, 2023, 2:01:50 PM
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
                <h1>Node.js and <span class="color_h1">Raspberry Pi</span></h1>

                <hr>
                <p class="intro">Raspberry Pi is a small, multi-use computer.</p>
                <p class="intro">With Node.js you can do amazing things with your Raspberry Pi.</p>
                <hr>

                <h2>What is the Raspberry Pi?</h2>
                <p>The Raspberry Pi is a small, affordable, and amazingly capable, credit card 
                    size computer.</p>
                <p>It is developed by the Raspberry Pi Foundation, and it might be the most 
                    versatile tech ever created.</p>
                <p>Creator Eben Upton's goal was to create a low-cost device that would improve 
                    programming skills and hardware understanding.</p>
                <p>Due to the small size and price of the device, it has become the center of a 
                    wide range of projects by tinkerers, makers, and electronics enthusiasts.</p>
                <hr>

                <h2>Raspberry Pi and Node.js</h2>
                <p>The Raspberry Pi has a row of GPIO (General Purpose input/output) pins, and 
                    these can be used to interact in amazing ways with the real world. This tutorial 
                    will focus on how to use these with Node.js.</p>
                <hr>

                <h2>What Do I Need?</h2>
                <p>For this tutorial you need a Raspberry Pi. In our examples we use a Raspberry Pi 3, 
                    but this tutorial should work for most versions.</p>
                <p>Hardware needed:</p>
                <ul>
                    <li>Raspberry Pi computer</li>
                    <li>MicroSD memory card (We recommend a class 10 with 16 GB or higher)</li>
                    <li>MicroSD to SD memory card adapter (usually included with the MicroSD card)</li>
                    <li>Micro USB power supply to power the Raspberry Pi (2.5A or greater 
                        recommended)</li>
                    <li>WiFi/Ethernet Cable connection for the Raspberry Pi (Not needed for 
                        Raspberry Pi 3 as it has built in WiFi)</li>
                    <li>A working computer with internet and SD memory card reader (used to get the OS 
                        (Operating System) for the Raspberry Pi onto the memory card). In our tutorial 
                        we use a Windows computer for this, but you can use a Mac or Linux computer if 
                        you prefer</li>
                    <li>HDMI monitor, USB keyboard (we need these only temporarily for the first 
                        boot of the Raspberry Pi)</li>
                </ul>
                <p>For later chapters in this tutorial we will use special sensors or devices 
                    that we connect to the Raspberry Pi. We will specify these as special 
                    requirements in the relevant chapters.</p>
                <div class="w3-note w3-panel"><p>If you already have a Raspberry Pi set up with Raspbian, internet and enabled 
                        SSH, you can skip to the step "Install Node.js on Raspberry Pi".</p></div>
                <hr>
                <h2>Write Raspbian OS Image to MicroSD Card</h2>
                <p>Before we can start using our Raspberry Pi for anything, we need to get a OS 
                    installed.</p>
                <p>Raspbian is a free operating system based on Debian Linux, and it is 
                    optimized Raspberry Pi.</p>
                <p>Download the latest Raspbian image from <a href="https://www.raspberrypi.org/downloads/raspbian/" target="_blank">https://www.raspberrypi.org/downloads/raspbian/</a> 
                    to your computer.</p>
                <p>We use the "LITE" version in our tutorial, since we are setting the Raspberry 
                    Pi up as a headless server (we will connect to it through SSH, without having a 
                    keyboard/display connected to it). You can use whichever version you want, but 
                    this tutorial is written with the "LITE" version as its focus.</p>
                <p>Insert the MicroSD memory card in your computer (via the SD adapter if 
                    needed). 
                    Open File Explorer to verify that it is operational.</p>
                <p>Etcher is a program for flashing images to memory cards. Download and 
                    install Etcher from: <a href="https://etcher.io/" target="_blank">https://etcher.io/</a></p>
                <p>Launch Etcher:</p>
                <img src="img_etcher.png" alt="Launch Etcher" style="width:100%;max-width:1000px">
                <p>Click "Select image" button and find the Raspbian zip file that 
                    you downloaded.</p>
                <p>Click the "Select drive" button and specify the memory card as the target location.</p>
                <p>Click the "Flash!" button to write the image to the memory card.</p>
                <p>After Etcher is finished writing the image to the memory card, remove it from your computer.</p>
                <hr>
                <h2>Set up Your Raspberry Pi</h2>
                <p>To get the Raspberry Pi ready to boot we need to:</p>
                <ol>
                    <li>Insert the MicroSD memory card into the Raspberry Pi</li>
                    <li>Connect the USB keyboard</li>
                    <li>Connect the HDMI cable</li>
                    <li>Connect the USB Wi-Fi adapter (or Ethernet cable). Skip this step if you 
                        are using a Raspberry Pi 3</li>
                    <li>Connect the micro USB power supply</li>
                    <li>The Raspberry Pi should now be booting up</li>
                </ol>
                <p>When the Raspberry Pi is finished booting up, log in using username: <code class="w3-codespan">pi</code> and password: <code class="w3-codespan">raspberry</code></p>
                <hr>
                <h2>Set Up Network on the Raspberry Pi</h2>
                <p>If you will use a Ethernet cable to connect your Raspberry Pi to the 
                    internet, you can skip this step.</p>
                <p>For this section we will assume you have a Raspberry Pi 3, with built in 
                    WiFi.</p>
                <p>Start by scanning for wireless networks:</p>
                <div class="w3-code notranslate w3-black">
                    pi@raspberrypi:~ $ 
                    sudo iwlist wlan0 scan
                </div>
                <p>This will list all of the available WiFi networks. (It also confirms that 
                    your WiFi is working)</p>
                <p>Now we need to open the wpa-supplicant file, to add the network you want to 
                    connect to:</p>
                <div class="w3-code notranslate w3-black">
                    pi@raspberrypi:~ $ sudo 
                    nano /etc/wpa_supplicant/wpa_supplicant.conf</div>
                <p>This will open the file in the Nano editor. Add the following to the bottom 
                    of the file (change <code class="w3-codespan">wifiName</code> and <code class="w3-codespan">wifiPassword</code> with the actual network name and 
                    password):</p>


                <div class="w3-code notranslate w3-black">
                    network={<br>&nbsp; ssid="wifiName"<br>&nbsp; psk="wifiPassword"<br>} </div>

                <p>Press "<code class="w3-codespan">Ctrl+x</code>" to save the code. Confirm with "<code class="w3-codespan">y</code>", and confirm the name with "<code class="w3-codespan">Enter</code>".</p>
                <p>And reboot the Raspberry Pi:</p>


                <div class="w3-code notranslate w3-black">
                    pi@raspberrypi:~ $ sudo reboot</div>

                <p>After reboot, log in again, and confirm that the WiFi is connected and working:</p>


                <div class="w3-code notranslate w3-black">
                    pi@raspberrypi:~ $ ifconfig wlan0</div>

                <p>If the WiFi is working propery, the information displayed should include an 
                    IP address, similar to this:</p>
                <div class="w3-code notranslate w3-black">
                    inet addr:192.168.1.50</div>
                <p>Write down that IP address, as we will use it to connect to the Raspberry Pi 
                    via SSH.</p>
                <hr>
                <div id="midcontentadcontainer" style="overflow:auto;text-align:center">
                    <!-- MidContent -->
                    <!-- <p class="adtext">Advertisement</p> -->

                    <div id="adngin-mid_content-0"></div>

                </div>
                <hr>
                <h2>Enable SSH, Change Hostname and Password</h2>
                <p>Now your Raspberry Pi is connected to the internet, it is time to enable SSH.</p>
                <p>SSH allows you up use the Raspberry Pi without having a monitor and keyboard 
                    connected to it.</p>
                <p>(You will need a SSH client for this on your non-Raspberry Pi computer. We use <href src="http://www.putty.org" alt="PuTTY SSH client" target="_blank">
                    <a href="http://www.putty.org/" target="_blank">PuTTY</a></href> for windows)</p>
            <p>Open the Raspberry Pi Software Configuration Tool:</p>
            <div class="w3-code notranslate w3-black">
                pi@raspberrypi:~ $ sudo raspi-config</div>
            <p>You should see a menu like this:</p>
            <img src="img_raspi-config.png" alt="raspi-config Main Screen" style="width:100%;max-width:1000px">
            <p>Select option <code class="w3-codespan">5 Interfacing Options</code>:</p>
            <img src="img_raspi-config_interfacing_options.png" alt="raspi-config Main Screen" style="width:100%;max-width:1000px">
            <p>Select option <code class="w3-codespan">P2 SSH</code>, to activate SSH:</p>
            <img src="img_raspi-config_ssh.png" alt="raspi-config Main Screen" style="width:100%;max-width:1000px">
            <p>Confirm with <code class="w3-codespan">YES</code>, to activate SSH:</p>
            <img src="img_raspi-config_enable_ssh.png" alt="raspi-config Main Screen" style="width:100%;max-width:1000px">
            <p>SSH is now enabled, and you should be in the main menu again.</p>
            <p>Select <code class="w3-codespan">1 Change User Password</code>, and follow the instructions to change the password. Choose a secure password, but something you will remember:</p>
            <img src="img_raspi-config.png" alt="raspi-config Main Screen" style="width:100%;max-width:1000px">
            <p>After you have finished changing the password, you should be back in the main menu.</p>
            <p>Select <code class="w3-codespan">2 Hostname</code>, and follow the instructions to change the hostname:</p>
            <img src="img_raspi-config_hostname.png" alt="raspi-config Main Screen" style="width:100%;max-width:1000px">
            <p>After you have finished changing the hostname, you should be back in the main menu.</p>
            <p>Now we will close the menu and save the changes:</p>
            <img src="img_raspi-config_finish.png" alt="raspi-config Main Screen" style="width:100%;max-width:1000px">
            <p>When selecting <code class="w3-codespan">Finish</code>, you will get the option to reboot. Select <code class="w3-codespan">Yes</code> to reboot the Raspberry Pi.</p>
            <img src="img_raspi-config_finish_reboot.png" alt="raspi-config Main Screen" style="width:100%;max-width:1000px">
            <p>You can now unplug the monitor and keyboard from the Raspberry Pi, and we can log in using out SSH client.</p>
            <p>Open PuTTY, type in the IP address for your Raspberry Pi, and click <code class="w3-codespan">Open</code>:</p>
            <img src="img_putty_connect.png" alt="raspi-config Main Screen" style="width:100%;max-width:500px">
            <p>Log in using the username <code class="w3-codespan">pi</code> and the new password you specified.</p>
            <p>You should now see a command line like this: (we used w3demopi as our hostname)</p>
            <div class="w3-code notranslate w3-black">
                pi@w3demopi:~ $
            </div>
            <p>You are now able to run your Raspberry Pi in "Headless-mode", meaning you do not need a monitor or keyboard. And if you have a WiFi connection, you do not need a ethernet cable either, just the power cable!</p>
            <hr>
            <h2>Install Node.js on Raspberry Pi</h2>
            <p>With the Raspberry Pi properly set up, login in via SSH, and update your Raspberry Pi system packages to their latest versions.</p>
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
            <p>To download and install newest version of Node.js, use the following command:</p>
            <div class="w3-code notranslate w3-black">
                pi@w3demopi:~ $ curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -</div>

            <p>Now install it by running:</p>
            <div class="w3-code notranslate w3-black">
                pi@w3demopi:~ $ sudo apt-get install -y nodejs</div>
            <p>Check that the installation was successful, and the version number of 
                Node.js with:</p>
            <div class="w3-code notranslate w3-black">
                pi@w3demopi:~ $ node -v</div>
            <hr>
            <h2>Get Started with Raspberry Pi and Node.js</h2>
            <p>Now you have a Raspberry Pi with Node.js installed!</p>
            <p>If you want to learn more about Node.js, follow our tutorial:
                <a href="https://www.w3schools.com/nodejs/">https://www.w3schools.com/nodejs/</a></p>
            <p>In the next chapter we will get to know the GPIO and how to use it with 
                Node.js.</p>

            <hr>

            <div id="mypagediv2" style="position:relative;text-align:center;"></div>
            <br>
            <h2>Video Learning</h2>
            <p>Link full video: <a href="https://youtu.be/oFdlRcRl5aQ">https://youtu.be/oFdlRcRl5aQ</a>
                <br>
                <br>
                <iframe width="560" height="315" src="https://www.youtube.com/embed/oFdlRcRl5aQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
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
