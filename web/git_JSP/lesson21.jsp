<%-- 
    Document   : lesson21
    Created on : Feb 3, 2023, 11:48:23 PM
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
                    <h1>Git <span class="color_h1">GitHub Send Pull Request</span></h1>

                    <hr>

                    <div id="remoteNameContent"><section><h2>Push Changes to Our GitHub Fork</h2>
                            <p>We have made a lot of changes to our local Git.</p>
                            <p>Now we <code class="w3-codespan">push</code> them to our GitHub 
                                <code class="w3-codespan">fork</code>:</p>

                            <p><code class="w3-codespan">commit</code> the changes:</p>
                            <div class="w3-example">
                                <h3>Example</h3>
                                <pre class="command-line language-shell" data-output="2-9" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span></span><span class="token function">git</span> push origin
Enumerating objects: 8, done.
Counting objects: 100% (8/8), done.
Delta compression using up to 16 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 393.96 KiB | 32.83 MiB/s, done.
Total 5 (delta 0), reused 0 (delta 0), pack-reused 0
To https://github.com/kaijim/w3schools-test.github.io.git
   facaeae..ebb1a5c  master -&gt; master</code></pre>
                            </div>
                            <p>Go to GitHub, and we see that the repository has a new commit. And we can send a Pull Request to the original repository:</p>

                            <p>Click that and create a pull request:</p>

                            <p>Remember to add an explanation for the administrators.</p>

                            <p>Pull Request is sent:</p>

                            <hr>
                            <h2>Approving Pull Requests</h2>
                            <p>Now any member with access can see the Pull Request when they see the original repository:</p>

                            <p>And they can see the proposed changes:</p>

                            <p>Comment on the changes and <code class="w3-codespan">merge</code>:</p>

                            <p>Confirm:</p>

                            <p>And changes have been <code class="w3-codespan">merged</code> with 
                                <code class="w3-codespan">master</code>:</p>

                            <p>Now you try!</p></section></div>

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
