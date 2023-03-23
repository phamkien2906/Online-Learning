<%-- 
    Document   : lesson11
    Created on : Feb 20, 2023, 7:54:12 PM
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
            <div class="w3-col l10 m12" class="main" style="margin: 0 100px;padding-top: 0px">
                <div id="mainLeaderboard" style="overflow:hidden;">

                    <div id="adngin-main_leaderboard-0"></div>


                </div>
                <section id="mainContent">
                    <h1>Git GitHub <span class="color_h1">Edit Code</span></h1>
                    <hr>
                    <div style="position:relative">
                        <div class="pagemenu">
                            <h2>Change Platform:</h2>
                            <hr>

                        </div>
                    </div>

                    <div id="remoteNameContent"><section><h2>Edit Code in GitHub</h2>
                            <p>In addition to being a host for Git content, GitHub has a very good code 
                                editor.</p>
                            <p>Let's try to edit the <code class="w3-codespan">README.md</code> file in GitHub. 
                                Just click the edit button:</p>
                            <p>Add some changes to the code, and then <code class="w3-codespan">commit</code> the changes. For now, we will "Commit directly to the 
                                master branch".</p>
                            <p>Remember to add a description for the <code class="w3-codespan">commit</code>:</p>

                            <p>That is how you edit code directly in GitHub!</p></section></div>

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
