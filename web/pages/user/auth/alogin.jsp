<%-- 
    Document   : login
    Created on : Jan 28, 2023, 1:00:01 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <html>
        <head>
            <meta charset='utf-8'>
            <meta name='viewport' content='width=device-width, initial-scale=1'>
            <title>OnlineLearning</title>
            <link rel="canonical" href="/" />
            <link rel="alternate" hreflang="vi" href="https://codelearn.io/" />
            <link rel="alternate" hreflang="en-US" href="https://codelearn.io/" />
            <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1,user-scalable=0" />
            <title>Learn to code easily with CodeLearn</title>

            <script async src="js/login.js"></script>
            <script>
                var isGetNotification = true;
                var isNotCountComment = false;
                var s3Storage = '';
                var resourcePath = '';
                var strAuthen = '';
            </script>
            <link rel="stylesheet" href="font/fontawesome-free-6.3.0-web/fontawesome-free-6.3.0-web/css/all.css"/>
            <link href="css/login-codelearn.css" rel="stylesheet" type="text/css" />
            <script src="js/login1.js" type="text/javascript"></script>
            <script src="js/login2.js" type="text/javascript"></script>
            <script src="js/login3.js" type="text/javascript"></script>
            <script src="js/login4.js" type="text/javascript"></script>
            <script src="js/login5.js" type="text/javascript"></script>
            <script src="js/login6.js" type="text/javascript"></script>
            <script src="js/login7.js" type="text/javascript"></script>
            <script src="js/login8.js" type="text/javascript"></script>
            <script async="" defer="" src="js/login9.js" type="text/javascript"></script>
            <script src="js/login10.js" type="text/javascript"></script>
        </head>
        <body class="hold-transition site-body skin-sku-light layout-top-nav  ">
            <div class="zone zone-content">
                <div id="layout-navigation" class="group landing-header">
                    <div class="zone zone-navigation">
                        <article class="widget-navigation widget-menu-widget widget">
                            <header class="navbar site-header container">
                                <div class="wrap-site-logo">
                                    <a title="CodeLearn" href="home">
                                        <img alt="" class="site-logo"
                                             src="themes/logo2.png">
                                    </a>
                                </div>
                                <div class="wrap-right-header">
                                    <input type="checkbox" id="mobile-menu-cb" name="mobile-menu-cb">
                                    <label class="hamburger-button" for="mobile-menu-cb">
                                        <span class="hamburger-icon"></span>
                                    </label>
                                    <label class="hamburger-menu-mask" for="mobile-menu-cb"></label>
                                    <nav class="site-menu">
                                        <ul class="menu menu-main-menu">
                                            <li>
                                                <a href="home" title="Learning">Learning</a>
                                            </li>
                                            <li>
                                                <a href="/training" title="Training">Training</a>
                                            </li>
                                            <li>
                                                <a href="discussion" title="Discussion">Discussion</a>
                                            </li>
                                            <li>
                                                <a href="/leaderboard" title="Contact">Contact</a>
                                            </li>
                                        </ul>
                                        <div class="dropdown dropdown-language">
                                            <a href="#" class="dropdown-toggle btn-dark btn--language " data-toggle="dropdown"
                                               role="button" aria-haspopup="true" aria-expanded="false" title="English">
                                                <img alt="English" class="button-language btn-img flag" src="themes/en.png" />
                                            </a>
                                            <ul class="dropdown-menu">
                                                <li>
                                                    <a href="language?name=en&url=login">
                                                        <span class="change-lang"
                                                              >
                                                            <img alt="en" class="icon-language"
                                                                 src="themes/en.png">
                                                            English
                                                        </span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="language?name=vi&url=login">
                                                        <span class="change-lang"
                                                              >
                                                            <img alt="vn" class="icon-language"
                                                                 src="themes/vn.png">
                                                            Tiếng Việt
                                                        </span>
                                                    </a> 
                                                </li>
                                            </ul>
                                        </div>
                                    </nav>
                                    <ul class="site-user-menu">
                                        <li>
                                            <button id="login-header" class="btn btn-login" data-toggle="modal"
                                                    data-target="#loginModal"
                                                    onclick="if (!window.__cfRLUnblockHandlers)
                        return false;
                    openModal('login')">Login</button>
                                            <a href="#frmSignup" class="btn btn-important" title="Register">Register</a>
                                        </li>
                                    </ul>
                                </div>
                            </header>
                        </article>
                    </div>
                </div>


                <section id="top-head" class="landing-section">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12 col-lg-8">
                                <div class="wrap-block-head-text">
                                    <div class="block-head-text">
                                        <h1>Learn to code:<br> From zero to hero</h1>
                                        <p>Easier to get started with coding on CodeLearn</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-lg-4" id="frmSignup">
                                <div class="wrap-form-head-register">
                                    <div class="form-head-register">
                                        <h4 class="title-block">Start now</h4>
                                        <c:if test="${requestScope.message != null}">
                                            <h2 class="title-block" style="color: red" >${requestScope.message}</h2>  
                                        </c:if>
                                        <form  action="signup" method="post">
                                            <div class="form-group">
                                                <input name="suser" type="text" class="form-control" placeholder="Username"
                                                       required       >
                                            </div>
                                            <div class="form-group">
                                                <input name="spass" type="password" class="form-control" placeholder="Enter your Password"
                                                       required   >
                                            </div>
                                            <div class="form-group">
                                                <input name="re-pass" type="password" class="form-control"
                                                       placeholder="Confirm your password" required>
                                            </div>

                                            <button type="submit" class="btn btn-default btn-block btn-blue btn-signup">Start
                                                studying now!</button>
                                        </form>
                                        <div class="switch-type-login">or use another account</div>
                                        <div class="signin-options">
                                            <!--                                            <button class="btn btn-default btn-block btn--microsoft icon-left"
                                                                                                onclick="window.location.replace('https://oauth.codelearn.io/Home/SignIn')"
                                                                                                title="Login with your Fsoft account via Microsoft"
                                                                                                >
                                                                                            <i class="cl-icon-windows" aria-hidden="true"></i>
                                                                                        </button>-->

                                            <button class="btn btn-default btn-block btn--google icon-left btn-google-login"
                                                    onclick="window.location.replace('https://accounts.google.com/o/oauth2/auth?scope=profile&redirect_uri=http://localhost:9999/OnlineLearning/LoginGoogleHandler&response_type=code&client_id=132232716347-4mei2t22s3sups70fqi7u2ub30mrv5nr.apps.googleusercontent.com&approval_prompt=force')"
                                                    title="Continue with Google account">
                                                <i class="fa-brands fa-google" aria-hidden="true"></i>
                                            </button>

                                            <!--                                            <button class="btn btn-default btn-block btn--facebook icon-left"
                                                                                                onclick="facebookSignIn()" title="Continue with Facebook account">
                                                                                            <i class="cl-icon-facebook" aria-hidden="true"></i>
                                                                                        </button>-->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <section id="key-for-future" class="landing-section">
                    <div class="container">
                        <h2 class="title-section">
                            Programming<br>
                            is the in-demand skill for the future
                        </h2>
                        <div class="row">
                            <div class="col-xs-12 col-sm-5 col-md-6">
                                <img src="themes/chia-khoa-lap-trinh.png"
                                     alt="Programming is the in-demand skill for the future" />
                            </div>
                            <div class="col-xs-12 col-sm-7 col-md-6">
                                <ul class="list-key-features">
                                    <li>
                                        <div class="heading-key"><img
                                                src="themes/phat-trien-tu-duy-sang-tao.png"
                                                alt="Develop creative thinking" />
                                            <h3>Develop creative thinking</h3>
                                        </div>
                                        <p class="key-des">Learning to code helps you improve logical thinking and take you to a
                                            new level in solving problems.</p>
                                    </li>
                                    <li>
                                        <div class="heading-key"><img
                                                src="themes/lam-quen-cong-nghe.png"
                                                alt="Get to know the technology world" />
                                            <h3>Get to know the technology world</h3>
                                        </div>
                                        <p class="key-des">Learning to code to step into the world of Information Technology and
                                            adapt to the Industry 4.0.</p>
                                    </li>
                                    <li>
                                        <div class="heading-key"><img
                                                src="themes/mo-rong-co-hoi-nghe-nghiep.png"
                                                alt="Get more job opportunities" />
                                            <h3>Get more job opportunities</h3>
                                        </div>
                                        <p class="key-des">Programming jobs are growing 50% faster than the overall job market
                                            with an average salary of 30% higher than that of other jobs.</p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </section>


                <section id="code-step" class="landing-section">
                    <div class="container">
                        <h2 class="title-section">
                            Roadmap to become <br>a programmer
                        </h2>
                        <div class="row">
                            <div class="col-xs-12 col-sm-4">
                                <a href="/learning" title="Learn to code">
                                    <div class="wrap-code-step-img">
                                        <span class="label-step">1</span>
                                        <img src="themes/hoc-lap-trinh.png"
                                             alt="Learn to code" />
                                    </div>
                                    <h3 class="step-title">Learn to code</h3>
                                    <p class="step-des">Start learning with a wide range of basic to advanced courses created by
                                        top experts.</p>
                                </a>
                            </div>
                            <div class="col-xs-12 col-sm-4">
                                <a href="/training" title="Practice coding">
                                    <div class="wrap-code-step-img">
                                        <span class="label-step">2</span>
                                        <img src="themes/luyen-lap-trinh.png"
                                             alt="Practice coding" />
                                    </div>
                                    <h3 class="step-title">Practice coding</h3>
                                    <p class="step-des">Level up your programming skills every day with our library of 1000+
                                        challenges.</p>
                                </a>
                            </div>
                            <div class="col-xs-12 col-sm-4">
                                <a href="/fights" title="Join coding contest">
                                    <div class="wrap-code-step-img">
                                        <span class="label-step">3</span>
                                        <img src="themes/thi-lap-trinh.png"
                                             alt="Coding contest" />
                                    </div>
                                    <h3 class="step-title">Join coding contest</h3>
                                    <p class="step-des">Participate in contests to test the geek in you and improve your coding
                                        skills.</p>
                                </a>
                            </div>
                        </div>
                    </div>
                </section>

                <section id="footer-banner" class="landing-section">
                    <div class="container">
                        <h2 class="title-section">AROUSE YOUR <span style="color:#FAD93C">PROGRAMMING PASSION</span>!</h2>
                        <h4>Register and join the best developer community!</h4>
                        <a class="btn btn-important" href="#frmSignup" title="Start today!">Start today!</a>
                    </div>
                </section>

                <footer id="footer" class="codecamp-footer">
                    <div class=" main-footer">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6 introduction footer-column">
                                    <div class="logo-codelearn">
                                        <img src="themes/logo2.png"
                                             alt="CodeLearn" />
                                    </div>
                                    <p>
                                        BoxBox is an online platform that helps users to learn, practice coding skills and
                                        join the online coding contests.
                                    </p>
                                    <a href="https://www.facebook.com/CodeLearnFanpage" title="Facebook" target="_blank"
                                       class="social-button">
                                        <i class="cl-icon-facebook-f"></i>
                                    </a>
                                    <a href="https://www.youtube.com/channel/UCpt3dSDGk5fC7uU9OeFG5ig" title="Youtube"
                                       target="_blank" class="social-button">
                                        <i class="cl-icon-youtube"></i>
                                    </a>
                                    <a href="https://twitter.com/codelearn_io" title="Twitter" target="_blank"
                                       class="social-button">
                                        <i class="cl-icon-twitter-full"></i>
                                    </a>
                                    <a href="https://www.instagram.com/codelearn.io/" title="Instagram" target="_blank"
                                       class="social-button">
                                        <i class="cl-icon-instagram"></i>
                                    </a>
                                </div>
                                <div class="col-xs-12 col-sm-4 col-md-2 links footer-column">
                                    <h4>Links</h4>
                                    <p><a href="/learning" class="link-menu" title="Learning">Learning</a></p>
                                    <p><a href="/training" class="link-menu" title="Training">Training</a></p>
                                    <p><a href="/fights" class="link-menu" title="Fights">Fights</a></p>
                                    <p><a href="/game/index" class="link-menu" title="Game">Game</a></p>
                                </div>
                                <div class="col-xs-12 col-sm-4 col-md-2 about footer-column">
                                    <h4>Information</h4>
                                    <p><a href="/aboutus" title="About Us">About Us</a></p>
                                    <p><a href="/terms" title="Terms of Use">Terms of Use</a></p>
                                </div>
                                <div class="col-xs-12 col-sm-4 col-md-2 help footer-column">
                                    <h4>Help</h4>
                                    <p><a href="/help" title="Help">Help</a></p>
                                    <p><a href="/discussion" title="Discussion">Discussion</a></p>
                                    <p><a href="/cdn-cgi/l/email-protection#01727471716e737541626e65646d6460736f2f686e"
                                          title="Contact us">Contact us</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
                <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
                <article class="widget-content widget-home-widget widget">
                </article>
            </div>
            <script src="/Themes/TheCodeCampPro/Resources/Lib/slick/slick.min.js?fileHash=g5vMajDezqU32iaWKxPsqg%3d%3d"
            type="text/javascript"></script>
            <script src="/Themes/TheCodeCampPro/Resources/Lib/countUp/waypoints.min.js?fileHash=T%2bFDN6YtcQOJ9C6KXRBD9w%3d%3d"
            type="text/javascript"></script>
            <script
                src="/Themes/TheCodeCampPro/Resources/Lib/countUp/jquery.countup.min.js?fileHash=lfO1ZWQ1nhBbsRmMIliFQg%3d%3d"
            type="text/javascript"></script>

            <div id="fb-root"></div>

            <div class="modal fade modal-center" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModal">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-body login-modal">
                            <div>

                                <!--                                <ul class="nav nav-tabs nav-fill" role="tablist">
                                                                    <li role="presentation" class="nav-item">
                                                                        <a class="nav-link" data-target="#login" aria-controls="login" role="tab"
                                                                           data-toggle="tab" onclick="openModal('login')">Login</a>
                                                                    </li>
                                                                </ul>-->

                                <div class="tab-content">
                                    <h4 class="header-card">with your social network</h4>
                                    <div class="signin-options">
                                        <a href="https://wwww.facebook.com" target="_blank" class="px-2" hidden="">
                                            <button class="btn btn-default btn-block btn--microsoft icon-left"
                                                    onclick="window.location.replace('https://oauth.codelearn.io/Home/SignIn')"
                                                    title="Login to FSoft account via Microsoft" hidden="">
                                                <i class="cl-icon-windows" aria-hidden="true"></i>
                                                <span>Microsoft</span>
                                            </button>
                                        </a>
                                        <button class="btn btn-default btn-block btn--google icon-left" id="googleSignIn"
                                                onclick="window.location.replace('https://accounts.google.com/o/oauth2/auth?scope=profile&redirect_uri=http://localhost:9999/OnlineLearning/LoginGoogleHandler&response_type=code&client_id=132232716347-4mei2t22s3sups70fqi7u2ub30mrv5nr.apps.googleusercontent.com&approval_prompt=force')"
                                                >
                                            <i class="fa-brands fa-google" aria-hidden="true"></i>
                                            <span>Google</span>
                                        </button>

                                        <a href="https://wwww.facebook.com" target="_blank" class="px-2" hidden="">
                                            <button class="btn btn-default btn-block btn--facebook icon-left"
                                                    onclick="facebookSignIn()">
                                                <i class="cl-icon-facebook-f" aria-hidden="true"></i>
                                                <span>Facebook</span>
                                            </button>
                                        </a>



                                    </div>
                                    <p class="label-or text-center">OR</p>
                                    <h3 class="label-or text-center" style="color: red">${requestScope.ms}</h3>
                                    <c:set var="cookie" value="${pageContext.request.cookies}"></c:set>
                                        <div role="tabpanel" class="tab-pane active" id="login">
                                            <form id="frmLogin" action="alogin" method="post">
                                                <div class="form-group">
                                                    <input name="user" type="text" class="form-control" placeholder="User name"
                                                           value="${cookie.cuser.value}" />
                                                <a href="/resend-email" title="Resend activation email"
                                                   class="resend-email hidden">Resend activation email</a>
                                            </div>
                                            <div class="form-group" style="margin-bottom: 30px;">
                                                <input name="pass" type="password" class="form-control"
                                                       placeholder="Please enter password" value="${cookie.cpass.value}" />
                                            </div>
                                            <div class="form-button">
                                                <button type="submit"
                                                        class="btn btn-default btn-block btn-blue btn-login">Login</button>
                                            </div>
                                            <div class="col-md-12 registered-forgot" role="tablist">
                                                <div class="col-md-6 text-left">
                                                    <input type="checkbox" ${cookie.crem!=null?'checked':''} name="remember" id="remember" value="${cookie.crem.value}">
                                                    <label for="remember">Remember me</label>
                                                </div>
                                                <div class="col-md-6 text-right">
                                                    <a href="/forgot-password">I can't rememeber my password</a>
                                                </div>
                                            </div>
                                            <div class="col-md-12 terms-of-use">
                                                This site is protected by reCAPTCHA and <a href="/terms" target="_blank">Terms
                                                    of Use</a> apply.
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <script>

                var siteKey = '6LcMTLMUAAAAAFLLyTIvjCj7k0bAG8ZqjnaTTrQE';
            </script>
            <script type="application/ld+json">
                {
                "@context": "http://schema.org",
                "@type": "Organization",
                "name": "CodeLearn",
                "url": "https://codelearn.io",
                "address": "Ha Noi, Viet Nam",
                "sameAs": [
                "https://www.facebook.com/CodeLearnFanpage/",
                "https://www.linkedin.com/company/codelearnio",
                "https://twitter.com/codelearn_io"
                ]
                }
            </script>

        </body>
    </html>
</html>
