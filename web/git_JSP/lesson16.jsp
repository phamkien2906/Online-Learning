<%-- 
    Document   : lesson16
    Created on : Feb 3, 2023, 11:33:52 PM
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
                    <h1>Git <span class="color_h1">Push Branch to GitHub</span></h1>
                    <hr>

                    <div id="remoteNameContent"><section><h2>Push a Branch to GitHub</h2>

                            <p>Let's try to create a new local branch, and push that to GitHub.</p>
                            <p>Start by creating a branch, like we did earlier:</p>
                            <div class="w3-example">
                                <h3>Example</h3>
                                <pre class="command-line language-shell" data-output="2" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span></span><span class="token function">git</span> checkout -b update-readme
Switched to a new branch 'update-readme'</code></pre>
                            </div>
                            <p>And we make some changes to the README.md file. Just add a new line.</p>
                            <p>So now we check the <code class="w3-codespan">status</code> of the current branch.</p>

                            <div class="w3-example">
                                <h3>Example</h3>
                                <pre class="command-line language-shell" data-output="2-8" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span></span><span class="token function">git</span> status
On branch update-readme
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")</file></file></code></pre>
</div>
<p>We see that <code class="w3-codespan">README.md</code> is modified but not added to the Staging Environment:</p>

<div class="w3-example">
<h3>Example</h3>
<pre class="command-line language-shell" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span></span><span class="token function">git</span> <span class="token function">add</span> README.md</code></pre>
                            </div>

                            <p>Check the <code class="w3-codespan">status</code> of the branch:</p>
                            <div class="w3-example">
                                <h3>Example</h3>
                                <pre class="command-line language-shell" data-output="2-7" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span><span></span><span></span></span><span class="token function">git</span> status
On branch update-readme
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   README.md</file></code></pre>
</div>

<p>We are happy with our changes. So we will <code class="w3-codespan">commit</code> them to the <code class="w3-codespan">branch</code>:</p>
<div class="w3-example">
<h3>Example</h3>
<pre class="command-line language-shell" data-output="2-3" data-user="user" data-host="localhost"><code class=" language-git language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span></span><span class="token function">git</span> commit -m <span class="token string">"Updated readme for GitHub Branches"</span>
[update-readme 836e5bf] Updated readme for GitHub Branches
 1 file changed, 1 insertion(+)</code></pre>
                            </div>

                            <p>Now <code class="w3-codespan">push</code> the <code class="w3-codespan">branch</code> from our local Git repository, 
                                to GitHub, where everyone can see the changes:</p>
                            <div class="w3-example">
                                <h3>Example</h3>
                                <pre class="command-line language-shell" data-output="2-14" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span></span><span class="token function">git</span> push origin update-readme
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 16 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 366 bytes | 366.00 KiB/s, done.
Total 3 (delta 2), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
remote:
remote: Create a pull request for 'update-readme' on GitHub by visiting:
remote:      https://github.com/w3schools-test/hello-world/pull/new/update-readme
remote:
To https://github.com/w3schools-test/hello-world.git
 * [new branch]      update-readme -&gt; update-readme</code></pre>
                            </div>

                            <p>Go to GitHub, and confirm that the repository has a new 
                                <code class="w3-codespan">branch</code>:</p>

                            <p>In GitHub, we can now see the changes and <code class="w3-codespan">merge</code> them into the master 
                                <code class="w3-codespan">branch</code> if we approve it.</p>
                            <p>If you click the "Compare &amp; pull request", you can go through the changes made and new files added:</p>

                            <div class="w3-panel w3-note">
                                <p><strong>Note:</strong> This comparison shows both the changes from <code class="w3-codespan">update-readme</code> and <code class="w3-codespan">html-skeleton</code> because we created the new branch FROM <code class="w3-codespan">html-skeleton</code>.</p>
                            </div>

                            <p>If the changes look good, you can go forward, creating a 
                                <code class="w3-codespan">pull request</code>:</p>

                            <p>A pull request is how you propose changes. You can ask some to review your 
                                changes or pull your contribution and merge it into their branch.</p>
                            <p>Since this is your own repository, you can&nbsp; <code class="w3-codespan">merge</code> 
                                your pull request yourself:</p>

                            <p>The pull request will record the changes, which means you can go through them 
                                later to figure out the changes made.</p>
                            <p>The result should be something like this:</p>

                            <p>To keep the repo from getting overly complicated, you can delete the now unused branch by clicking "Delete branch".</p>

                            <p>An after you confirm that the changes from the previous branch were included, delete that as well:</p>
                            <br>
                            <hr>
                        </section>
                        <script src="https://www.w3schools.com/lib/w3.js"></script>
                        <script src="prism_coy.js" data-manual=""></script>
                        <script src="git_remote.js"></script>
                        <script>
                            updateParts("content", "title");
                        </script>
                        <div id="mypagediv2" style="position:relative;text-align:center;"></div>
                        <br>

                    </div>
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
