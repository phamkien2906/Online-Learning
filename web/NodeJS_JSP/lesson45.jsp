<%-- 
    Document   : lesson45
    Created on : Feb 21, 2023, 2:12:45 PM
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
                <h1>Node.js <span class="color_h1">Online Compiler</span></h1>

                <hr>

                <h2>Node.js Compiler (Editor)</h2>
                <p>Build and host your own website with <a href="/spaces/index.html">W3Schools Spaces</a> with a Node.js environment.</p>
                <p><a href="/spaces/index.html">W3Schools Spaces</a> is a website-building tool that enables you to create and share your own website and you can get a Node.js environment to run your web applications.</p>
                <p>You have full control over the website's appearance and functionality by editing the code directly in your web browser.</p>
                <p>The tool is user-friendly and requires no setup, making it easy to use.</p>

                <div class="w3-center ws-light-green w3-padding-32">
                    <img src="/spaces/dynamicspaces.gif" style="width:100%;max-width:600px;border-radius:5px;">
                </div>

                <p>The code editor is packed with features to help you achieve more:</p>
                <ul>
                    <li><strong>Templates:</strong> Start from scratch or use a template</li>
                    <li><strong>Cloud-based:</strong> no installations required. You only need your browser</li>
                    <li><strong>Terminal &amp; Log:</strong> debug and troubleshoot your code easily</li>
                    <li><strong>File Navigator:</strong> switch between files inside the code editor</li>
                    <li><strong>And much more!</strong></li>
                </ul>

                <a href="/spaces/index.html" class="ws-btn spaces-button" style="margin-top:16px;font-size:18px;xborder-radius:25px;">Learn More</a>
                <hr>

                <h2>Learn Faster</h2>
                <p>Practice is key to mastering coding, and the best way to put your Node.js knowledge into practice is by getting practical with code. </p>
                <p>Use <a href="/spaces/index.html">W3Schools Spaces</a> to build, test and deploy code.</p>
                <p>The code editor lets you write and practice different types of computer languages. It includes 
                    Node.js, but you can use it for other languages too. </p>
                <p>New languages are added all the time:</p>
                <div class="w3-center ws-grey w3-round" style="padding:40px 20px">
                    <img class="image" src="/spaces/languages.png" alt="Languages" style="max-width:550px;width:100%;">
                </div>

                <a href="/spaces/index.html" class="ws-btn spaces-button" style="margin-top:16px;font-size:18px;xborder-radius:25px;">Learn More</a>
                <div class="w3-note w3-panel">
                    <p>If you don't know Node.js, we suggest that you read our <a href="default.asp">Node.js Tutorial</a> from scratch.</p>
                </div>
                <hr>

                <h2>Easy Package Management</h2>
                <p>Get an overview of your packages and easily add or delete frameworks and libraries. Then, with just one click, you can make changes to your packages without manual installation.</p>
                <p><img src="/images/packages_spaces.png" style="max-width:100%;border-radius:5px;"></p>
                <a href="/spaces/index.html" class="ws-btn spaces-button" style="font-size:18px;">Learn More</a>
                <hr>


                <style>
                    .templates {
                        display: flex;
                        align-items: center;
                        justify-content: center;
                        flex-flow: row wrap;
                    }

                    .templates-item {
                        margin: 10px;
                        font-size: 30px;
                    }
                </style>
                <h2>Build Powerful Websites</h2>
                <p>You can use the code editor in <a href="/spaces/index.html">W3School Spaces</a> to build frontend or full-stack websites from scratch.</p>
                <p>Or you can use the 60+ templates available and save time:</p>

                <div class="w3-padding-32 ws-light-green">
                    <div class="templates">
                        <div class="templates-item w3-cell" style="flex-direction:row !important;">
                            <img src="/spaces/portfolio_template.png" alt="Photographer website template" style="height: 220px;"><br>
                        </div>
                        <div class="templates-item w3-cell" style="flex-direction:row !important;">
                            <img src="/spaces/blog_template.png" alt="Blog website template" style="height: 220px;"><br>
                        </div>
                    </div>
                    <div class="templates">
                        <div class="templates-item w3-cell" style="flex-direction:row !important;">
                            <img src="/spaces/webshop_template.png" alt="Webshop template" style="height: 220px;"><br>
                        </div>
                        <div class="templates-item w3-cell" style="flex-direction:row !important;">
                            <img src="/spaces/tutor_template.png" alt="Tutor website template" style="height: 220px;"><br>
                        </div>
                    </div>
                </div>
                <p>Create your Spaces account today and explore them all!</p>
                <a href="/spaces/index.html" class="ws-btn spaces-button" style="font-size:18px;">Learn More</a>
                <hr>


                <h2>Share Your Website With The World</h2>

                <p>Host and publish your websites in no time with <a href="/spaces/index.html">W3School Spaces</a>.</p>

                <p>W3Schools subdomain and SSL certificate are included for free with <a href="/spaces/index.html">W3School Spaces</a>. An SSL certificate makes your website safe and secure. It also helps people trust your website and makes it easier to find it online.</p>
                <p><strong>Want a custom domain for your website?</strong></p>
                <p>You can buy a domain or transfer an existing one and connect it to your space.</p>
                <a href="/spaces/index.html" class="ws-btn spaces-button" style="font-size:18px;">Learn More</a>

                <hr>

                <h2>How Does It Work?</h2>
                <p>Get started in a few clicks with <a href="/spaces/index.html">W3School Spaces</a>.</p>

                <div class="w3-center ws-black w3-padding w3-round">
                    <img src="/spaces/how-spaces-works3.png" style="max-width:100%;border-radius:5px;">
                </div>
                <hr>

                <br>

                <div id="mypagediv2" style="position:relative;text-align:center;"></div>
                <br>
                <h2>Video Learning</h2>
                <p>Link full video: <a href="https://youtu.be/3y8FnQ_k0-0">https://youtu.be/3y8FnQ_k0-0</a>
                    <br>
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/3y8FnQ_k0-0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
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
