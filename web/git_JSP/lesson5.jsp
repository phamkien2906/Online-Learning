<%-- 
    Document   : lesson5
    Created on : Feb 3, 2023, 10:59:02 PM
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

                <div id="adngin-main_leaderboard-0"></div>            <section id="mainContent">
                    <h1>Git <span class="color_h1">Staging Environment</span></h1>             
                    <hr>
                    <h2>Git Staging Environment</h2>
                    <p>One of the core functions of Git is the concepts of the Staging Environment, and the Commit.</p>
                    <p>As you are working, you may be adding, editing and removing files. But 
                        whenever you hit a milestone or finish a part of the work, you should add the 
                        files to a Staging Environment.</p>
                    <p><strong>Staged</strong> files are files that are ready to be <strong>
                            committed</strong> to the 
                        repository you are working on. You will learn more about 
                        <code class="w3-codespan">commit</code> shortly.</p>
                    <p>For now, we are done working with <code class="w3-codespan">index.html</code>. 
                        So we can add it to the Staging Environment:</p>

                    <div class="w3-example">
                        <h3>Example</h3>
                        <pre class="command-line language-shell" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span></span><span class="token function">git</span> <span class="token function">add</span> index.html</code></pre>
                    </div>

                    <p>The file should be <strong>Staged</strong>. Let's check the status::</p>

                    <div class="w3-example">
                        <h3>Example</h3>
                        <pre class="command-line language-shell" data-output="2-8" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span></span><span class="token function">git</span> status
On branch master

No commits yet

Changes to be committed:
&nbsp;&nbsp;(use "git rm --cached <file>..." to unstage)
&nbsp;&nbsp;&nbsp;&nbsp;new file: index.html</file></code></pre>
</div>

<p>Now the file has been added to the Staging Environment.</p>
<hr>
<h2>Git Add More than One File</h2>
<p>You can also stage more than one file at a time. Let's add 2 more files to our working folder. Use the text editor again.</p>
<p>A <code class="w3-codespan">README.md</code> file that describes the repository (recommended for all 
repositories):</p>
<div class="w3-example">
<h3>Example</h3>
<div class="w3-code notranslate htmlHigh">
  # hello-world<br>Hello World repository for Git tutorial<br>This is an 
  example repository for the Git tutoial on https://www.w3schools.com<br><br>
  This repository is built step by step in the tutorial.
 </div>
</div>
<p>A basic external style sheet (<code class="w3-codespan">bluestyle.css</code>):</p>
<div class="w3-example">
<h3>Example</h3>
<div class="w3-code notranslate htmlHigh">
  body {<br>background-color: lightblue;<br>}<br><br>h1 {<br>color: navy;<br>
  margin-left: 20px;<br>}
 </div>
</div>
<p>And update <code class="w3-codespan">index.html</code> to include the stylesheet:</p>
<div class="w3-example">
<h3>Example</h3>
<div class="w3-code notranslate htmlHigh">
<span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>!DOCTYPE<span class="attributecolor" style="color:red"> html</span><span class="tagcolor" style="color:mediumblue">&gt;</span></span><br>
<span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>html<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>head<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>title<span class="tagcolor" style="color:mediumblue">&gt;</span></span>Hello World!<span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/title<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>link<span class="attributecolor" style="color:red"> 
  rel<span class="attributevaluecolor" style="color:mediumblue">="stylesheet"</span> href<span class="attributevaluecolor" style="color:mediumblue">="bluestyle.css"</span></span><span class="tagcolor" style="color:mediumblue">&gt;</span></span><br>
<span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/head<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>body<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>h1<span class="tagcolor" style="color:mediumblue">&gt;</span></span>Hello world!<span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/h1<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>p<span class="tagcolor" style="color:mediumblue">&gt;</span></span>This is 
  the first file in my new Git Repo.<span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/p<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><br>
<span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/body<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/html<span class="tagcolor" style="color:mediumblue">&gt;</span></span>
 </div>
</div>
<p>Now add all files in the current directory to the Staging Environment:</p>

<div class="w3-example">
<h3>Example</h3>
<pre class="command-line language-shell" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span></span><span class="token function">git</span> <span class="token function">add</span> --all</code></pre>
                    </div>

                    <p>Using <code class="w3-codespan">--all</code> instead of individual filenames 
                        will <code class="w3-codespan">stage</code> all changes (new, modified, and deleted) files.</p>

                    <div class="w3-example">
                        <h3>Example</h3>
                        <pre class="command-line language-shell" data-output="2-10" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span></span><span class="token function">git</span> status
On branch master

No commits yet

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)
        new file:   README.md
        new file:   bluestyle.css
        new file:   index.html</file></code></pre>
</div>

<p>Now all 3 files are added to the Staging Environment, and we are ready to do 
our first <code class="w3-codespan">commit</code>.</p>
<div class="w3-panel w3-info">
  <p><strong>Note:</strong> The shorthand command for <code class="w3-codespan">
  git add --all</code> is <code class="w3-codespan">git add -A</code></p>
</div>


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
