<%-- 
    Document   : lesson4
    Created on : Feb 3, 2023, 10:55:32 PM
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
                    <h1>Git <span class="color_h1">New Files</span></h1>

                    <hr>              
                    <h2>Git Adding New Files</h2>
                    <p>You just created your first local Git repo. But it is empty.</p>
                    <p>So let's add some files, or create a new file using your favourite text editor. Then save or move it to the folder you just created.</p>
                    <p>If you want to learn how to create a new file using a text editor, you can visit our HTML tutorial:<br>
                        <a href="https://www.w3schools.com/html/html_editors.asp">HTML Editors</a></p>
                    <p>For this example, I am going to use a simple HTML file like this:</p>
                    <div class="w3-example">
                        <h3>Example</h3>
                        <div class="w3-code notranslate htmlHigh">
                            <span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>!DOCTYPE<span class="attributecolor" style="color:red"> html</span><span class="tagcolor" style="color:mediumblue">&gt;</span></span><br>
                            <span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>html<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>head<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>title<span class="tagcolor" style="color:mediumblue">&gt;</span></span>Hello World!<span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/title<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br>
                            <span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/head<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>body<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>h1<span class="tagcolor" style="color:mediumblue">&gt;</span></span>Hello world!<span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/h1<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>p<span class="tagcolor" style="color:mediumblue">&gt;</span></span>This is 
                            the first file in my new Git Repo.<span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/p<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><br>
                            <span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/body<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/html<span class="tagcolor" style="color:mediumblue">&gt;</span></span>
                        </div>
                    </div>

                    <p>And save it to our new folder as <code class="w3-codespan">index.html</code>.</p>
                    <p>Let's go back to the terminal and list the files in our current working directory:</p>

                    <div class="w3-example">
                        <h3>Example</h3>
                        <pre class="command-line language-shell" data-output="2" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span></span><span class="token function">ls</span>
index.html</code></pre>
                    </div>

                    <p><code class="w3-codespan">ls</code> will <strong>list</strong> the files in 
                        the directory. We can see that <code class="w3-codespan">index.html</code> is there.</p>

                    <p>Then we check the Git <code class="w3-codespan">status</code> and see if it is a part of our repo:</p>

                    <div class="w3-example">
                        <h3>Example</h3>
                        <pre class="command-line language-shell" data-output="2-10" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span></span><span class="token function">git</span> status
On branch master

No commits yet

Untracked files:
&nbsp;&nbsp;(use "git add <file>..." to include in what will be committed)
&nbsp;&nbsp;&nbsp;&nbsp;index.html

nothing added to commit but untracked files present (use "git add" to track)</file></code></pre>
</div>
<p>Now Git is <strong>aware</strong> of the file, but has not <strong>added</strong> 
it to our repository!</p>
<p>Files in your Git repository folder can be in one of 2 states:</p>
<ul>
  <li>Tracked - files that Git knows about and are added to the repository</li>
  <li>Untracked - files that are in your working directory, but not added to the 
  repository</li>
</ul>
<p>&nbsp;When you first add files to an empty repository, they are all 
untracked. To get Git to track them, you need to stage them, or add them to the 
staging environment.</p>
<p>We will cover the staging environment in the next chapter.</p>
<hr>
                <br>

            </section>
            <script src="https://www.w3schools.com/lib/w3.js"></script>
            <script src="prism_coy.js" data-manual=""></script>
            <script src="git_remote.js"></script>
            <script>
                updateParts();
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
