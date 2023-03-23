<%-- 
    Document   : lesson2
    Created on : Feb 3, 2023, 10:41:37 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/mystyle.css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="../Menu_lesson/header_menu.jsp"></jsp:include>
            <div class="w3-col l10 m12" class="main" style="margin: 0 100px;padding-top: 0px"
                 <div id="mainLeaderboard" style="overflow:hidden;">

                <div id="adngin-main_leaderboard-0"></div>
                <section id="mainContent">
                    <h1>Git and GitHub <span class="color_h1">Introduction</span></h1>                
                    <hr>
                    <h2>What is Git?</h2>
                    <p>Git is a popular version control system. It was created by Linus Torvalds in 
                        2005, and has been maintained by Junio Hamano since then.</p>

                    <p>It is used for:</p>

                    <ul>
                        <li>Tracking code changes</li>
                        <li>Tracking who made changes</li>
                        <li>Coding collaboration</li>
                    </ul>

                    <h3>What does Git do?</h3>
                    <ul>
                        <li>Manage projects with <strong>Repositories</strong></li>
                        <li><strong>Clone</strong> a project to work on a local copy</li>
                        <li>Control and track changes with <strong>Staging</strong> and <strong>
                                Committing</strong></li>
                        <li><strong>Branch</strong> and <strong>Merge</strong> to allow for work on 
                            different parts and versions of a project</li>
                        <li><strong>Pull</strong> the latest version of the project to a local copy</li>
                        <li><strong>Push</strong> local updates to the main project</li>
                    </ul>

                    <h3>Working with Git</h3>
                    <ul>
                        <li>Initialize Git on a folder, making it a <strong>Repository</strong></li>
                        <li>Git now creates a hidden folder to keep track of changes in that folder</li>
                        <li>When a file is changed, added or deleted, it is considered <strong>modified</strong></li>
                        <li>You select the modified files you want to <strong>Stage</strong></li>
                        <li>The <strong>Staged</strong> files are <strong>Committed</strong>, which 
                            prompts Git to store a <strong>permanent</strong> snapshot of the files</li>
                        <li>Git allows you to see the full history of every commit.</li>
                        <li>You can revert back to any previous commit.</li>
                        <li>Git does not store a separate copy of every file in every commit, but 
                            keeps track of changes made in each commit!</li>
                    </ul>               
                    <h3>Why Git?</h3>
                    <ul>
                        <li>Over 70% of developers use Git!</li>
                        <li>Developers can work together from anywhere in the world.</li>
                        <li>Developers can see the full history of the project.</li>
                        <li>Developers can revert to earlier versions of a project.</li>
                    </ul>

                    <div id="remoteNameContent"><section><h3>What is GitHub?</h3>
                            <ul>
                                <li>Git is not the same as GitHub.</li>
                                <li>GitHub makes tools that use Git.</li>
                                <li>GitHub is the largest host of source code in the world, and has been owned 
                                    by Microsoft since 2018.</li>
                                <li>In this tutorial, we will focus on using Git with GitHub.</li>
                            </ul>
                        </section></div>

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
