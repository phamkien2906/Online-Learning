<%-- 
    Document   : lesson44
    Created on : Feb 21, 2023, 2:11:54 PM
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
                <h1>Node.js <span class="color_h1">Built-in Modules</span></h1>

                <hr>

                <p>Node.js has a set of built-in modules which you can use without any further 
                    installation.</p>
                <p>Here is a list of the built-in modules of Node.js version 6.10.3:</p>
                <table class="ws-table-all notranslate">
                    <tbody><tr>
                            <th>Module</th>
                            <th>Description</th>
                        </tr>
                        <tr><td><a href="ref_assert.asp">assert</a></td><td>Provides a set of assertion tests</td></tr>
                        <tr><td><a href="ref_buffer.asp">buffer</a></td><td>To handle binary data</td></tr>
                        <tr><td>child_process</td><td>To run a child process</td></tr>
                        <tr><td><a href="ref_cluster.asp">cluster</a></td><td>To split a single Node process into multiple processes</td></tr>
                        <tr><td><a href="ref_crypto.asp">crypto</a></td><td>To handle OpenSSL cryptographic functions</td></tr>
                        <tr><td><a href="ref_dgram.asp">dgram</a></td><td>Provides implementation of UDP datagram sockets</td></tr>
                        <tr><td><a href="ref_dns.asp">dns</a></td><td>To do DNS lookups and name resolution functions</td></tr>
                        <tr><td>domain</td><td>Deprecated. To handle unhandled errors</td></tr>
                        <tr><td><a href="ref_events.asp">events</a></td><td>To handle events</td></tr>
                        <tr><td><a href="ref_fs.asp">fs</a></td><td>To handle the file system</td></tr>
                        <tr><td><a href="ref_http.asp">http</a></td><td>To make Node.js act as an HTTP server</td></tr>
                        <tr><td><a href="ref_https.asp">https</a></td><td>To make Node.js act as an HTTPS server.</td></tr>
                        <tr><td><a href="ref_net.asp">net</a></td><td>To create servers and clients</td></tr>
                        <tr><td><a href="ref_os.asp">os</a></td><td>Provides information about the operation system</td></tr>
                        <tr><td><a href="ref_path.asp">path</a></td><td>To handle file paths</td></tr>
                        <tr><td>punycode</td><td>Deprecated. A character encoding scheme</td></tr>
                        <tr><td><a href="ref_querystring.asp">querystring</a></td><td>To handle URL query strings</td></tr>
                        <tr><td><a href="ref_readline.asp">readline</a></td><td>To handle readable streams one line at the time</td></tr>
                        <tr><td><a href="ref_stream.asp">stream</a></td><td>To handle streaming data</td></tr>
                        <tr><td><a href="ref_string_decoder.asp">string_decoder</a></td><td>To decode buffer objects into strings</td></tr>
                        <tr><td><a href="ref_timers.asp">timers</a></td><td>To execute a function after a given number of milliseconds</td></tr>
                        <tr><td><a href="ref_tls.asp">tls</a></td><td>To implement TLS and SSL protocols</td></tr>
                        <tr><td>tty</td><td>Provides classes used by a text terminal</td></tr>
                        <tr><td><a href="ref_url.asp">url</a></td><td>To parse URL strings</td></tr>
                        <tr><td><a href="ref_util.asp">util</a></td><td>To access utility functions</td></tr>
                        <tr><td>v8</td><td>To access information about V8 (the JavaScript engine)</td></tr>
                        <tr><td><a href="ref_vm.asp">vm</a></td><td>To compile JavaScript code in a virtual machine</td></tr>
                        <tr><td><a href="ref_zlib.asp">zlib</a></td><td>To compress or decompress files</td></tr>
                    </tbody></table>
                <hr>

                <div id="mypagediv2" style="position:relative;text-align:center;"></div>
                <br>
                <h2>Video Learning</h2>
                <p>Link full video: <a href="https://youtu.be/kRG8QpOKZE4">https://youtu.be/kRG8QpOKZE4</a>
                    <br>
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/kRG8QpOKZE4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
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
