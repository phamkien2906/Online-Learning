<%-- 
    Document   : lesson24
    Created on : Feb 3, 2023, 11:58:09 PM
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
                    <h1>Git <span class="color_h1">GitHub Add SSH</span></h1>
                    <hr>

                    <div id="remoteNameContent"><section><h2>Copy the SSH Public Key</h2>
                            <p>In the previous chapter, we created an SSH key pair.</p>
                            <p>Now we will use the <code class="w3-codespan">clip &lt;</code> command to copy the public key to our clipboard:</p>
                            <div class="w3-example">
                                <h3>Example</h3>
                                <pre class="command-line language-shell" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span></span>clip <span class="token operator">&lt;</span> /Users/user/.ssh/id_rsa.pub</code></pre>
                            </div>
                            <p>Go to GitHub, navigate to the top left corner, click your profile, and select: Settings:</p>

                            <p>Then select "SSH and GPG keys". and click the "New SSH key" button:</p>

                            <p>Select a title, and paste the public SSH key into the "Key" field, and click "Add SSH Key":</p>

                            <p>You will be prompted to supply your GitHub password.</p>
                            <p>You will see your new SSH key added:</p>

                            <hr>
                            <h2>Test SSH Connection to GitHub</h2>
                            <p>Now we can test our connection via SSH to GitHub:</p>
                            <div class="w3-example">
                                <h3>Example</h3>
                                <pre class="command-line language-shell" data-output="2-6" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span><span></span><span></span><span></span></span><span class="token function">ssh</span> -T git@github.com
The authenticity of host 'github.com (140.82.121.3)' can't be established.
RSA key fingerprint is SHA256:nThbg6kXUpJWGl7E1IGOCspRomTxdCARLviKw6E5SY8.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added 'github.com,140.82.121.3' (RSA) to the list of known hosts.
Hi w3schools-test! You've successfully authenticated, but GitHub does not provide shell access.</code></pre>
                            </div>
                            <p>If the last line contains your username on GitHub, you are successfully authenticated!</p>

                            <hr>
                            <h2>Add New GitHub SSH Remote</h2>
                            <p>Now we can add a new remote via SSH to our Git.</p>
                            <p>First, get the SSH address from our repository on GitHub:</p>

                            <p>Then use that address to add a new origin:</p>
                            <div class="w3-example">
                                <h3>Example</h3>
                                <pre class="command-line language-shell" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span></span><span class="token function">git</span> remote <span class="token function">add</span> ssh-origin git@github.com:w3schools-test/hello-world.git</code></pre>
                            </div>
                            <div class="w3-panel w3-note">
                                <p><strong>Note:</strong> You can change a remote origin from HTTPS to SSH with the command: <code class="w3-codespan">git remote set-url <em>remote-name</em> git@github.com:<em>username</em>/<em>repository</em>.git</code></p>

                                <div class="w3-example">
                                    <h3>Example</h3>
                                    <pre class="command-line language-shell" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span></span><span class="token function">git</span> remote set-url origin git@github.com:w3schools-test/hello-world.git</code></pre>
                                </div>
                            </div>
                            <hr>
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
