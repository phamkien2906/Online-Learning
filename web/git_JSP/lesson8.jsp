<%-- 
    Document   : lesson8
    Created on : Feb 3, 2023, 11:09:49 PM
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
                    <h1>Git <span class="color_h1">Branch</span></h1>

                    <hr>
                    <h2>Working with Git Branches</h2>
                    <p>In Git, a <code class="w3-codespan">branch</code> is a new/separate version of the main repository.</p>
                    <p>Let's say you have a large project, and you need to update the design on it.</p>
                    <p>How would that work without and with Git:</p>
                    <p>Without Git:</p>
                    <ul>
                        <li>Make copies of all the relevant files to avoid impacting the live version</li>
                        <li>Start working with the design and find that code depend on code in other 
                            files, that also need to be changed!</li>
                        <li>Make copies of the dependant files as well. Making sure that every file 
                            dependency references the correct file name</li>
                        <li>EMERGENCY! There is an unrelated error somewhere else in the project that 
                            needs to be fixed ASAP!</li>
                        <li>Save all your files, making a note of the names of the copies you were 
                            working on</li>
                        <li>Work on the unrelated error and update the code to fix it</li>
                        <li>Go back to the design, and finish the work there</li>
                        <li>Copy the code or rename the files, so the updated design is on the live 
                            version</li>
                        <li>(2 weeks later, you realize that the unrelated error was not fixed in the 
                            new design version because you copied the files before the fix)</li>
                    </ul>
                    <p>With Git:</p>
                    <ul>
                        <li>With a new branch called new-design, edit the code directly without 
                            impacting the main branch</li>
                        <li>EMERGENCY! There is an unrelated error somewhere else in the project that 
                            needs to be fixed ASAP!</li>
                        <li>Create a new branch from the main project called small-error-fix</li>
                        <li>Fix the unrelated error and merge the small-error-fix branch with the main 
                            branch</li>
                        <li>You go back to the new-design branch, and finish the work there</li>
                        <li>Merge the new-design branch with main (getting alerted to the small error 
                            fix that you were missing)</li>
                    </ul>
                    <p>Branches allow you to work on different parts of a project without impacting 
                        the main branch.</p>
                    <p>When the work is complete, a branch can be merged with the main project.</p>
                    <p>You can even switch between branches and work on different projects without 
                        them interfering with each other.</p>
                    <p>Branching in Git is very lightweight and fast!</p>
                    <hr>

                    <h2>New Git Branch</h2>

                    <p>Let add some new features to our <code class="w3-codespan">index.html</code> page.</p>
                    <p>We are working in our local repository, and we do not want to disturb or possibly wreck the main project.</p>

                    <p>So we create a new <code class="w3-codespan">branch</code>:</p>

                    <div class="w3-example">
                        <h3>Example</h3>
                        <pre class="command-line language-shell" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span></span><span class="token function">git</span> branch hello-world-images</code></pre>
                    </div>
                    <p>Now we created a new <code class="w3-codespan">branch</code> called "<code class="w3-codespan">hello-world-images</code>"</p>

                    <p>Let's confirm that we have created a new <code class="w3-codespan">branch</code>:</p>
                    <div class="w3-example">
                        <h3>Example</h3>
                        <pre class="command-line language-shell" data-output="2-3" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span></span><span class="token function">git</span> branch
  hello-world-images
* master</code></pre>
                    </div>
                    <p>We can see the new branch with the name "hello-world-images", but the <code class="w3-codespan">*</code> beside <code class="w3-codespan">
                            master</code> specifies that we are currently on that <code class="w3-codespan">branch</code>.</p>

                    <p><code class="w3-codespan">checkout</code> is the command used to check out a <code class="w3-codespan">branch</code>. Moving us <strong>from</strong> the current 
                        <code class="w3-codespan">branch</code>, <strong>to</strong> the one specified at the end of the command:</p>
                    <div class="w3-example">
                        <h3>Example</h3>
                        <pre class="command-line language-shell" data-output="2-3" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span></span><span class="token function">git</span> checkout hello-world-images
