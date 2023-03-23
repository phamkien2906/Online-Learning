<%-- 
    Document   : lesson23
    Created on : Feb 3, 2023, 11:53:59 PM
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
                    <h1>Git <span class="color_h1">Security SSH</span></h1>
                    <hr>
                    <h2>Git Security</h2>
                    <p>Up to this point, we have used HTTPS to connect to our remote repository.</p>
                    <p>HTTPS will usually work just fine, but you should use SSH if you work with unsecured networks. And sometimes, a project will require that you use SSH.</p>
                    <hr>
                    <h2>What is SSH</h2>
                    <p>SSH is a secure shell network protocol that is used for network management, 
                        remote file transfer, and remote system access.</p>
                    <p>SSH uses a pair of SSH keys to establish an authenticated and encrypted 
                        secure network protocol. It allows for secure remote communication on unsecured 
                        open networks.</p>
                    <p>SSH keys are used to initiate a secure "handshake". When generating a set of 
                        keys, you will generate a "public" and "private" key.</p>
                    <p>The "public" key is the one you share with the remote party. Think of this 
                        more as the lock.</p>
                    <p>The "private" key is the one you keep for yourself in a secure place. Think of 
                        this as the key to the lock.</p>
                    <p>SSH keys are generated through a security algorithm. It is all very complicated, but it uses prime numbers, and 
                        large random numbers to make the public and private key.</p>
                    <p>It is created so that the public key can be derived from the private 
                        key, but not the other way around.</p>
                    <hr>
                    <h2>Generating an SSH Key Pair</h2>
                    <p>In rhe command line for Linux, Apple, and in the Git Bash for Windows, you can 
                        generate an SSH key.</p>
                    <p>Let's go through it, step by step.</p>
                    <p>Start by creating a new key, using your email as a label:</p>
                    <div class="w3-example">
                        <h3>Example</h3>
                        <pre class="command-line language-shell" data-output="2-22" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span></span>ssh-keygen -t rsa -b <span class="token number">4096</span> -C <span class="token string">"test@w3schools.com"</span>
Generating public/private rsa key pair.
Enter file in which to save the key (/Users/user/.ssh/id_rsa):
Created directory '/Users/user/.ssh'.
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in /Users/user/.ssh/id_rsa
Your public key has been saved in /Users/user/.ssh/id_rsa.pub
The key fingerprint is:
SHA256:******************************************* test@w3schools.com
The key's randomart image is:
+---[RSA 4096]----+
|                 |
|                 |
|                 |
|                 |
|                 |
|                 |
|                 |
|                 |
|                 |
+----[SHA256]-----+</code></pre>
                    </div>

                    <p>You will be prompted with the following through this creation:</p>
                    <div class="w3-example">
                        <pre class="command-line language-shell" data-output="1"><code class=" language-shell"><span class="command-line-prompt"><span></span></span>Enter file in which to save the key (/c/Users/user/.ssh/id_rsa):</code></pre>
                    </div>

                    <p>Select a file location, or press "Enter" to use the default file location.</p>

                    <div class="w3-example">
                        <pre class="command-line language-shell" data-output="1-2"><code class=" language-shell"><span class="command-line-prompt"><span></span><span></span></span>Enter passphrase (empty for no passphrase):
Enter same passphrase again:</code></pre>
                    </div>

                    <p>Entering a secure passphrase will create an additional layer of security. Preventing anyone who gains access to the computer to use that key without the passphrase. However, it will require you to supply the passphrase anytime the SSH key is used.</p>

                    <p>Now we add this SSH key pair to the SSH-Agent (using the file location from above):</p>
                    <div class="w3-example">
                        <h3>Example</h3>
                        <pre class="command-line language-shell" data-output="2-3" data-user="user" data-host="localhost"><code class=" language-shell"><span class="command-line-prompt"><span data-user="user" data-host="localhost"></span><span></span><span></span></span>ssh-add /Users/user/.ssh/id_rsa
Enter passphrase for /Users/user/.ssh/id_rsa:
Identity added: /Users/user/.ssh/id_rsa (test@w3schools.com)</code></pre>
                    </div>
                    <p>You will be prompted to supply the passphrase, if you added one.</p>
                    <p>Now the SSH key pair is ready to use.</p>
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
