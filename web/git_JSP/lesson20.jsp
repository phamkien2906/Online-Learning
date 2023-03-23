<%-- 
    Document   : lesson20
    Created on : Feb 3, 2023, 11:44:53 PM
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
                    <h1>Git <span class="color_h1">Clone from GitHub</span></h1>
                    <hr>

                    <div id="remoteNameContent"><section>
                            <h2>Clone a Fork from GitHub</h2>
                            <p>Now we have our own <code class="w3-codespan">fork</code>, but only on GitHub. We also want a 
                                <code class="w3-codespan">clone</code> on our local Git to keep working on it.</p>
                            <p>A <code class="w3-codespan">clone</code> is a full copy of a repository, including all logging and versions of files.</p>

                            <p>Move back to the <strong>original</strong> repository, and click the green "Code" button to get the 
                                <code class="w3-codespan">URL</code> to <code class="w3-codespan">clone</code>:</p>

                            <p>Open your Git bash and <code class="w3-codespan">clone</code> the repository:</p>
                            <div class="w3-example">
                                <h3>Example</h3>
                                <pre class="command-line language-shell" data-output="2-14" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span></span><span class="token function">git</span> clone https://github.com/w3schools-test/w3schools-test.github.io.git
Cloning into 'w3schools-test.github.io'...
remote: Enumerating objects: 33, done.
remote: Counting objects: 100% (33/33), done.
remote: Compressing objects: 100% (15/15), done.
remote: Total 33 (delta 18), reused 33 (delta 18), pack-reused 0
Receiving objects: 100% (33/33), 94.79 KiB | 3.16 MiB/s, done.
Resolving deltas: 100% (18/18), done.</code></pre>
                            </div>
                            <p>Take a look in your file system, and you will see a new directory named after the cloned project:</p>

                            <div class="w3-example">
                                <h3>Example</h3>
                                <pre class="command-line language-shell" data-output="2" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span></span><span class="token function">ls</span>
w3schools-test.github.io/</code></pre>
                            </div>

                            <div class="w3-panel w3-note">
                                <p><strong>Note:</strong> To specify a specific folder to clone to, add the name of the folder after the repository  
                                    <code class="w3-codespan">URL</code>, like this: 
                                    <code class="w3-codespan">git clone https://github.com/w3schools-test/w3schools-test.github.io.git <em>myfolder</em></code></p>
                            </div>

                            <p>Navigate to the new directory, and check the <code class="w3-codespan">status</code>:

                            </p><div class="w3-example">
                                <h3>Example</h3>
                                <pre class="command-line language-shell" data-output="3-6" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span data-user="user" data-host="localhost"></span><span></span><span></span><span></span><span></span></span><span class="token builtin class-name">cd</span> w3schools-test.github.io
<span class="token function">git</span> status
On branch master
Your branch is up to date with 'origin/master'.

nothing to commit, working tree clean</code></pre>
                            </div>

                            <p>And check the <code class="w3-codespan">log</code> to confirm that we have the full repository data:</p>
                            <div class="w3-example">
                                <h3>Example</h3>
                                <pre class="command-line language-shell" data-output="2-16" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span></span><span class="token function">git</span> log
commit facaeae8fd87dcb63629f108f401aa9c3614d4e6 (HEAD -&gt; master, origin/master, origin/HEAD)
Merge: e7de78f 5a04b6f
Author: w3schools-test <test@w3schools.com>
Date:   Fri Mar 26 15:44:10 2021 +0100

    Merge branch 'master' of https://github.com/w3schools-test/hello-world

commit e7de78fdefdda51f6f961829fcbdf197e9b926b6
Author: w3schools-test <test@w3schools.com>
Date:   Fri Mar 26 15:37:22 2021 +0100

    Updated index.html. Resized image
    
.....</test@w3schools.com></test@w3schools.com></code></pre>
                            </div>
                            <p>Now we have a full copy of the original repository.</p>
                            <hr>

                            <h2>Configuring Remotes</h2>
                            <p>Basically, we have a full copy of a repository, whose 
                                <code class="w3-codespan">origin</code> we are not allowed to make changes to.</p>
                            <p>Let's see how the <code class="w3-codespan">remotes</code> of this Git is set up:</p>


                            <div class="w3-example">
                                <h3>Example</h3>
                                <pre class="command-line language-shell" data-output="2-4" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span></span><span class="token function">git</span> remote -v
origin  https://github.com/w3schools-test/w3schools-test.github.io.git (fetch)
origin  https://github.com/w3schools-test/w3schools-test.github.io.git (push)</code></pre>
                            </div>

                            <p>We see that <code class="w3-codespan">origin</code> is set up to the original "<code class="w3-codespan">w3schools-test</code>" repository, we also want to add our own 
                                <code class="w3-codespan">fork</code>.</p>
                            <p>First, we <code class="w3-codespan">rename</code> the original 
                                <code class="w3-codespan">origin</code> <code class="w3-codespan">remote</code>:</p>
                            <div class="w3-example">
                                <h3>Example</h3>
                                <pre class="command-line language-shell" data-output="3-4" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span data-user="user" data-host="localhost"></span><span></span><span></span></span><span class="token function">git</span> remote <span class="token function">rename</span> origin upstream
<span class="token function">git</span> remote -v
upstream        https://github.com/w3schools-test/w3schools-test.github.io.git (fetch)
upstream        https://github.com/w3schools-test/w3schools-test.github.io.git (push)</code></pre>
                            </div>
                            <p>Then fetch the <code class="w3-codespan">URL</code> of our own 
                                <code class="w3-codespan">fork</code>:</p>

                            <p>And add that as <code class="w3-codespan">origin</code>:</p>
                            <div class="w3-example">
                                <h3>Example</h3>
                                <pre class="command-line language-shell" data-output="3-6" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span data-user="user" data-host="localhost"></span><span></span><span></span><span></span><span></span></span><span class="token function">git</span> remote <span class="token function">add</span> origin https://github.com/kaijim/w3schools-test.github.io.git
<span class="token function">git</span> remote -v
origin  https://github.com/kaijim/w3schools-test.github.io.git (fetch)
origin  https://github.com/kaijim/w3schools-test.github.io.git (push)
upstream        https://github.com/w3schools-test/w3schools-test.github.io.git (fetch)
upstream        https://github.com/w3schools-test/w3schools-test.github.io.git (push)</code></pre>
                            </div>

                            <div class="w3-panel w3-note">
                                <p><strong>Note:</strong> According to Git naming conventions, it is recommended to name your own repository 
                                    <code class="w3-codespan">origin</code>, and the one you forked for 
                                    <code class="w3-codespan">upstream</code></p>
                            </div>

                            <p>Now we have 2 remotes:</p>
                            <ul>
                                <li><code class="w3-codespan">origin</code> - our own 
                                    <code class="w3-codespan">fork</code>, where we have read and write access</li>
                                <li><code class="w3-codespan">upstream </code>- the original, where we have read-only access</li>
                            </ul>
                            <p>Now we are going to make some changes to the code. In the next chapter, we 
                                will cover how we suggest those changes to the original repository.</p>
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
