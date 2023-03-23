<%-- 
    Document   : lesson3
    Created on : Feb 3, 2023, 10:46:45 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/mystyle.css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.jss"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="../Menu_lesson/header_menu.jsp"></jsp:include>
            <div class="w3-col l10 m12" class="main" style="margin: 0 100px;padding-top: 0px"
                 <div id="mainLeaderboard" style="overflow:hidden;">

                <div id="adngin-main_leaderboard-0"></div>
                <section id="mainContent">
                    <h1>Git <span class="color_h1">Getting Started</span></h1>                
                    <hr

                        <h2>Git Install</h2>

                    <p>You can download Git for free from the following website: <a href="https://git-scm.com/" target="_blank">https://www.git-scm.com/</a></p>
                    <hr>

                    <h2>Using Git with Command Line</h2>

                    <p>To start using Git, we are first going to open up our Command shell.</p>
                    <p>For Windows, you can use Git bash, which comes included in Git for Windows. 
                        For Mac and Linux you can use the built-in terminal.</p>

                    <p>The first thing we need to do, is to check if Git is properly installed:</p>

                    <div class="w3-example">
                        <h3>Example</h3>
                        <pre class="command-line language-shell" data-output="2" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span></span><span class="token function">git</span> --version
git version 2.30.2.windows.1</code></pre>
                    </div>

                    <p>If Git is installed, it should show something like <code class="w3-codespan">git version X.Y</code></p>

                    <hr>

                    <h2>Configure Git</h2>

                    <p>Now let Git know who you are. This is important for version control systems, 
                        as each Git commit uses this information:</p>

                    <div class="w3-example">
                        <h3>Example</h3>
                        <pre class="command-line language-shell" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span data-user="user" data-host="localhost"></span></span><span class="token function">git</span> config --global user.name <span class="token string">"w3schools-test"</span>
<span class="token function">git</span> config --global user.email <span class="token string">"test@w3schools.com"</span></code></pre>
                    </div>

                    <p>Change the user name and e-mail address to your own. You will probably also want to use this when registering to GitHub 
                        later on.</p>
                    <div class="w3-panel w3-note">
                        <p><strong>Note:</strong> Use <code class="w3-codespan">global</code> to set the username and e-mail for <strong>every repository</strong> on your computer.</p>
                        <p>If you want to set the username/e-mail for just the current repo, you can remove <code class="w3-codespan">global</code></p>
                    </div>
                    <hr>

                    <h2>Creating Git Folder</h2>
                    <p>Now, let's create a new folder for our project:</p>

                    <div class="w3-example">
                        <h3>Example</h3>
                        <pre class="command-line language-shell" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span data-user="user" data-host="localhost"></span></span><span class="token function">mkdir</span> myproject
<span class="token builtin class-name">cd</span> myproject</code></pre>
                    </div>

                    <p><code class="w3-codespan">mkdir</code> <strong>make</strong>s a <strong>new directory</strong>.</p>
                    <p><code class="w3-codespan">cd</code> <strong>changes</strong> the <strong>current working directory</strong>.</p>
                    <p>Now that we are in the correct directory. We can start by initializing Git!</p>
                    <div class="w3-panel w3-info">
                        <p><strong>Note:</strong> If you already have a folder/directory you would 
                            like to use for Git:</p>
                        <p>Navigate to it in command line, or open it in your file explorer, right-click and select "Git Bash here"</p>
                    </div>
                    <hr>
                    <h2>Initialize Git</h2>
                    <p>Once you have navigated to the correct folder, you can initialize Git on that 
                        folder:</p>
                    <div class="w3-example">
                        <h3>Example</h3>
                        <pre class="command-line language-shell" data-output="2" data-user="user" data-host="localhost"><code class=" language-git language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span></span><span class="token function">git</span> init 
Initialized empty Git repository in /Users/user/myproject/.git/</code></pre>
                    </div>

                    <p>You just created your first Git Repository!</p>
                    <div class="w3-panel w3-note">
                        <p><strong>Note:</strong> Git now knows that it should watch the folder you 
                            initiated it on.</p>
                        <p>Git creates a hidden folder to keep track of changes.</p>
                    </div>            
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
