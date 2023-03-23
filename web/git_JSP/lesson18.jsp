<%-- 
    Document   : lesson18
    Created on : Feb 3, 2023, 11:40:10 PM
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
                    <h1>Git <span class="color_h1">GitHub Pages</span></h1>

                    <hr>

                    <div id="remoteNameContent"><section><h2>Host Your Page on GitHub</h2>
                            <p>With GitHub pages, GitHub allows you to host a webpage from your repository. Let's try to use GitHub Pages to host our repository.</p>
                            <hr>
                            <h2>Create a New Repository</h2>
                            <p>Start by signing in to GitHub. GitHub pages need a special name and setup to work, so we start by creating a new repository:</p>

                            <p>This repository needs a special name to function as a GitHub page. It needs 
                                to be your GitHub <code class="w3-codespan">username</code>, followed by 
                                <code class="w3-codespan">.github.io</code>:</p>

                            <hr>
                            <h2>Push Local Repository to GitHub Pages</h2>
                            <p>We add this new repository as a remote for our local repository, we are calling it 
                                <code class="w3-codespan">gh-page</code> (for GitHub Pages).</p>
                            <p>Copy the <code class="w3-codespan">URL</code> from here:</p>

                            <p>And add it as a new <code class="w3-codespan">remote</code>:</p>
                            <div class="w3-example">
                                <h3>Example</h3>
                                <pre class="command-line language-shell" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span></span><span class="token function">git</span> remote <span class="token function">add</span> gh-page https://github.com/w3schools-test/w3schools-test.github.io.git</code></pre>
                            </div>
                            <p>Make sure you are on the <code class="w3-codespan">master</code>
                                <code class="w3-codespan">branch</code>, then push the <code class="w3-codespan">master</code>
                                <code class="w3-codespan">branch</code> to the new <code class="w3-codespan">remote</code>:</p>
                            <div class="w3-example">
                                <h3>Example</h3>
                                <pre class="command-line language-shell" data-output="2-10" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span></span><span class="token function">git</span> push gh-page master
Enumerating objects: 33, done.
Counting objects: 100% (33/33), done.
Delta compression using up to 16 threads
Compressing objects: 100% (33/33), done.
Writing objects: 100% (33/33), 94.79 KiB | 15.80 MiB/s, done.
Total 33 (delta 18), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (18/18), done.
To https://github.com/w3schools-test/w3schools-test.github.io.git
 * [new branch]      master -&gt; master</code></pre>
                            </div>

                            <div class="w3-panel w3-note">
                                <p><strong>Note:</strong> If this is the first time you are connecting to GitHub, you will get some kind of notification to authenticate this connection.</p>
                            </div>

                            <p>Check that the new repository has received all the files:</p>

                            <hr>
                            <h2>Check Out Your Own GitHub Page</h2>
                            <p>That looks good, now click the Settings menu and navigate to the Pages tab:</p>

                            <p>The GitHub page is created, and you can click the URL to view the result!</p></section></div>

                    <br>

                </section>
                <script src="https://www.w3schools.com/lib/w3.js"></script>
                <script src="prism_coy.js" data-manual=""></script>
                <script src="git_remote.js"></script>
                <script>
                    updateParts("content", "title");
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