Switched to branch 'hello-world-images'</code></pre>
                    </div>

                    <p>Now we have moved our current workspace from the master branch, to the new 
                        <code class="w3-codespan">branch</code></p>
                    <p>Open your favourite editor and make some changes.</p>
                    <p>For this example, we added an 
                        image (img_hello_world.jpg) to the working folder and a line of code in the 
                        <code class="w3-codespan">index.html</code> file:</p>

                    <div class="w3-example">
                        <h3>Example</h3>
                        <div class="w3-code notranslate htmlHigh">
                            <span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>!DOCTYPE<span class="attributecolor" style="color:red"> html</span><span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>html<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>head<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>title<span class="tagcolor" style="color:mediumblue">&gt;</span></span>Hello World!<span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/title<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>link<span class="attributecolor" style="color:red"> 
                                    rel<span class="attributevaluecolor" style="color:mediumblue">="stylesheet"</span> href<span class="attributevaluecolor" style="color:mediumblue">="bluestyle.css"</span></span><span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/head<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>body<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>h1<span class="tagcolor" style="color:mediumblue">&gt;</span></span>Hello 
                            world!<span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/h1<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>div<span class="tagcolor" style="color:mediumblue">&gt;</span></span><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>img<span class="attributecolor" style="color:red"> src<span class="attributevaluecolor" style="color:mediumblue">="img_hello_world.jpg"</span> alt<span class="attributevaluecolor" style="color:mediumblue">="Hello World from 
                                        Space"</span><br>style<span class="attributevaluecolor" style="color:mediumblue">="width:100%;max-width:960px"</span></span><span class="tagcolor" style="color:mediumblue">&gt;</span></span><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/div<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>p<span class="tagcolor" style="color:mediumblue">&gt;</span></span>This is the first 
                            file in my new Git Repo.<span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/p<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>p<span class="tagcolor" style="color:mediumblue">&gt;</span></span>A new line in our file!<span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/p<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/body<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br>
                            <span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/html<span class="tagcolor" style="color:mediumblue">&gt;</span></span>
                        </div>
                    </div>
                    <p>We have made changes to a file and added a new file in the working directory 
                        (same directory as the <code class="w3-codespan">main</code>
                        <code class="w3-codespan">branch</code>).</p>
                    <p>Now check the status of the current <code class="w3-codespan">branch</code>:</p>
                    <div class="w3-example">
                        <h3>Example</h3>
                        <pre class="command-line language-shell" data-output="2-12" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span></span><span class="token function">git</span> status
On branch hello-world-images
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   index.html

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        img_hello_world.jpg

no changes added to commit (use "git add" and/or "git commit -a")</file></file></file></code></pre>
</div>

<p>So let's go through what happens here:</p>
<ul>
  <li>There are changes to our index.html, but the file is not staged for 
  <code class="w3-codespan">commit</code></li>
  <li><code class="w3-codespan">img_hello_world.jpg</code> is not 
  <code class="w3-codespan">tracked</code></li>
</ul>
<p>So we need to add both files to the Staging Environment for this 
<code class="w3-codespan">branch</code>:</p>

<div class="w3-example">
<h3>Example</h3>
<pre class="command-line language-shell" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span></span><span class="token function">git</span> <span class="token function">add</span> --all</code></pre>
                    </div>

                    <p>Using <code class="w3-codespan">--all</code> instead of individual filenames 
                        will <strong>Stage</strong> all changed (new, modified, and deleted) files.</p>
                    <p>Check the <code class="w3-codespan">status</code> of the 
                        <code class="w3-codespan">branch</code>:</p>
                    <div class="w3-example">
                        <h3>Example</h3>
                        <pre class="command-line language-shell" data-output="2-6" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span><span></span><span></span><span></span></span><span class="token function">git</span> status
On branch hello-world-images
Changes to be committed:
&nbsp;&nbsp;(use "git restore --staged <file>..." to unstage)
&nbsp;&nbsp;&nbsp;&nbsp;new file: img_hello_world.jpg
&nbsp;&nbsp;&nbsp;&nbsp;modified: index.html</file></code></pre>
</div>

<p>We are happy with our changes. So we will commit them to the 
<code class="w3-codespan">branch</code>:</p>
<div class="w3-example">
<h3>Example</h3>
<pre class="command-line language-shell" data-output="2-4" data-user="user" data-host="localhost"><code class=" language-git language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span><span></span></span><span class="token function">git</span> commit -m <span class="token string">"Added image to Hello World"</span>
[hello-world-images 0312c55] Added image to Hello World
2 files changed, 1 insertion(+)
create mode 100644 img_hello_world.jpg</code></pre>
                    </div>
                    <p>Now we have a new <code class="w3-codespan">branch</code>, that is different from the master <code class="w3-codespan">branch</code>.</p>
                    <div class="w3-panel w3-note">
                        <p><strong>Note:</strong> Using the <code class="w3-codespan">-b</code> option 
                            on <code class="w3-codespan">checkout</code> will create a new branch, and move to it, if it does not exist</p>
                    </div>

                    <hr>
                    <div id="midcontentadcontainer" style="overflow:auto;text-align:center">
                        <!-- MidContent -->
                        <!-- <p class="adtext">Advertisement</p> -->

                        <div id="adngin-mid_content-0"></div>

                    </div>
                    <hr>

                    <h2>Switching Between Branches</h2>

                    <p>Now let's see just how quick and easy it is to work with different branches, and how well it works.</p>
                    <p>We are currently on the branch <code class="w3-codespan">hello-world-images</code>. We added an image to this branch, so let's list the files in the current directory:</p>
                    <div class="w3-example">
                        <h3>Example</h3>
                        <pre class="command-line language-shell" data-output="2" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span></span><span class="token function">ls</span>
