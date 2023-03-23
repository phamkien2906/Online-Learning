<%-- 
    Document   : lesson12
    Created on : Feb 3, 2023, 11:21:06 PM
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



                 <section id="mainContent">
                <h1>Git <span class="color_h1">Pull from GitHub</span></h1>

                <hr>
                <div id="remoteNameContent"><section><h2>Pulling to Keep up-to-date with Changes</h2>
                        <p>When working as a team on a project, it is important that everyone stays up to date.</p>
                        <p>Any time you start working on a project, you should get the most recent 
                            changes to your local copy.</p>
                        <p>With Git, you can do that with <code class="w3-codespan">pull</code>.</p>
                        <p><code class="w3-codespan">pull</code> is a combination of 2 different commands:</p>
                        <ul>
                            <li><code class="w3-codespan">fetch</code></li>
                            <li><code class="w3-codespan">merge</code></li>
                        </ul>
                        <p>Let's take a closer look into how <code class="w3-codespan">fetch</code>, <code class="w3-codespan">merge</code>, and <code class="w3-codespan">pull</code> works.</p>
                        <hr>

                        <h2>Git Fetch</h2>
                        <p> <code class="w3-codespan">fetch</code> gets all the change history of a tracked branch/repo.</p>
                        <p>So, on your local Git, <code class="w3-codespan">fetch</code> updates to see what has changed on GitHub:</p>

                        <div class="w3-example">
                            <h3>Example</h3>
                            <pre class="command-line language-shell" data-output="2-8" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span></span><span class="token function">git</span> fetch origin
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 3 (delta 2), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (3/3), 733 bytes | 3.00 KiB/s, done.
From https://github.com/w3schools-test/hello-world
   e0b6038..d29d69f  master     -&gt; origin/master</code></pre>
                        </div>

                        <p>Now that we have the recent <code class="w3-codespan">changes</code>, we can check our 
                            <code class="w3-codespan">status</code>:</p>

                        <div class="w3-example">
                            <h3>Example</h3>
                            <pre class="command-line language-shell" data-output="2-8" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span><span></span><span></span><span></span></span><span class="token function">git</span> status
On branch master
Your branch is behind 'origin/master' by 1 commit, and can be fast-forwarded.
  (use "git pull" to update your local branch)

nothing to commit, working tree clean</code></pre>
                        </div>

                        <p>We are behind the <code class="w3-codespan">origin/master</code> by 1 
                            <code class="w3-codespan">commit</code>. That should be the updated 
                            <code class="w3-codespan">README.md</code>, but lets double check by viewing the 
                            <code class="w3-codespan">log</code>:</p>

                        <div class="w3-example">
                            <h3>Example</h3>
                            <pre class="command-line language-shell" data-output="2-16" ata-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span></span><span class="token function">git</span> log origin/master
commit d29d69ffe2ee9e6df6fa0d313bb0592b50f3b853 (origin/master)
Author: w3schools-test &lt;77673807+w3schools-test@users.noreply.github.com&gt;
Date:   Fri Mar 26 14:59:14 2021 +0100

    Updated README.md with a line about GitHub

commit e0b6038b1345e50aca8885d8fd322fc0e5765c3b (HEAD -&gt; master)
Merge: dfa79db 1f1584e
Author: w3schools-test <test@w3schools.com>
Date:   Fri Mar 26 12:42:56 2021 +0100

    merged with hello-world-images after fixing conflicts

...
...</test@w3schools.com></code></pre>
                        </div>

                        <p>That looks as expected, but we can also verify by showing the differences 
                            between our local <code class="w3-codespan">master</code> and 
                            <code class="w3-codespan">origin/master</code>:</p>
                        <div class="w3-example">
                            <h3>Example</h3>
                            <pre class="command-line language-shell" data-output="2-14" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span></span><span class="token function">git</span> <span class="token function">diff</span> origin/master
diff --git a/README.md b/README.md
index 23a0122..a980c39 100644
--- a/README.md
+++ b/README.md
@@ -2,6 +2,4 @@
 Hello World repository for Git tutorial
 This is an example repository for the Git tutoial on https://www.w3schools.com

-This repository is built step by step in the tutorial.
-
-It now includes steps for GitHub
+This repository is built step by step in the tutorial.
\ No newline at end of file</code></pre>
                        </div>
                        <p>That looks precisely as expected! Now we can safely <code class="w3-codespan">merge</code>.</p>

                        <hr>
                        <!-- #include virtual="/contentads.inc" -->
                        <hr>

                        <h2>Git Merge</h2>

                        <p> <code class="w3-codespan">merge</code> combines the current branch, with a specified branch.</p>

                        <p>We have confirmed that the updates are as expected, and we can merge our current branch (<code class="w3-codespan">master</code>) with 
                            <code class="w3-codespan">origin/master</code>:</p>

                        <div class="w3-example">
                            <h3>Example</h3>
                            <pre class="command-line language-shell" data-output="2-5" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span><span></span><span></span></span><span class="token function">git</span> merge origin/master
Updating e0b6038..d29d69f
Fast-forward
 README.md | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)</code></pre>
                        </div>

                        <p>Check our <code class="w3-codespan">status</code> again to confirm we are up to date:</p>

                        <div class="w3-example">
                            <h3>Example</h3>
                            <pre class="command-line language-shell" data-output="2-5" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span><span></span><span></span></span><span class="token function">git</span> status
On branch master
Your branch is up to date with 'origin/master'.

nothing to commit, working tree clean</code></pre>
                        </div>

                        <p>There! Your local git is up to date!</p>
                        <hr>
                        <h2>Git Pull</h2>
                        <p>But what if you just want to update your local repository, without going through 
                            all those steps?</p>
                        <p><code class="w3-codespan">pull</code> is a combination of <code class="w3-codespan">fetch</code> and <code class="w3-codespan">merge</code>. It is used to pull all changes from 
                            a remote repository into the branch you are working on.</p>
                        <p>Make another change to the Readme.md file on GitHub.</p>

                        <p>Use <code class="w3-codespan">pull</code> to update our local Git:</p>

                        <div class="w3-example">
                            <h3>Example</h3>
                            <pre class="command-line language-shell" data-output="2-12" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span></span><span class="token function">git</span> pull origin
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (3/3), 794 bytes | 1024 bytes/s, done.
From https://github.com/w3schools-test/hello-world
   a7cdd4b..ab6b4ed  master       -&gt; origin/master
Updating a7cdd4b..ab6b4ed
Fast-forward
 README.md | 2 ++
 1 file changed, 2 insertions(+)</code></pre>
                        </div>
                        <p>That is how you keep your local Git up to date from a remote repository. In the next chapter, we will look closer at how
                            <code class="w3-codespan">push</code> works on GitHub.</p>

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
