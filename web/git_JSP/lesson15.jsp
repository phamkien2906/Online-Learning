<%-- 
    Document   : lesson15
    Created on : Feb 3, 2023, 11:31:24 PM
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
                    <h1>Git <span class="color_h1">Pull Branch from GitHub</span></h1>

                    <hr>
                    <div style="position:relative">

                    </div>

                    <div id="remoteNameContent"><section><h2>Pulling a Branch from GitHub</h2>
                            <p>Now continue working on our new <code class="w3-codespan">branch</code> in our local Git.</p>

                            <p>Lets <code class="w3-codespan">pull</code> from our GitHub repository again so that our code is up-to-date:</p>

                            <div class="w3-example">
                                <h3>Example</h3>
                                <pre class="command-line language-shell" data-output="2-14" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span></span><span class="token function">git</span> pull
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 3 (delta 2), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (3/3), 851 bytes | 9.00 KiB/s, done.
From https://github.com/w3schools-test/hello-world
 * [new branch]      html-skeleton -&gt; origin/html-skeleton
Already up to date.</code></pre>
                            </div>
                            <p>Now our main <code class="w3-codespan">branch</code> is up todate. And we can see that there is a new 
                                <code class="w3-codespan">branch</code> 
                                available on GitHub.</p>
                            <p>Do a quick <code class="w3-codespan">status</code> check:</p>

                            <div class="w3-example">
                                <h3>Example</h3>
                                <pre class="command-line language-shell" data-output="2-5" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span><span></span><span></span></span><span class="token function">git</span> status
On branch master
Your branch is up to date with 'origin/master'.

nothing to commit, working tree clean</code></pre>
                            </div>

                            <p>And confirm which branches we have, and where we are working at the moment:</p>

                            <div class="w3-example">
                                <h3>Example</h3>
                                <pre class="command-line language-shell" data-output="2" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span></span><span class="token function">git</span> branch
* master</code></pre>
                            </div>
                            <p>So, we do not have the new <code class="w3-codespan">branch</code> on our local Git. But 
                                we know it is available on 
                                GitHub. So we can use the <code class="w3-codespan">-a</code> option to see all local and remote branches:</p>

                            <div class="w3-example">
                                <h3>Example</h3>
                                <pre class="command-line language-shell" data-output="2-4" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span><span></span></span><span class="token function">git</span> branch -a
* master
  remotes/origin/html-skeleton
  remotes/origin/master</code></pre>
                            </div>

                            <div class="w3-panel w3-note">
                                <p><strong>Note:</strong> <code class="w3-codespan">branch -r</code> is for remote branches only.</p>
                            </div>

                            <p>We see that the branch <code class="w3-codespan">html-skeleton</code> is available remotely, but not on our local git. Lets check it out:</p>

                            <div class="w3-example">
                                <h3>Example</h3>
                                <pre class="command-line language-shell" data-output="2-6" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span></span><span class="token function">git</span> checkout html-skeleton
Switched to a new branch 'html-skeleton'
Branch 'html-skeleton' set up to track remote branch 'html-skeleton' from 'origin'.</code></pre>
                            </div>
                            <p>And check if it is all up to date:</p>

                            <div class="w3-example">
                                <h3>Example</h3>
                                <pre class="command-line language-shell" data-output="2-14" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span></span><span class="token function">git</span> pull
Already up to date.</code></pre>
                            </div>
                            <p>Which branches do we have now, and where are we working from?</p>

                            <div class="w3-example">
                                <h3>Example</h3>
                                <pre class="command-line language-shell" data-output="2-3" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span></span><span class="token function">git</span> branch
* html-skeleton
  master</code></pre>
                            </div>
                            <p>Now, open your favourite editor and confirm that the changes from the GitHub branch carried over.</p>
                            <p>That is how you pull a GitHub branch to your local Git.</p>
                            <hr>
                        </section></div>

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
