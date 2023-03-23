<%-- 
    Document   : lesson14
    Created on : Feb 3, 2023, 11:29:30 PM
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
                    <h1>Git GitHub <span class="color_h1">Branch</span></h1>

                    <hr>

                    <div id="remoteNameContent"><section><h2>Create a New Branch on GitHub</h2>
                            <p>On GitHub, access your repository and click the "master" branch button.</p>
                            <p>There you can create a new Branch. Type in a descriptive name, and click Create branch:</p>

                            <p>The <code class="w3-codespan">branch</code> should now be created and active. You can confirm which branch you 
                                are working on by looking at the branch button. See that it now says "html-skeleton" 
                                instead of "main"?</p>

                            <p>Start working on an existing file in this branch. Click the "<code class="w3-codespan">index.html</code>" 
                                file and start editing:</p>

                            <p>After you have finished editing the file, you can click the "Preview changes" 
                                tab to see the changes you made highlighted:</p>

                            <p>If you are happy with the change, add a comment that explains what you did, 
                                and click Commit changes.</p>

                            <p>You now have a new <code class="w3-codespan">branch</code> on GitHub, updated with some changes!</p></section></div>

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
