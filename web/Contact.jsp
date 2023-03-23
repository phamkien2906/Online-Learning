<%-- 
    Document   : Contact.jsp
    Created on : Mar 9, 2023, 4:44:21 PM
    Author     : admin
--%>
<%-- 
    Document   : new3
    Created on : Mar 9, 2023, 4:09:51 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en-US" class="static dir-ltr codecamp" dir="ltr">

<head>
    <meta charset="utf-8" />
    <meta name="description"
        content="CodeLearn is an online interactive platform that helps users to learn, practice coding skills and join the developer community with millions of programmers." />
    <meta name="author" content="CodeLearn" />
    <link rel="shortcut icon" href="/Themes/TheCodeCampPro/Resources/Images/content/codelearn-icon.png" />
    <link rel="apple-touch-icon" href="/Themes/TheCodeCampPro/Resources/Images/content/codelearn-icon.png" />
    <link rel="canonical" href="/home" />
    <link rel="alternate" hreflang="vi" href="https://codelearn.io/home" />
    <link rel="alternate" hreflang="en-US" href="https://codelearn.io/home" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1,user-scalable=0" />
    <title>Code every day to become an excellent programmer</title>

    <meta property="og:title" content="Code every day to become an excellent programmer" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="https://codelearn.io/home" />
    <meta property="og:description"
        content="CodeLearn is an online interactive platform that helps users to learn, practice coding skills and join the developer community with millions of programmers." />
    <meta property="og:image" content="/Themes/TheCodeCampPro/Resources/Images/content/codelearn-share.jpg" />
    <meta property="fb:app_id" content="540883753774783" />


    <meta name="twitter:card" content="summary">
    <meta name="twitter:url" content="https://codelearn.io/home">
    <meta name="twitter:title" content="Code every day to become an excellent programmer">
    <meta name="twitter:description"
        content="CodeLearn is an online interactive platform that helps users to learn, practice coding skills and join the developer community with millions of programmers.">
    <meta name="twitter:image" content="/Themes/TheCodeCampPro/Resources/Images/content/codelearn-share.jpg" />
    <meta name="twitter:site" content="@Codelearn.io">
    <meta name="twitter:creator" content="@Codelearn.io">

    <meta name="google-signin-client_id"
        content="16523143533-ovv9lj8c7i8sv36sv3lguom0msmdk8ah.apps.googleusercontent.com" />

    <script async src="js/account.js"></script>
    <script>
        var isGetNotification = true;
        var isNotCountComment = false;

        var s3Storage = '';
        var resourcePath = '';
        var strAuthen = '';
        var faceId = '540883753774783';
        var isLoadedFacebook = 'False';
        if (strAuthen == '') {
            var googleId = '16523143533-ovv9lj8c7i8sv36sv3lguom0msmdk8ah.apps.googleusercontent.com';
        }

        if (strAuthen == '') {
            var LOGIN_VALIDATOR, SIGNUP_VALIDATOR;
            function openModal(tab) {

                $('#loginModal a[data-target="#' + tab + '"]').tab('show');
                switch (tab) {
                    case 'login':
                        $(".btn--facebook").attr('title', 'Login with Facebook');
                        $(".btn--google").attr('title', 'Login with Google');
                        $("#loginModal .header-card").text('Login your account');
                        SIGNUP_VALIDATOR && SIGNUP_VALIDATOR.resetForm();
                        break;
                    case 'signup':
                        $(".btn--facebook").attr('title', 'Continue with Facebook');
                        $(".btn--google").attr('title', 'Continue with Google');
                        $("#loginModal .header-card").text('Register new account');
                        LOGIN_VALIDATOR && LOGIN_VALIDATOR.resetForm();
                        break;
                }
            }
        }

        

    </script>


    <link href="css/home.css" rel="stylesheet" type="text/css" />
    <link href="css/contact.css" rel="stylesheet" type="text/css" />
    <script src="js/account1.js" type="text/javascript"></script>
    <script src="js/account2.js" type="text/javascript"></script>
    <script src="js/account3.js" type="text/javascript"></script>
    <script src="js/account4.js" type="text/javascript"></script>
    <script src="js/account5.js" type="text/javascript"></script>
    <script src="js/account6.js" type="text/javascript"></script>
    <script src="js/account7.js" type="text/javascript"></script>
</head>

