<%-- 
    Document   : lesson10
    Created on : Feb 3, 2023, 11:16:02 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head> <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/mystyle.css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.jss"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    </head>
    <body>
        <jsp:include page="../Menu_lesson/header_menu.jsp"></jsp:include>
            <div class="w3-col l10 m12" class="main" style="margin: 0 100px;padding-top: 0px">
                <div id="mainLeaderboard" style="overflow:hidden;">

                    <div id="adngin-main_leaderboard-0"></div>

                </div>
                <section id="mainContent">
                    <h1>Git GitHub <span class="color_h1">Getting Started</span></h1>

                    <hr>
                    <div style="position:relative">

                    </div>

                    <div id="remoteNameContent"><section><h2>GitHub Account</h2>

                            <p>Go to <a href="https://www.github.com/">GitHub</a> and sign up for an account:</p>


                            <div class="w3-panel w3-note">
                                <p><strong>Note:</strong> Remember to use the same e-mail address you used in the Git config.</p>
                            </div>

                            <hr>
                            <h2>Create a Repository on GitHub</h2>

                            <p>Now that you have made a GitHub account, sign in, and create a new Repo:</p>

                            <p>And fill in the relevant details:</p>

                            <p>We will go over the different options and what they mean later. But for 
                                now, choose Public (if you want the repo to be viewable for anyone) or Private 
                                (if you want to choose who should be able to view the repo). Either way, you 
                                will be able to choose who can <strong>contribute</strong> to the repo.</p>
                            <p>Then click "Create repository".</p>

                            <hr>
                            <h2>Push Local Repository to GitHub</h2>
                            <p>Since we have already set up a local Git repo, we are going to 
                                <code class="w3-codespan">push</code> that to GitHub:</p>

                            <p>Copy the URL, or click the clipboard marked in the image above.</p>
                            <p>Now paste it the following command:</p>
                            <div class="w3-example">
                                <h3>Example</h3>
                                <pre class="command-line language-shell" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span></span><span class="token function">git</span> remote <span class="token function">add</span> origin https://github.com/w3schools-test/hello-world.git</code></pre>
                            </div>
                            <p><code class="w3-codespan">git remote add origin <em>URL</em></code> specifies that you are adding a remote repository, with the specified <code class="w3-codespan">URL</code>,   as an <code class="w3-codespan">origin</code> to your local Git repo.</p>
                            <p>Now we are going to push our master branch to the origin url, and set it as the default remote branch:</p>
                            <div class="w3-example">
                                <h3>Example</h3>
                                <pre class="command-line language-shell" data-output="2-11" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span></span><span class="token function">git</span> push --set-upstream origin master
Enumerating objects: 22, done.
Counting objects: 100% (22/22), done.
Delta compression using up to 16 threads
Compressing objects: 100% (22/22), done.
Writing objects: 100% (22/22), 92.96 KiB | 23.24 MiB/s, done.
Total 22 (delta 11), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (11/11), done.
To https://github.com/w3schools-test/hello-world.git
 * [new branch]      master -&gt; master
Branch 'master' set up to track remote branch 'master' from 'origin'.</code></pre>
                            </div>

                            <div class="w3-panel w3-note">
                                <p><strong>Note:</strong> Since this is the first time you are connecting to 
                                    GitHub, you will get some kind of notification you to authenticate this connection.</p>
                            </div>

                            <p>Now, go back into GitHub and see that the repository has been updated:</p>

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
