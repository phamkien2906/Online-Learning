<%-- 
    Document   : lesson11
    Created on : Feb 21, 2023, 1:27:39 PM
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
                <h1>Node.js <span class="color_h1">Send an Email</span></h1>

                <hr>

                <h2>The Nodemailer Module</h2>
                <p>The Nodemailer module makes it easy to send emails from your computer.</p>
                <p>The Nodemailer module can be downloaded and installed using npm:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;npm install nodemailer</div>
                </div>
                <p>After you have downloaded the Nodemailer module, you can include the module 
                    in any application:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> nodemailer = require(<span class="jsstringcolor" style="color:brown">'nodemailer'</span>); </span></div>
                </div>

                <hr>

                <h2>Send an Email</h2>
                <p>Now you are ready to send emails from your server.</p>
                <p>Use the username and password from your selected email provider to send an 
                    email. This tutorial will show you how to use your Gmail account to send an 
                    email:</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> nodemailer = require(<span class="jsstringcolor" style="color:brown">'nodemailer'</span>);<br><br><span class="jskeywordcolor" style="color:mediumblue">var</span> transporter = <span class="jsnumbercolor" style="color:red">
                            </span>  nodemailer.<span class="jspropertycolor" style="color:black">createTransport</span>({<br>&nbsp; service: <span class="jsstringcolor" style="color:brown">'gmail'</span>,<br>&nbsp; auth: {<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  user: <span class="jsstringcolor" style="color:brown">'<em>youremail@gmail.com</em>'</span>,<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  pass: <span class="jsstringcolor" style="color:brown">'<em>yourpassword</em>'</span><br>&nbsp; }<br>});<br><br><span class="jskeywordcolor" style="color:mediumblue">var</span> mailOptions = {<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  from: <span class="jsstringcolor" style="color:brown">'<em>youremail@gmail.com</em>'</span>,<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  to: <span class="jsstringcolor" style="color:brown">'<em>myfriend@yahoo.com</em>'</span>,<br>&nbsp; subject: <span class="jsstringcolor" style="color:brown">'Sending Email using Node.js'</span>,<br>&nbsp; text: <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jsstringcolor" style="color:brown">'That was easy!'</span><br>};<br><br>transporter.<span class="jspropertycolor" style="color:black">sendMail</span>(mailOptions, <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">function</span>(error, info){<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (error) {<br>&nbsp;&nbsp;&nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(error);<br>&nbsp; } <span class="jskeywordcolor" style="color:mediumblue">else</span> {<br><span class="jsnumbercolor" style="color:red">
                            </span>  &nbsp;&nbsp;&nbsp;<span class="jsnumbercolor" style="color:red">
                            </span>  console.<span class="jspropertycolor" style="color:black">log</span>(<span class="jsstringcolor" style="color:brown">'Email sent: '</span> + info.<span class="jspropertycolor" style="color:black">response</span>);<br>&nbsp; }<br>}); </span></div>
                </div>

                <p>And that's it! Now your server is able to send emails.</p>
                <hr>
                <div id="midcontentadcontainer" style="overflow:auto;text-align:center">
                    <!-- MidContent -->
                    <!-- <p class="adtext">Advertisement</p> -->

                    <div id="adngin-mid_content-0"></div>

                </div>
                <hr>
                <h2>Multiple Receivers</h2>

                <p>To send an email to more than one receiver, add them to the "to" property of the mailOptions object, separated by commas:</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Send email to more than one address:</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> mailOptions = {<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  from: <span class="jsstringcolor" style="color:brown">'<em>youremail</em>@gmail.com'</span>,<br><strong>&nbsp; <span class="jsnumbercolor" style="color:red">
                                </span>  to: </strong><span class="jsstringcolor" style="color:brown">'<em><strong>myfriend@yahoo.com</strong></em><strong>, </strong> <em>
                                    <strong>myotherfriend@yahoo.com</strong></em><strong>'</strong></span><strong>,<br><span class="jsnumbercolor" style="color:red">
                                </span>  </strong>&nbsp; subject: <span class="jsstringcolor" style="color:brown">'Sending Email using Node.js'</span>,<br>&nbsp; text: 
                            <span class="jsstringcolor" style="color:brown">'That was easy!'</span><br>} </span></div>
                </div>


                <hr>
                <h2>Send HTML</h2>

                <p>To send HTML formatted text in your email, use the "html" property instead of 
                    the "text" property:</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Send email containing HTML:</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> mailOptions = {<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  from: <span class="jsstringcolor" style="color:brown">'<em>youremail</em>@gmail.com'</span>,<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  to: <span class="jsstringcolor" style="color:brown">'<em>myfriend@yahoo.com</em>'</span>,<br><span class="jsnumbercolor" style="color:red">
                            </span>&nbsp; subject: <span class="jsstringcolor" style="color:brown">'Sending Email using Node.js'</span>,<br><strong>&nbsp; html: 
                                <span class="jsstringcolor" style="color:brown">'&lt;h1&gt;Welcome&lt;/h1&gt;&lt;p&gt;That was easy!&lt;/p&gt;'</span><br></strong>} </span></div>
                </div>


                <div id="mypagediv2" style="position:relative;text-align:center;"></div>
                
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
