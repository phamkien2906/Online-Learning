<%-- 
    Document   : lesson1
    Created on : Feb 3, 2023, 10:27:48 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/mystyle.css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="../Menu_lesson/header_menu.jsp"></jsp:include>
            <div class="w3-col l10 m12" class="main" style="margin: 0 100px;padding-top: 0px">             

                <section id="mainContent">
                    <h1>Git <span class="color_h1">Tutorial</span></h1>                
                    <div class="w3-panel w3-info intro" style="background-color:#f3ecea;color:#000">
                        <div class="w3-hide-small" style="float:right;font-size:70px;color:#ffc0c7">[+:</div>
                        <p>Git is a version control system.</p>
                        <p>Git helps you keep track of code changes.</p>
                        <p>Git is used to collaborate on code.</p>
                    </div>


                    <h2>Learning by Examples</h2>
                    <p>In this tutorial, we will show you Git commands like this:</p>

                    <div class="w3-example">
                        <h3>Example</h3>
                        <pre class="command-line language-shell" data-output="2" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span></span><span class="token function">git</span> --version
git version 2.30.2.windows.1</code></pre>
                    </div>

                    <p>For new users, using the terminal view can seem a bit complicated. Don't worry! We will keep it really simple, and learning this way gives you a good grasp of how Git works.</p>
                    <p>In the code above, you can see commands (input) and output.</p>
                    <p>Lines like this are commands we input:</p>
                    <div class="w3-example">
                        <h3>Example</h3>
                        <pre class="command-line language-shell" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span></span><span class="token function">git</span> --version</code></pre>
                    </div>
                    <p>Lines like this are the output/response to our commands:</p>
                    <div class="w3-example">
                        <h3>Example</h3>
                        <pre class="command-line language-shell" data-output="1" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span></span></span>git version 2.30.2.windows.1</code></pre>
                    </div>
                    <p>In general, lines with <code>$</code> in front of it is input. These are the commands you can copy and run in your terminal.</p>
                    <hr>              
                    <h2>Git and Remote Repositories</h2>
                    <p>Git and GitHub are different things.</p>
                    <p>In this tutorial you will understand what Git is and how to use it on the remote repository platforms, like GitHub.</p>
                    <p>You can choose, and change, which platform to focus on by clicking in the menu on the right:</p>
                    <hr style="clear:both">
                    <h2>My Learning</h2>

                    <p>Track your progress with the free "My Learning" program here at W3Schools.</p>
                    <p>Log in to your account, and start earning points!</p>
                    <p>This is an optional feature. You can study W3Schools without using My Learning.</p>

                    <a href="https://my-learning.w3schools.com/" target="_blank">                  
                        <br>               
                        <hr>
                        </section>
                        <script src="https://www.w3schools.com/lib/w3.js"></script>
                        <script src="prism_coy.js" data-manual=""></script>
                        <script src="git_remote.js"></script>
                        <script>
                            updateParts();
                        </script>
                        <div id="mypagediv2" style="position:relative;text-align:center;"></div>
                        <br>

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
