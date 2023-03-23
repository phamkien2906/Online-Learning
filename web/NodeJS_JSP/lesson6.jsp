<%-- 
    Document   : lesson6.jsp
    Created on : Feb 21, 2023, 1:21:18 PM
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
                <h1>Node.js <span class="color_h1">File System Module</span></h1>

                <hr>

                <h2>Node.js as a File Server</h2>
                <p>The Node.js file system module allows you to work with the file system on your 
                    computer.</p>
                <p>To include the File System module, use the <code class="w3-codespan">
                        require()</code> method:</p>
                <div class="w3-example">
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> fs = require(<span class="jsstringcolor" style="color:brown">'fs'</span>); </span></div>
                </div>

                <p>Common use for the File System module:</p>
                <ul>
                    <li>Read files</li>
                    <li>Create files</li>
                    <li>Update files</li>
                    <li>Delete files</li>
                    <li>Rename files</li>
                </ul>

                <hr>

                <h2>Read Files</h2>
                <p>The <code class="w3-codespan">fs.readFile()</code> method is used to read files on your computer.</p>
                <p>Assume we have the following HTML file (located in the same folder as 
                    Node.js):</p>
                <div class="w3-example">
                    <p>demofile1.html</p>
                    <div class="w3-code notranslate htmlHigh">
                        <span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>html<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>body<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>h1<span class="tagcolor" style="color:mediumblue">&gt;</span></span>My Header<span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/h1<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>p<span class="tagcolor" style="color:mediumblue">&gt;</span></span>My paragraph.<span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/p<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/body<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br>
                        <span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/html<span class="tagcolor" style="color:mediumblue">&gt;</span></span> </div>
                </div>
                <p>Create a Node.js file that reads the HTML file, 
                    and return the content:</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> http = require(<span class="jsstringcolor" style="color:brown">'http'</span>);<br><span class="jskeywordcolor" style="color:mediumblue">var</span> fs = require(<span class="jsstringcolor" style="color:brown">'fs'</span>);<br>http.<span class="jspropertycolor" style="color:black">createServer</span>(<span class="jskeywordcolor" style="color:mediumblue">function</span> <span class="jsnumbercolor" style="color:red">
                            </span>  (req, res) {<br><strong>&nbsp; fs.<span class="jspropertycolor" style="color:black">readFile</span>(<span class="jsstringcolor" style="color:brown">'demofile1.html'</span>, <span class="jskeywordcolor" style="color:mediumblue">function</span>(err, data) {<br><span class="jsnumbercolor" style="color:red">
                                </span>  </strong>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  res.<span class="jspropertycolor" style="color:black">writeHead</span>(<span class="jsnumbercolor" style="color:red">200</span>, {<span class="jsstringcolor" style="color:brown">'Content-Type'</span>: <span class="jsstringcolor" style="color:brown">'text/html'</span>});<br>&nbsp;&nbsp;&nbsp; res.<span class="jspropertycolor" style="color:black">write</span>(data);<br>&nbsp;&nbsp;&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">return</span> res.<span class="jspropertycolor" style="color:black">end</span>();<br>&nbsp; });<br>}).<span class="jspropertycolor" style="color:black">listen</span>(<span class="jsnumbercolor" style="color:red">8080</span>); </span></div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs.asp?filename=demo_readfile">Run example »</a>
                </div>

                <p>Save the code above in a file called "demo_readfile.js", and initiate the 
                    file:</p>
                <div class="w3-example">
                    <p>Initiate demo_readfile.js:</p>
                    <div class="w3-code notranslate w3-black">
                        C:\Users\<em>Your Name</em>&gt;node demo_readfile.js
                    </div>
                </div>
                <p>If you have followed the same steps on your computer, you will see the same 
                    result as the example: <a href="http://localhost:8080" target="_blank">http://localhost:8080</a></p>
                <hr>
                <div id="midcontentadcontainer" style="overflow:auto;text-align:center">
                    <!-- MidContent -->
                    <!-- <p class="adtext">Advertisement</p> -->

                    <div id="adngin-mid_content-0"></div>

                </div>
                <hr>
                <h2>Create Files</h2>
                <p>The File System module has methods for creating new files:</p>
                <ul>
                    <li><code class="w3-codespan">fs.appendFile()</code></li>
                    <li><code class="w3-codespan">fs.open()</code></li>
                    <li><code class="w3-codespan">fs.writeFile()</code></li>
                </ul>
                <p>The <code class="w3-codespan">fs.appendFile()</code> method appends specified content to a file. If the 
                    file does not exist, the file will be created:</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Create a new file using the appendFile() method:</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> fs = require(<span class="jsstringcolor" style="color:brown">'fs'</span>);<br><br>fs.<span class="jspropertycolor" style="color:black">appendFile</span>(<span class="jsstringcolor" style="color:brown">'mynewfile1.txt'</span>, <span class="jsstringcolor" style="color:brown">'Hello 
                                content!'</span>, <span class="jskeywordcolor" style="color:mediumblue">function</span> (err) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(<span class="jsstringcolor" style="color:brown">'Saved!'</span>);<br><span class="jsnumbercolor" style="color:red">
                            </span>  }); </span></div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_fs_append">Run example »</a>
                </div>
                <p>The <code class="w3-codespan">fs.open()</code> method takes a "flag" as the second argument, if the 
                    flag is "w" for "writing", the specified file is opened for writing. If the file 
                    does not exist, an empty file is created:</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Create a new, empty file using the open() method:</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> fs = require(<span class="jsstringcolor" style="color:brown">'fs'</span>);<br><br>fs.<span class="jspropertycolor" style="color:black">open</span>(<span class="jsstringcolor" style="color:brown">'mynewfile2.txt'</span>, <span class="jsstringcolor" style="color:brown">'w'</span>, <span class="jskeywordcolor" style="color:mediumblue">function</span> (err, <span class="jsnumbercolor" style="color:red">
                            </span>  file) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(<span class="jsstringcolor" style="color:brown">'Saved!'</span>);<br>}); </span></div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_fs_open">Run example »</a>
                </div>
                <p>The <code class="w3-codespan">fs.writeFile()</code> method replaces the specified file and content if it exists. 
                    If the file does not exist, a new file, containing the specified content, will 
                    be created:</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Create a new file using the writeFile() method:</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> fs = require(<span class="jsstringcolor" style="color:brown">'fs'</span>);<br><br>fs.<span class="jspropertycolor" style="color:black">writeFile</span>(<span class="jsstringcolor" style="color:brown">'mynewfile3.txt'</span>, <span class="jsstringcolor" style="color:brown">'Hello 
                                content!'</span>, <span class="jskeywordcolor" style="color:mediumblue">function</span> (err) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  console.<span class="jspropertycolor" style="color:black">log</span>(<span class="jsstringcolor" style="color:brown">'Saved!'</span>);<br>}); </span></div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_fs_writefile">Run example »</a>
                </div>
                <hr>


                <h2>Update Files</h2>
                <p>The File System module has methods for updating files:</p>
                <ul>
                    <li><code class="w3-codespan">fs.appendFile()</code></li>
                    <li><code class="w3-codespan">fs.writeFile()</code></li>
                </ul>
                <p>The <code class="w3-codespan">fs.appendFile()</code> method appends the specified content at the end of the specified file:</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Append "This is my text." to the end of the file "mynewfile1.txt":</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> fs = require(<span class="jsstringcolor" style="color:brown">'fs'</span>);<br><br>fs.<span class="jspropertycolor" style="color:black">appendFile</span>(<span class="jsstringcolor" style="color:brown">'mynewfile1.txt'</span>, <span class="jsstringcolor" style="color:brown">' This is my 
                                text.'</span>, <span class="jskeywordcolor" style="color:mediumblue">function</span> (err) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(<span class="jsstringcolor" style="color:brown">'Updated!'</span>);<br><span class="jsnumbercolor" style="color:red">
                            </span>  }); </span></div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_fs_update">Run example »</a>
                </div>

                <p>The <code class="w3-codespan">fs.writeFile()</code> method replaces the specified file and content:</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Replace the content of the file "mynewfile3.txt":</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> fs = require(<span class="jsstringcolor" style="color:brown">'fs'</span>);<br><br>fs.<span class="jspropertycolor" style="color:black">writeFile</span>(<span class="jsstringcolor" style="color:brown">'mynewfile3.txt'</span>, <span class="jsstringcolor" style="color:brown">'This is my text'</span>, <span class="jskeywordcolor" style="color:mediumblue">function</span> (err) {<br>&nbsp; <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  console.<span class="jspropertycolor" style="color:black">log</span>(<span class="jsstringcolor" style="color:brown">'Replaced!'</span>);<br>}); </span></div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_fs_replace">Run example »</a>
                </div>

                <hr>

                <h2>Delete Files</h2>
                <p>To delete a file with the File System module,&nbsp; use the <code class="w3-codespan">fs.unlink()</code> 
                    method.</p>
                <p>The <code class="w3-codespan">fs.unlink()</code> method deletes the specified file:</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Delete "mynewfile2.txt":</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> fs = require(<span class="jsstringcolor" style="color:brown">'fs'</span>);<br><br>fs.<span class="jspropertycolor" style="color:black">unlink</span>(<span class="jsstringcolor" style="color:brown">'mynewfile2.txt'</span>, <span class="jskeywordcolor" style="color:mediumblue">function</span> (err) {<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(<span class="jsstringcolor" style="color:brown">'File deleted!'</span>);<br>}); </span></div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_fs_unlink">Run example »</a>
                </div>

                <hr>
                <h2>Rename Files</h2>
                <p>To rename a file with the File System module,&nbsp; use the <code class="w3-codespan">fs.rename()</code> 
                    method.</p>
                <p>The <code class="w3-codespan">fs.rename()</code> method renames the specified file:</p>
                <div class="w3-example">
                    <h3>Example<a class="ws-black ws-hover-black spaces-tryit" href="https://www.w3schools.com/spaces/" title="W3Schools Spaces" target="_blank">Get your own Node.js Server</a></h3>
                    <p>Rename "mynewfile1.txt" to "myrenamedfile.txt":</p>
                    <div class="w3-code notranslate jsHigh"><span class="jscolor" style="color:black"><span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">var</span> fs = require(<span class="jsstringcolor" style="color:brown">'fs'</span>);<br><br>fs.<span class="jspropertycolor" style="color:black">rename</span>(<span class="jsstringcolor" style="color:brown">'mynewfile1.txt'</span>, <span class="jsstringcolor" style="color:brown">'myrenamedfile.txt'</span>, <span class="jskeywordcolor" style="color:mediumblue">function</span> (err) {<br>&nbsp; <span class="jsnumbercolor" style="color:red">
                            </span>  <span class="jskeywordcolor" style="color:mediumblue">if</span> (err) <span class="jskeywordcolor" style="color:mediumblue">throw</span> err;<br>&nbsp; console.<span class="jspropertycolor" style="color:black">log</span>(<span class="jsstringcolor" style="color:brown">'File Renamed!'</span>);<br>}); </span></div>
                    <a target="_blank" class="w3-btn w3-margin-bottom" href="shownodejs_cmd.asp?filename=demo_fs_rename">Run example »</a>
                </div>

                <hr>
                <h2>Upload Files</h2>
                <p>You can also use Node.js to upload files to your computer.</p>
                <p>Read how in our <a href="nodejs_uploadfiles.asp">Node.js Upload Files</a> chapter.</p>

                <hr>

                <div id="mypagediv2" style="position:relative;text-align:center;"></div>
                <hr>
                <h2>Video Learning</h2>
                <p>Link full video: <a href="https://youtu.be/mSgJQlKVzxM">https://youtu.be/mSgJQlKVzxM</a>
                    <br>
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/mSgJQlKVzxM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
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
