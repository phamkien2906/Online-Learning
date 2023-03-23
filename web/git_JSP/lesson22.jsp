<%-- 
    Document   : lesson22
    Created on : Feb 3, 2023, 11:51:23 PM
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
                    <h1>Git <span class="color_h1">Ignore and .gitignore</span></h1>

                    <hr>
                    <h2>Git Ignore</h2>
                    <p>When sharing your code with others, there are often files or parts of your project, you do not want to share.</p>
                    <p>Examples</p>
                    <ul>
                        <li>log files</li>
                        <li>temporary files</li>
                        <li>hidden files</li>
                        <li>personal files</li>
                        <li>etc.</li>
                    </ul>
                    <p>Git can specify which files or parts of your project should be 
                        ignored by Git using a <code class="w3-codespan">.gitignore</code> file.</p>
                    <p>Git will not track files and folders specified in <code class="w3-codespan">.gitignore</code>. However, the <code class="w3-codespan">.gitignore</code> 
                        file itself <strong>IS</strong> tracked by Git.</p>
                    <hr>
                    <h2>Create .gitignore</h2>
                    <p>To create a <code class="w3-codespan">.gitignore</code> file, go to the root of your local Git, and create it:</p>
                    <div class="w3-example">
                        <h3>Example</h3>
                        <pre class="command-line language-shell" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span></span><span class="token function">touch</span> .gitignore</code></pre>
                    </div>

                    <p>Now open the file using a text editor.</p>
                    <p>We are just going to add two simple rules:</p>
                    <ul>
                        <li>Ignore any files with the <code class="w3-codespan">.log</code> extension</li>
                        <li>Ignore everything in any directory named <code class="w3-codespan">temp</code></li>
                    </ul>

                    <div class="w3-example">
                        <h3>Example</h3>
                        <div class="w3-code notranslate htmlHigh">
                            # ignore ALL .log files<br>
                            *.log<br>
                            <br>
                            # ignore ALL files in ANY directory named temp<br>
                            temp/ </div>
                    </div>
                    <p>Now all <code class="w3-codespan">.log</code> files and anything in 
                        <code class="w3-codespan">temp</code> folders will be ignored by Git.</p>
                    <div class="w3-panel w3-note">
                        <p><strong>Note:</strong> In this case, we use a single <code class="w3-codespan">.gitignore</code> which applies to the entire repository.</p>
                        <p> It is also possible to have additional <code class="w3-codespan">.gitignore</code> files in subdirectories. These only apply to files or folders within that directory.</p>
                    </div>
                    <hr>
                    <div id="midcontentadcontainer" style="overflow:auto;text-align:center">
                        <!-- MidContent -->
                        <!-- <p class="adtext">Advertisement</p> -->

                        <div id="adngin-mid_content-0"></div>

                    </div>
                    <hr>

                    <h2>Rules for .gitignore</h2>
                    <p>Here are the general rules for matching patterns in <code class="w3-codespan">.gitignore</code> 
                        files:&nbsp;</p>
                    <table class="ws-table-all notranslate">
                        <tbody><tr>
                                <th style="width:200px">Pattern</th>
                                <th>Explanation/Matches</th>
                                <th style="width:150px">Examples</th>

                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>Blank lines are ignored</td>
                                <td>&nbsp;</td>

                            </tr>
                            <tr>
                                <td># <em>text comment</em></td>
                                <td>Lines starting with # are ignored</td>
                                <td>&nbsp;</td>

                            </tr>
                            <tr>
                                <td><em>name</em></td>
                                <td>All <em>name</em> files, <em>name</em> folders, and files and folders in any
                                    <em>name</em> folder</td>
                                <td>/name.log<br>/name/file.txt<br>/lib/name.log</td>

                            </tr>
                            <tr>
                                <td><em>name</em>/</td>
                                <td>Ending with / specifies the pattern is for a folder. Matches all files and folders in any
                                    <em>name</em> folder</td>
                                <td>/name/file.txt<br>/name/log/name.log<br><br><strong>no match:</strong><br>/name.log</td>

                            </tr>
                            <tr>
                                <td><em>name</em>.<em>file</em></td>
                                <td>All files with the <em>name.file</em></td>
                                <td>/name.file<br>/lib/name.file</td>

                            </tr>
                            <tr>
                                <td><em>/name</em>.<em>file</em></td>
                                <td>Starting with / specifies the pattern matches only 
                                    files in the root folder</td>
                                <td>/name.file<br><br><strong>no match:</strong><br>
                                    /lib/name.file</td>

                            </tr>
                            <tr>
                                <td><em>lib/name</em>.<em>file</em></td>
                                <td>Patterns specifiing files in specific folders are always realative to root 
                                    (even if you do not start with / )</td>
                                <td>/lib/name.file<br><br><strong>no match:</strong><br>
                                    name.file<br>/test/lib/name.file</td>

                            </tr>
                            <tr>
                                <td>**<em>/lib/name.file</em></td>
                                <td>Starting with ** before / specifies that it matches any folder in the 
                                    repository. Not just on root.</td>
                                <td>/lib/name.file<br>/test/lib/name.file</td>

                            </tr>
                            <tr>
                                <td>**<em>/name</em></td>
                                <td>All <em>name</em> folders, and files and folders in any
                                    <em>name</em> folder</td>
                                <td>/name/log.file<br>/lib/name/log.file<br>/name/lib/log.file</td>

                            </tr>
                            <tr>
                                <td>/lib/**<em>/name</em></td>
                                <td>All <em>name</em> folders, and files and folders in any
                                    <em>name</em> folder within the lib folder.</td>
                                <td>/lib/name/log.file<br>/lib/test/name/log.file<br>/lib/test/ver1/name/log.file<br>
                                    <br><strong>no match:</strong><br>
                                    /name/log.file</td>

                            </tr>
                            <tr>
                                <td>*.<em>file</em></td>
                                <td>All files withe <em>.file</em> extention</td>
                                <td>/name.file<br>/lib/name.file</td>

                            </tr>
                            <tr>
                                <td>*<em>name</em>/</td>
                                <td>All folders ending with <em>name</em></td>
                                <td>/lastname/log.file<br>/firstname/log.file</td>

                            </tr>
                            <tr>
                                <td><em>name</em>?.<em>file</em></td>
                                <td>? matches a <strong>single</strong> non-specific character</td>
                                <td>/names.file<br>/name1.file<br><br><strong>no match:</strong><br>
                                    /names1.file</td>

                            </tr>
                            <tr>
                                <td><em>name</em>[a-z].<em>file</em></td>
                                <td>[<em>range</em>] matches a <strong>single</strong> character in the 
                                    specified range (in this case a character in the range of a-z, and also be 
                                    numberic.)</td>
                                <td>/names.file<br>/nameb.file<br><br><strong>no match:</strong><br>
                                    /name1.file</td>

                            </tr>
                            <tr>
                                <td><em>name</em>[abc].<em>file</em></td>
                                <td>[<em>set</em>] matches a <strong>single</strong> character in the specified 
                                    set of characters (in this case either a, b, or c)</td>
                                <td>/namea.file<br>/nameb.file<br><br><strong>no match:</strong><br>
                                    /names.file</td>

                            </tr>
                            <tr>
                                <td><em>name</em>[!abc].<em>file</em></td>
                                <td>[!<em>set</em>] matches a <strong>single</strong> character, <strong>except</strong> 
                                    the ones spesified in the set of characters (in this case a, b, or c)</td>
                                <td>/names.file<br>/namex.file<br><br><strong>no match:</strong><br>
                                    /namesb.file</td>

                            </tr>
                            <tr>
                                <td>*.<em>file</em></td>
                                <td>All files withe <em>.file</em> extention</td>
                                <td>/name.file<br>/lib/name.file</td>
                            </tr>
                            <tr>
                                <td><em>name</em>/<br>!<em>name</em>/secret.log</td>
                                <td>! specifies a negation or exception. Matches all files and folders in any
                                    <em>name</em> folder, except name/secret.log</td>
                                <td>/name/file.txt<br>/name/log/name.log<br><br><strong>no match:</strong><br>/name/secret.log</td>

                            </tr>
                            <tr>
                                <td>*.<em>file<br></em>!<em>name</em>.file</td>
                                <td>! specifies a negation or exception. All files withe <em>.file</em> extention, except name.file</td>
                                <td>/log.file<br>/lastname.file<br><br><strong>no match:</strong><br>
                                    /name.file</td>

                            </tr>
                            <tr>
                                <td>*.<em>file<br></em>!<em>name</em>/*<em>.file</em><br>junk.*</td>
                                <td>Adding new patterns after a negation will re-ignore a previous negated file<br>All files withe <em>.file</em> extention, except the ones in <em>name</em> 
                                    folder. Unless the file name is junk</td>
                                <td>/log.file<br>/name/log.file<br><br><strong>no match:</strong><br>
                                    /name/junk.file</td>

                            </tr>
                        </tbody></table>

                    <hr>
                    <h2>Local and Personal Git Ignore Rules</h2>
                    <p>It is also possible to ignore files or folders but not show it in the 
                        distributed <code class="w3-codespan">.gitignore</code> file.</p>
                    <p>These kinds of ignores are specified in the <code class="w3-codespan">
                            .git/info/exclude</code> file. It works the same way as
                        <code class="w3-codespan">.gitignore</code> but are not shown to anyone else.</p>

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
