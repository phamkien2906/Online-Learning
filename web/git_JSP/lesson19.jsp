<%-- 
    Document   : lesson19
    Created on : Feb 3, 2023, 11:42:41 PM
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
                    <h1>Git <span class="color_h1">GitHub Fork</span></h1>

                    <hr>

                    <div id="remoteNameContent"><section><h2>Add to Someone Else's Repository</h2>
                            <p>At the heart of Git is collaboration. However, Git does not allow you to add code to someone else's repository without access rights.</p>
                            <p>In these next 3 chapters we will show you how to copy a repository, make changes to it, and suggest those changes be implemented to the original repository.</p>
                            <p>At the end of these chapters, you will have the opportunity to add a message to our public GitHub page: 
                                <code class="w3-codespan">https://w3schools-test.github.io/</code></p>
                            <hr>
                            <h2>Fork a Repository</h2>
                            <p>A <code class="w3-codespan">fork</code> is a copy of a repository. This is useful when you want to contribute to someone else's project or start your own project based on theirs.</p>
                            <p><code class="w3-codespan">fork</code> is not a command in Git, but something offered in GitHub and other repository hosts. Let's start by logging in to GitHub, and 
                                <code class="w3-codespan">fork</code> our repository:<br>https://github.com/w3schools-test/w3schools-test.github.io</p>

                            <p>Now we have our own copy of <code class="w3-codespan">w3schools-test.github.io</code>:</p>

                            <hr>
                            <p>Now let's look at how we add a local copy of this for us to work with.</p></section></div>

                    <br>
                    <div class="w3-clear nextprev">

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