README.md  bluestyle.css  img_hello_world.jpg  index.html</code></pre>
                    </div>

                    <p>We can see the new file <code class="w3-codespan">img_hello_world.jpg</code>, and if we open the html file, we can see the code has been altered. All is as it should be.</p>
                    <p>Now, let's see what happens when we change branch to <code class="w3-codespan">master</code></p>
                    <div class="w3-example">
                        <h3>Example</h3>
                        <pre class="command-line language-shell" data-output="2-3" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span></span><span class="token function">git</span> checkout master
Switched to branch 'master'</code></pre>
                    </div>

                    <p>The new image is not a part of this branch. List the files in the current directory again:</p>
                    <div class="w3-example">
                        <h3>Example</h3>
                        <pre class="command-line language-shell" data-output="2" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span></span><span class="token function">ls</span>
README.md  bluestyle.css  index.html</code></pre>
                    </div>
                    <p><code class="w3-codespan">img_hello_world.jpg</code> is no longer there! And if we open the html file, we can see the code reverted to what it was before the alteration.</p>
                    <p>See how easy it is to work with branches? And how this allows you to work on different things?</p>
                    <hr>

                    <h2>Emergency Branch</h2>

                    <p>Now imagine that we are not yet done with hello-world-images, but we need to fix an error on master.</p>
                    <p>I don't want to mess with master directly, and I do not want to mess with 
                        hello-world-images, since it is not done yet.</p>
                    <p>So we create a new branch to deal with the emergency:</p>
                    <div class="w3-example">
                        <h3>Example</h3>
                        <pre class="command-line language-shell" data-output="2-3" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span></span><span class="token function">git</span> checkout -b emergency-fix
Switched to a new branch 'emergency-fix'</code></pre>
                    </div>

                    <p>Now we have created a new branch from master, and changed to it. We can 
                        safely fix the error without disturbing the other branches.</p>
                    <p>Let's fix our imaginary error:</p>

                    <div class="w3-example">
                        <h3>Example</h3>
                        <div class="w3-code notranslate htmlHigh">
                            <span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>!DOCTYPE<span class="attributecolor" style="color:red"> html</span><span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>html<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>head<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>title<span class="tagcolor" style="color:mediumblue">&gt;</span></span>Hello World!<span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/title<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>link<span class="attributecolor" style="color:red"> 
                                    rel<span class="attributevaluecolor" style="color:mediumblue">="stylesheet"</span> href<span class="attributevaluecolor" style="color:mediumblue">="bluestyle.css"</span></span><span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/head<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>body<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>h1<span class="tagcolor" style="color:mediumblue">&gt;</span></span>Hello 
                            world!<span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/h1<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>p<span class="tagcolor" style="color:mediumblue">&gt;</span></span>This is the first 
                            file in my new Git Repo.<span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/p<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>p<span class="tagcolor" style="color:mediumblue">&gt;</span></span>This line is here to show how 
                            merging works.<span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/p<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br><br><span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/body<span class="tagcolor" style="color:mediumblue">&gt;</span></span><br>
                            <span class="tagnamecolor" style="color:brown"><span class="tagcolor" style="color:mediumblue">&lt;</span>/html<span class="tagcolor" style="color:mediumblue">&gt;</span></span>
                        </div>
                    </div>
                    <p>We have made changes in this file, and we need to get those changes to the 
                        master branch.</p>
                    <p>Check the status:</p>
                    <div class="w3-example">
                        <h3>Example</h3>
                        <pre class="command-line language-shell" data-output="2-8" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span></span><span class="token function">git</span> status
On branch emergency-fix
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   index.html

no changes added to commit (use "git add" and/or "git commit -a")</file></file></code></pre>
</div>

<p>stage the file, and commit:</p>
<div class="w3-example">
<h3>Example</h3>
<pre class="command-line language-shell" data-output="3-4" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span data-user="user" data-host="localhost"></span><span></span><span></span></span><span class="token function">git</span> <span class="token function">add</span> index.html
<span class="token function">git</span> commit -m <span class="token string">"updated index.html with emergency fix"</span>
[emergency-fix dfa79db] updated index.html with emergency fix
 1 file changed, 1 insertion(+), 1 deletion(-)</code></pre>
                    </div>
                    <p>Now we have a fix ready for master, and we need to merge the two branches.</p>
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
