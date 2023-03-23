<%-- 
    Document   : lesson13
    Created on : Feb 3, 2023, 11:23:55 PM
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


                <div id="div-gpt-ad-1422003450156-2">
                    <script type="text/javascript">uic_r_f();</script>
                </div>


                <section id="mainContent">
                    <h1>Git <span class="color_h1">Push to GitHub</span></h1>              
                    <hr>
                    <div id="remoteNameContent"><section><h2>Push Changes to GitHub</h2>
                            <p>Let's try making some changes to our local git and pushing them to GitHub.</p>
                            <div class="w3-example">
                                <h3>Example</h3>
                                <div class="w3-code notranslate htmlHigh">
                                    &lt;!DOCTYPE html&gt;<br>&lt;html&gt;<br>&lt;head&gt;<br>&lt;title&gt;Hello World!&lt;/title&gt;<br>&lt;link 
                                    rel="stylesheet" href="bluestyle.css"&gt;<br>&lt;/head&gt;<br>&lt;body&gt;<br><br>&lt;h1&gt;Hello 
                                    world!&lt;/h1&gt;<br>&lt;div&gt;&lt;
                                    Space" style="width:100%;max-width:640px"&gt;&lt;/div&gt;<br>&lt;p&gt;This is the first file 
                                    in my new Git Repo.&lt;/p&gt;<br>&lt;p&gt;This line is here to show how merging works.&lt;/p&gt;<br>
                                    &lt;div&gt;&lt;
                                    style="width:100%;max-width:640px"&gt;&lt;/div&gt;<br><br>&lt;/body&gt;<br>&lt;/html&gt;
                                </div>
                            </div>

                            <p>Commit the changes:</p>
                            <div class="w3-example">
                                <h3>Example</h3>
                                <pre class="command-line language-shell" data-output="2-3" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span></span><span class="token function">git</span> commit -a -m <span class="token string">"Updated index.html. Resized image"</span>
[master e7de78f] Updated index.html. Resized image
 1 file changed, 1 insertion(+), 1 deletion(-)</code></pre>
                            </div>
                            <p>And check the status:</p>
                            <div class="w3-example">
                                <h3>Example</h3>
                                <pre class="command-line language-shell" data-output="2-6" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span><span></span><span></span><span></span></span><span class="token function">git</span> status
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean</code></pre>
                            </div>
                            <p>Now push our changes to our remote origin:</p>
                            <div class="w3-example">
                                <h3>Example</h3>
                                <pre class="command-line language-shell" data-output="2-14" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span></span><span class="token function">git</span> push origin
Enumerating objects: 9, done.
Counting objects: 100% (8/8), done.
Delta compression using up to 16 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 578 bytes | 578.00 KiB/s, done.
Total 5 (delta 3), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (3/3), completed with 3 local objects.
To https://github.com/w3schools-test/hello-world.git
   5a04b6f..facaeae  master -&gt; master</code></pre>
                            </div>

                            <p>Go to GitHub, and confirm that the repository has a new commit:</p>

                            <p>Now, we are going to start working on branches on GitHub.</p>
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