<body class="hold-transition site-body skin-sku-light layout-top-nav home ">
    <script>
        //<![CDATA[
        var LANG_CURRENT = "en";
        const CurrentUserId = 11606613;
        const NOTTIFY_USER_ACCESSKEY = 'nottifyAccessKey';
        const IS_ADMIN = false;

        PKLService.init({ strVersion: '1937254220', strLangCode: 'en', IsHasLogin: true, url: location.origin });
        //]]>
    </script>
    <div id="layout-navigation" class="group ">
        <div class="zone zone-navigation">
            <article class="widget-navigation widget-menu-widget widget">
                <header class="navbar site-header">
                    <div class="wrap-site-logo">
                        <a title="Home" href="home">
                            <img alt="Home" class="site-logo"
                                     src="themes/logo2.png">
                                <img alt="Home" class="site-logo-mobile"
                                     src="themes/logo2.png">
                        </a>
                    </div>
                    <div class="wrap-right-header">
                        <input type="checkbox" id="mobile-menu-cb" name="mobile-menu-cb" />
                        <label class="hamburger-button" for="mobile-menu-cb">
                            <span class="hamburger-icon"></span>
                        </label>
                        <label class="hamburger-menu-mask" for="mobile-menu-cb"></label>
                        <nav class="site-menu">
                            <ul class="menu menu-main-menu">
                                <li><a href="learn.html">Learning</a>
                                </li>
                                <li><a href="/training">Training</a>
                                </li>
                                <li><a href="/fights">Fights</a>
                                </li>
                                <li><a href="/challenge">Challenge</a>
                                </li>
                                <li><a href="/evaluating">Evaluating</a>
                                </li>
                                <li><a href="discussion.html">Discussion</a>
                                </li>
                                <li><a href="/game">Game</a>
                                </li>
                                <li><a href="/sharing">Chia sẻ</a>
                                </li>
                            </ul>
                            <div class="dropdown dropdown-language">
                                <a href="#" class="dropdown-toggle btn-dark btn--language " data-toggle="dropdown"
                                    role="button" aria-haspopup="true" aria-expanded="false" title="English">
                                    <img alt="English" class="button-language btn-img flag"
                                        src="/Themes/TheCodeCampPro/Resources/Images/en.png" />
                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <span class="change-lang"
                                            data-link="/language/setLanguageLocal?name=en&redirectUrl=">
                                            <img alt="en" class="icon-language"
                                                src="/Themes/TheCodeCampPro/Resources/Images/en.png">
                                            English
                                        </span>
                                    </li>
                                    <li>
                                        <span class="change-lang"
                                            data-link="/language/setLanguageLocal?name=vn&redirectUrl=">
                                            <img alt="vn" class="icon-language"
                                                src="/Themes/TheCodeCampPro/Resources/Images/vn.png">
                                            Tiếng Việt
                                        </span>
                                    </li>
                                </ul>
                            </div>
                        </nav>


                        <ul class="site-user-menu">
                            <li class="dropdown notify">
                                <a title="Notifications" id="notify" href="#" class="dropdown-toggle"
                                    data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                    <i class="cl-icon-bell-1"></i>
                                    <span id="notification-count" class="label label-warning"></span>
                                </a>
                                <div class="dropdown-menu">
                                    <ul id="list-notify">
                                        <li class="header">Notifications</li>
                                    </ul>
                                    <div id="view-all-notify"><a href="/notification">View all</a></div>
                                </div>
                            </li>
                            <li class="dropdown header-user-profile">
                                <a href="#" class="dropdown-toggle btn--profile" title="Info">
                                    <img alt="" class="btn--img" src="">
                                </a>
                                <ul class="dropdown-menu dropdown-menu-user">
                                    <li><a href="profile.html">My information</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="/profile/11606613">My profile</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="/classmanagement">My class</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a id="cick-logoff" href="login.html">Sign out</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </header>
            </article>
            <article class="widget-navigation widget-bread-cumps-widget widget">

                <div class="fb-customerchat" attribution=setup_tool page_id="2254662768188202"
                    greeting_dialog_display="hide">
                </div>
            </article>
        </div>
    </div>
    <div class="content">
        <div class="container">
            <div class="row align-items-stretch no-gutters contact-wrap">
                <div class="col-md-12">
                    <div class="form h-100">
                        <h3>Contact us</h3>
                        <form class="mb-5" method="post" id="contactForm" name="contactForm" action="https://formspree.io/f/xayzjavv">
                            <div class="row">
                                <div class="col-md-6 form-group mb-3">
<!--                                    <label for="" class="col-form-label">Name </label>-->
                                    <input type="text" class="form-control" name="name" id="name"
                                           placeholder="Your name" value="${sessionScope.account.getUser_name()}">
                                </div>
                                <div class="col-md-6 form-group mb-3">
<!--                                    <label for="" class="col-form-label">Email </label>-->
                                    <input type="text" class="form-control" name="email" id="email"
                                           placeholder="Your email" value="${sessionScope.account.getUser_mail()}">
                                </div>
                            </div>
                            <div class="row">

                            </div>
                            <div class="row">
                                <div class="col-md-12 form-group mb-3">
                                    <label for="message" class="col-form-label">Message </label>
                                    <textarea class="form-control" name="message" id="message" cols="30" rows="4"
                                        placeholder="Write your message"></textarea>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 form-group">
                                    <input type="submit" value="Send Message"
                                        class="btn btn-primary rounded-0 py-2 px-4">
                                    <span class="submitting"></span>
                                </div>
                            </div>
                        </form> 
                        <div id="form-message-warning mt-4"></div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer id="footer" class="group codecamp-footer">
        <div class="zone zone-footer">
            <div class=" main-footer">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-md-6 introduction footer-column">
                            <div class="logo-codelearn">
                                <img src="themes/logo2.png" alt="CodeLearn" />
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
                            <p><a href="/cdn-cgi/l/email-protection#196a6c6969766b6d597a767d7c757c786b77377076"
                                    title="Contact us">Contact us</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 right-reserved">
                <span class="powerby">
                    <img src="/Themes/TheCodeCampPro/Resources/Images/logo-fpt-footer.svg" alt="Fpt software"
                        class="fpt-logo">
                    Powered by <a href="/">CodeLearn</a>
                </span>
                <span class="copyright">&#169; 2023.</span>
                <span>All Rights Reserved. rev 11/12/2022 11:15:54 AM</span>
            </div>
        </div>
    </footer>
</body>

</html>