<%-- 
    Document   : lesson10
    Created on : Feb 21, 2023, 1:26:41 PM
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
                <h1>Node.js <span class="color_h1">Upload Files</span></h1>

                <hr>

                <h2>The Formidable Module</h2>
                <p>There is a very good module for working with file uploads, called "Formidable".</p>
                <p>The Formidable module can be downloaded and installed using NPM:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;npm install formidable</div>
                </div>
                <p>After you have downloaded the Formidable module, you can include the module 
                    in any application:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> formidable = require(<span class="jsstringcolor" style="color:brown">'formidable'</span>); </span></div>
                </div>

                <hr>

                <h2>Upload Files</h2>
                <p>Now you are ready to make a web page in Node.js that lets the user upload 
                    files to your computer:</p>
                <h2>Step 1: Create an Upload Form</h2>
                <p>Create a Node.js file that writes an HTML form, with an upload field:</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>This code will produce an HTML form:</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> http = require(<span class="jsstringcolor" style="color:brown">'http'</span>);<br><br>http.<span class="jspropertycolor" style="color:black">createServer</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span> <span class="jsnumbercolor" style="color:red">
                            </span>  (req, res) {<br>&nbsp; res.<span class="jspropertycolor" style="color:black">writeHead</span>(<span class="jsnumbercolor" style="color:red">200</span>, {<span class="jsstringcolor" style="color:brown">'Content-Type'</span>: <span class="jsstringcolor" style="color:brown">'text/html'</span>});<br>&nbsp; res.<span class="jspropertycolor" style="color:black">write</span>(<span class="jsstringcolor" style="color:brown">'&lt;form 
                                action="fileupload" method="post" enctype="multipart/form-data"&gt;'</span>);<br>&nbsp; res.<span class="jspropertycolor" style="color:black">write</span>(<span class="jsstringcolor" style="color:brown">'&lt;input 
                                type="file" name="filetoupload"&gt;&lt;br&gt;'</span>);<br>&nbsp; res.<span class="jspropertycolor" style="color:black">write</span>(<span class="jsstringcolor" style="color:brown">'&lt;input 
                                type="submit"&gt;'</span>);<br>&nbsp; res.<span class="jspropertycolor" style="color:black">write</span>(<span class="jsstringcolor" style="color:brown">'&lt;/form&gt;'</span>);<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">return</span> res.<span class="jspropertycolor" style="color:black">end</span>();<br>}).<span class="jspropertycolor" style="color:black">listen</span>(<span class="jsnumbercolor" style="color:red">8080</span>); </span></div>
                </div>

                <h2>Step 2: Parse the Uploaded File</h2>
                <p>Include the Formidable module to be able to parse the uploaded file once it 
                    reaches the server.</p>
                <p>When the file is uploaded and parsed, it gets placed on a temporary folder on your computer.</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>The file will be uploaded, and placed on a temporary folder:</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> http = require(<span class="jsstringcolor" style="color:brown">'http'</span>);<br><strong><span class="jskeywordcolor" style="color:mediumblue">var</span> formidable = require(<span class="jsstringcolor" style="color:brown">'formidable'</span>);<br><span class="jsnumbercolor" style="color:red">
                                </span>    </strong><br>http.<span class="jspropertycolor" style="color:black">createServer</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span> <span class="jsnumbercolor" style="color:red">
                            </span>  (req, res) {<br><strong>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (req.<span class="jspropertycolor" style="color:black">url</span> == <span class="jsstringcolor" style="color:brown">'/fileupload'</span>) {<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                                </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> form = <span class="jskeywordcolor" style="color:mediumblue">new</span> formidable.<span class="jspropertycolor" style="color:black">IncomingForm</span>();<br>&nbsp;&nbsp;&nbsp; form.<span class="jspropertycolor" style="color:black">parse</span>(req, <span class="jsnumbercolor" style="color:red">
                                </span>  <span class="jskeywordcolor" style="color:mediumblue">function</span> (err, fields, files) {<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; res.<span class="jspropertycolor" style="color:black">write</span>(<span class="jsstringcolor" style="color:brown">'File 
                                    uploaded'</span>);<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; res.<span class="jspropertycolor" style="color:black">end</span>();<br>&nbsp;&nbsp;&nbsp; });<br><span class="jsnumbercolor" style="color:red">
                                </span>    </strong>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  } <span class="jskeywordcolor" style="color:mediumblue">else</span> {<br>&nbsp; &nbsp; res.<span class="jspropertycolor" style="color:black">writeHead</span>(<span class="jsnumbercolor" style="color:red">200</span>, {<span class="jsstringcolor" style="color:brown">'Content-Type'</span>: <span class="jsstringcolor" style="color:brown">'text/html'</span>});<br>&nbsp; &nbsp; res.<span class="jspropertycolor" style="color:black">write</span>(<span class="jsstringcolor" style="color:brown">'&lt;form 
                                action="fileupload" method="post" enctype="multipart/form-data"&gt;'</span>);<br>&nbsp; &nbsp; res.<span class="jspropertycolor" style="color:black">write</span>(<span class="jsstringcolor" style="color:brown">'&lt;input 
                                type="file" name="filetoupload"&gt;&lt;br&gt;'</span>);<br>&nbsp; &nbsp; res.<span class="jspropertycolor" style="color:black">write</span>(<span class="jsstringcolor" style="color:brown">'&lt;input 
                                type="submit"&gt;'</span>);<br>&nbsp; &nbsp; res.<span class="jspropertycolor" style="color:black">write</span>(<span class="jsstringcolor" style="color:brown">'&lt;/form&gt;'</span>);<br>&nbsp; &nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">return</span> res.<span class="jspropertycolor" style="color:black">end</span>();<br>&nbsp; }<br>}).<span class="jspropertycolor" style="color:black">listen</span>(<span class="jsnumbercolor" style="color:red">8080</span>); </span></div>
                </div>
                <hr>
                <div id="midcontentadcontainer" style="overflow:auto;text-align:center">
                    <!-- MidContent -->
                    <!-- <p class="adtext">Advertisement</p> -->

                    <div id="adngin-mid_content-0"></div>

                </div>
                <hr>

                <h2>Step 3: Save the File</h2>
                <p>When a file is successfully uploaded to the server, it is placed on a 
                    temporary folder.</p>
                <p>The path to this directory can be found in the "files" object, passed as the 
                    third argument in the <code class="w3-codespan">parse()</code> method's callback function.</p>
                <p>To move the file to the folder of your choice, use the File System module, 
                    and rename the file:</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Include the fs module, and move the file to the current folder:</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> http = require(<span class="jsstringcolor" style="color:brown">'http'</span>);<br><span class="jskeywordcolor" style="color:mediumblue">var</span> formidable = require(<span class="jsstringcolor" style="color:brown">'formidable'</span>);<br><span class="jsnumbercolor" style="color:red">
                            </span>  <strong><span class="jskeywordcolor" style="color:mediumblue">var</span> fs = require(<span class="jsstringcolor" style="color:brown">'fs'</span>);<br></strong><br>http.<span class="jspropertycolor" style="color:black">createServer</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span> <span class="jsnumbercolor" style="color:red">
                            </span>  (req, res) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (req.<span class="jspropertycolor" style="color:black">url</span> == <span class="jsstringcolor" style="color:brown">'/fileupload'</span>) {<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> form = <span class="jskeywordcolor" style="color:mediumblue">new</span> formidable.<span class="jspropertycolor" style="color:black">IncomingForm</span>();<br>&nbsp;&nbsp;&nbsp; form.<span class="jspropertycolor" style="color:black">parse</span>(req, <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">function</span> (err, fields, files) {<br><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="jskeywordcolor" style="color:mediumblue">var</span> <span class="jsnumbercolor" style="color:red">
                                </span>  oldpath = files.<span class="jspropertycolor" style="color:black">filetoupload</span>.<span class="jspropertycolor" style="color:black">filepath</span>;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="jskeywordcolor" style="color:mediumblue">var</span> <span class="jsnumbercolor" style="color:red">
                                </span>  newpath = <span class="jsstringcolor" style="color:brown">'C:/Users/<em>Your Name</em>/'</span> + files.<span class="jspropertycolor" style="color:black">filetoupload</span>.<span class="jspropertycolor" style="color:black">originalFilename</span>;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                                </span>  fs.<span class="jspropertycolor" style="color:black">rename</span>(oldpath, newpath, <span class="jskeywordcolor" style="color:mediumblue">function</span> (err) {<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> <span class="jsnumbercolor" style="color:red">
                                </span>  err;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; res.<span class="jspropertycolor" style="color:black">write</span>(<span class="jsstringcolor" style="color:brown">'File uploaded 
                                    and moved!'</span>);<br>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; res.<span class="jspropertycolor" style="color:black">end</span>();<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                                </span>  });<br></strong>&nbsp;});<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  } <span class="jskeywordcolor" style="color:mediumblue">else</span> {<br>&nbsp; &nbsp; res.<span class="jspropertycolor" style="color:black">writeHead</span>(<span class="jsnumbercolor" style="color:red">200</span>, {<span class="jsstringcolor" style="color:brown">'Content-Type'</span>: <span class="jsstringcolor" style="color:brown">'text/html'</span>});<br>&nbsp; &nbsp; res.<span class="jspropertycolor" style="color:black">write</span>(<span class="jsstringcolor" style="color:brown">'&lt;form 
                                action="fileupload" method="post" enctype="multipart/form-data"&gt;'</span>);<br>&nbsp; &nbsp; res.<span class="jspropertycolor" style="color:black">write</span>(<span class="jsstringcolor" style="color:brown">'&lt;input 
                                type="file" name="filetoupload"&gt;&lt;br&gt;'</span>);<br>&nbsp; &nbsp; res.<span class="jspropertycolor" style="color:black">write</span>(<span class="jsstringcolor" style="color:brown">'&lt;input 
                                type="submit"&gt;'</span>);<br>&nbsp; &nbsp; res.<span class="jspropertycolor" style="color:black">write</span>(<span class="jsstringcolor" style="color:brown">'&lt;/form&gt;'</span>);<br>&nbsp; &nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">return</span> res.<span class="jspropertycolor" style="color:black">end</span>();<br>&nbsp; }<br>}).<span class="jspropertycolor" style="color:black">listen</span>(<span class="jsnumbercolor" style="color:red">8080</span>); </span></div>
                </div>

                <hr>

                <div id="mypagediv2" style="position:relative;text-align:center;"></div>
                
                <hr>
                <h2>Video Learning</h2>
                <p>Link full video: <a href="https://youtu.be/RQ0Wacx6Q7k">https://youtu.be/RQ0Wacx6Q7k</a>
                    <br>
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/RQ0Wacx6Q7k" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
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
