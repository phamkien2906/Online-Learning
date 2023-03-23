<%-- 
    Document   : lesson25
    Created on : Feb 4, 2023, 12:00:51 AM
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
                    <h1>Git <span class="color_h1">Revert</span></h1>

                    <hr>
                    <h2>Git Revert</h2>
                    <p><code class="w3-codespan">revert</code> is the command we use when we want to take a previous <code class="w3-codespan">commit</code> and add it as a new <code class="w3-codespan">commit</code>, keeping the <code class="w3-codespan">log</code> intact.</p>
                    <p>Step 1: Find the previous <code class="w3-codespan">commit</code>:</p>

                    <p>Step 2: Use it to make a new <code class="w3-codespan">commit</code>:</p>

                    <p>Let's make a new <code class="w3-codespan">commit</code>, where we have "accidentally" deleted a file:</p>
                    <div class="w3-example">
                        <h3>Example</h3>
                        <pre class="command-line language-shell" data-output="2-4" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span><span></span></span><span class="token function">git</span> commit -m <span class="token string">"Just a regular update, definitely no accidents here..."</span>
[master 16a6f19] Just a regular update, definitely no accidents here...
 1 file changed, 0 insertions(+), 0 deletions(-)
 delete mode 100644 img_hello_git.jpg</code></pre>
                    </div>

                    <p>Now we have a part in our <code class="w3-codespan">commit</code> history we want to go back to. Let's try and do that with <code class="w3-codespan">revert</code>.</p>
                    <hr>
                    <h2>Git Revert Find Commit in Log</h2>
                    <p>First thing, we need to find the point we want to return to. To do that, we need to go through the 
                        <code class="w3-codespan">log</code>.</p>
                    <p>To avoid the very long log list, we are going to use the 
                        <code class="w3-codespan">--oneline</code> option, 
                        which gives just one line per commit showing:</p>
                    <ul>
                        <li>The first seven characters of the <code class="w3-codespan">commit hash</code></li>
                        <li>the <code class="w3-codespan">commit message</code></li>
                    </ul>
                    <p>So let's find the point we want to <code class="w3-codespan">revert</code>:</p>
                    <div class="w3-example">
                        <h3>Example</h3>
                        <pre class="command-line language-shell" data-output="2-17" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span></span><span class="token function">git</span> log --oneline
52418f7 (HEAD -&gt; master) Just a regular update, definitely no accidents here...
9a9add8 (origin/master) Added .gitignore
81912ba Corrected spelling error
3fdaa5b Merge pull request #1 from w3schools-test/update-readme
836e5bf (origin/update-readme, update-readme) Updated readme for GitHub Branches
daf4f7c (origin/html-skeleton, html-skeleton) Updated index.html with basic meta
facaeae (gh-page/master) Merge branch 'master' of https://github.com/w3schools-test/hello-world
e7de78f Updated index.html. Resized image
5a04b6f Updated README.md with a line about focus
d29d69f Updated README.md with a line about GitHub
e0b6038 merged with hello-world-images after fixing conflicts
1f1584e added new image
dfa79db updated index.html with emergency fix
0312c55 Added image to Hello World
09f4acd Updated index.html with a new line
221ec6e First release of Hello World!</code></pre>
                    </div>
                    <p>We want to revert to the previous <code class="w3-codespan">commit</code>: 
                        <code class="w3-codespan">52418f7 (HEAD -&gt; master) Just a regular update, definitely no accidents here...</code>, and we see that 
                        it is the latest <code class="w3-codespan">commit</code>.</p>
                    <hr>
                    <div id="midcontentadcontainer" style="overflow:auto;text-align:center">
                        <!-- MidContent -->
                        <!-- <p class="adtext">Advertisement</p> -->

                        <div id="adngin-mid_content-0"></div>

                    </div>
                    <hr>

                    <h2>Git Revert HEAD</h2>

                    <p>We revert the latest <code class="w3-codespan">commit</code> using git 
                        <code class="w3-codespan">revert HEAD</code> (<code class="w3-codespan">revert</code> the latest change,&nbsp; and then 
                        <code class="w3-codespan">commit</code>), adding the option
                        <code class="w3-codespan">--no-edit</code> to skip the commit message editor (getting the default 
                        <code class="w3-codespan">revert</code> message):</p>
                    <div class="w3-example">
                        <h3>Example</h3>
                        <pre class="command-line language-shell" data-output="2-5" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span><span></span><span></span></span><span class="token function">git</span> revert HEAD --no-edit
[master e56ba1f] Revert "Just a regular update, definitely no accidents here..."
 Date: Thu Apr 22 10:50:13 2021 +0200
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 img_hello_git.jpg</code></pre>
                    </div>

                    <p>Now let's check the <code class="w3-codespan">log</code> again:</p>
                    <div class="w3-example">
                        <h3>Example</h3>
                        <pre class="command-line language-shell" data-output="2-18" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span></span><span class="token function">git</span> log --oneline
e56ba1f (HEAD -&gt; master) Revert "Just a regular update, definitely no accidents here..."
52418f7 Just a regular update, definitely no accidents here...
9a9add8 (origin/master) Added .gitignore
81912ba Corrected spelling error
3fdaa5b Merge pull request #1 from w3schools-test/update-readme
836e5bf (origin/update-readme, update-readme) Updated readme for GitHub Branches
daf4f7c (origin/html-skeleton, html-skeleton) Updated index.html with basic meta
facaeae (gh-page/master) Merge branch 'master' of https://github.com/w3schools-test/hello-world
e7de78f Updated index.html. Resized image
5a04b6f Updated README.md with a line about focus
d29d69f Updated README.md with a line about GitHub
e0b6038 merged with hello-world-images after fixing conflicts
1f1584e added new image
dfa79db updated index.html with emergency fix
0312c55 Added image to Hello World
09f4acd Updated index.html with a new line
221ec6e First release of Hello World!</code></pre>
                    </div>

                    <div class="w3-panel w3-note">
                        <p><strong>Note:</strong> To revert to earlier commits, use 
                            <code class="w3-codespan">git revert HEAD~<em>x</em></code> (<em><code class="w3-codespan">x</code></em> being a number. 1 going back one more, 2 going back two more, etc.)</p>
                    </div>

                    <p>On the next page, we'll go over <code class="w3-codespan">git reset</code>, which brings the repository back to an earlier state in the commits without 
                        making a new <code class="w3-codespan">commit</code>.</p>
                    <hr>
                    <br>        
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
