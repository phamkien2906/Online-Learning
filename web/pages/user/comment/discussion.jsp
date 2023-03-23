<%-- 
    Document   : discussion
    Created on : Jan 26, 2023, 5:05:19 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="description"
              content="An online community for developers to share programming knowledge, give question and get answer from professional and enthusiasist programmers." />
        <meta name="author" content="CodeLearn" />
        <!--        <link rel="shortcut icon" href="/Themes/TheCodeCampPro/Resources/Images/content/codelearn-icon.png" />
                <link rel="apple-touch-icon" href="/Themes/TheCodeCampPro/Resources/Images/content/codelearn-icon.png" />-->
        <link rel="canonical" href="/discussion" />
        <link rel="alternate" hreflang="vi" href="https://codelearn.io/discussion" />
        <link rel="alternate" hreflang="en-US" href="https://codelearn.io/discussion" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1,user-scalable=0" />
        <title>A question and anwser site about IT for developers</title>
        <link rel="stylesheet" href="font/fontawesome-free-6.3.0-web/fontawesome-free-6.3.0-web/css/all.css"/>

        <script>
            var isGetNotification = true;
            var isNotCountComment = false;

            var s3Storage = '';
            var resourcePath = '';
            var strAuthen = '';
            var faceId = '';
            var isLoadedFacebook = 'False';

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


            window.fbAsyncInit = function () {
                FB.init({
                    appId: faceId,
                    xfbml: true,
                    version: 'v11.0'
                });
                FB.AppEvents.logPageView();
                isLoadedFacebook = true;
            };

            (function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) {
                    return;
                }
                js = d.createElement(s);
                js.id = id;
                js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));

        </script>
        <link href="css/discussion.css" rel="stylesheet" type="text/css" />
        <script src="js/account1.js" type="text/javascript"></script>
        <script src="js/account2.js" type="text/javascript"></script>
        <script src="js/account3.js" type="text/javascript"></script>
        <script src="js/account4.js" type="text/javascript"></script>
        <script src="js/account5.js" type="text/javascript"></script>
        <script src="js/account6.js" type="text/javascript"></script>
        <script src="js/account7.js" type="text/javascript"></script>
    </head>

    <body class="hold-transition site-body skin-sku-light layout-top-nav discussion ">
        <script>
            //<![CDATA[
            var LANG_CURRENT = "en";
            const CurrentUserId = 11606613;
            const NOTTIFY_USER_ACCESSKEY = 'nottifyAccessKey';
            const IS_ADMIN = false;

            PKLService.init({strVersion: '1937254220', strLangCode: 'en', IsHasLogin: true, url: location.origin});
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
                                    <li><a href="home">Learning</a>
                                    </li>
                                    <li><a href="/training">Training</a>
                                    </li>
                                    <li><a href="discussion">Discussion</a>
                                    </li>
                                    <li><a href="/game">Contact</a>
                                    </li>
                                </ul>
                                <div class="dropdown dropdown-language">
                                    <a href="#" class="dropdown-toggle btn-dark btn--language " data-toggle="dropdown"
                                       role="button" aria-haspopup="true" aria-expanded="false" title="English">
                                        <img alt="English" class="button-language btn-img flag"
                                             src="themes/en.png" />
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <span class="change-lang"
                                                  data-link="/language/setLanguageLocal?name=en&redirectUrl=">
                                                <img alt="en" class="icon-language"
                                                     src="themes/en.png">
                                                English
                                            </span>
                                        </li>
                                        <li>
                                            <span class="change-lang"
                                                  data-link="/language/setLanguageLocal?name=vn&redirectUrl=">
                                                <img alt="vn" class="icon-language"
                                                     src="themes/vn.png">
                                                Tiếng Việt
                                            </span>
                                        </li>
                                    </ul>
                                </div>
                            </nav>

                            <c:if test="${sessionScope.account==null}">
                                <ul class="site-user-menu">
                                    <li>
                                        <button id="login-header" class="btn btn-login" data-toggle="modal"
                                                data-target="#loginModal" onclick="openModal('login')">Login</button>
                                        <button class="btn" data-toggle="modal" data-target="#loginModal"
                                                onclick="openModal('signup')">Register</button>
                                    </li>
                                </ul>
                            </c:if>
                            <c:if test="${(sessionScope.account!=null)}">
                                <ul class="site-user-menu">
                                    <li class="dropdown notify">
                                        <a title="Notifications" id="notify" href="#" class="dropdown-toggle"
                                           data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                            <i class="fa-regular fa-bell"></i>
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
                                            <c:set var="user" value="${sessionScope.account}"></c:set>
                                                <img alt="" class="btn--img"
                                                     src="upload/${user.user_avatar}">
                                        </a>
                                        <ul class="dropdown-menu dropdown-menu-user">
                                            <li><a href="">My information</a></li>
                                            <li role="separator" class="divider"></li>
                                            <li><a href="">My profile</a></li>
                                            <li role="separator" class="divider"></li>
                                            <li><a id="cick-logoff" href="logout">Sign out</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </c:if>

                        </div>
                    </header>
                </article>
                <article class="widget-navigation widget-bread-cumps-widget widget">
                    <nav aria-label="breadcrumb">
                        <div class="container">
                        </div>
                    </nav>

                    <div class="fb-customerchat" attribution=setup_tool page_id="2254662768188202"
                         greeting_dialog_display="hide">
                    </div>
                </article>
            </div>
        </div>
        <main id="layout-main" class="group">
            <div id="layout-content" class="group">
                <div id="content" class="group">
                    <div class="zone zone-content">
                        <h1 class="hide">A question and anwser site for developers.</h1>
                        <div class="container" style="margin-top: 20px">
                            <div class="row">
                                <div class="col-md-6 col-sm-8 col-xs-12">
                                    <div class='search-box'>
                                        <input id="search-box" type="text" placeholder="Search...">
                                        <span class="input-group-addon btn btn-filter"><i class="fa-solid fa-magnifying-glass"></i></span>
                                    </div>
                                </div>
                                <c:if test="${sessionScope.account !=null}"> 
                                    <div class="col-md-6  col-sm-4  col-xs-12" style="text-align: right">
                                        <a href="post" class="btn btn-success standard-button create">
                                            <i class="fa-regular fa-plus"></i>
                                            Create new discussion
                                        </a>
                                    </div>
                                </c:if>
                                <c:if test="${sessionScope.account ==null}">
                                    <div class="col-md-6  col-sm-4  col-xs-12" style="text-align: right">
                                        <a href="javascript:void(0)" data-toggle="modal" data-target="#loginModal" onclick="openModal('login')" id="not-auth" style="display: inline-block; color:red; margin: 10px 0px; font-style: italic">Please login to post a new topic</a>
                                    </div>
                                </c:if>
                            </div>
                            <div class="row">
                                <div id="threads-container" class="col-md-12">
                                    <div class="data-gridview-paging">
                                        <c:forEach items="${requestScope.discussion}" var="i" >
                                            <div class="forum-thread">
                                                <div class="forum-thread-item">
                                                    <div class="user-info-container">
                                                        <div class="user-col"><a href="topic?id=${i.discussion_id}">
                                                                <div class="avatars"><img
                                                                        class="user-avatar"
                                                                        src="upload/${i.user.user_avatar}">
                                                                </div>
                                                            </a>

                                                        </div>

                                                        <div><a href="topic?id=${i.discussion_id}"
                                                                class="forum-thread-title">Discussion about content</a>
                                                            <div>
                                                                <div><span class="forum-thread-content">${i.discussion_detail} </span></div>
                                                                <c:if test="${i.discussion_image !=  null && i.discussion_image != 'Not found file'}" >
                                                                    <img style="width:90px;height:100px" src="upload/${i.discussion_image}" />
                                                                </c:if>
                                                            </div>

                                                            <div class="thread-summary">
                                                                <div>By <span class="created-by"><a
                                                                            href="/profile?id=${i.user.user_id}">${i.user.getUser_name()}</a></span><a
                                                                        href="/profile/21378411"><span
                                                                            class="category hide">null</span></a>Last update:
                                                                    <span class="last-update">${i.timediff}</span></div>
                                                            </div>
                                                        </div>
                                                        <div class="right-side-info"> <span class="shares-count hide">0</span>
                                                            <c:set var="count" value="0"></c:set>
                                                            <c:forEach items="${requestScope.replydiscussion}" var="j">
                                                                <c:if test="${j.discussion_reply== i.discussion_id}">
                                                                    <c:set var="count" value="${count+1}"></c:set>
                                                                </c:if>
                                                            </c:forEach>
                                                            <span
                                                                class="fa-regular fa-comment"></span>
                                                            <span class="posts-count">${count}</span> 
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>

                                </div>
                                <div class="col-md-12 text-center paging-common">
                                    <ul class="pagination" style="">
                                        <li class="disabled"><a class="page-link" data="--"><i
                                                    class="cl-icon-angle-double-left"></i></a></li>
                                        <li class="disabled"><a class="page-link" data="-"><i
                                                    class="cl-icon-angle-left"></i></a></li>
                                        <li class="active"><a class="page-link number" data="1">1</a></li>
                                        <li class="page-item"><a class="page-link number" data="2">2</a></li>
                                        <li class="page-item"><a class="page-link number" data="3">3</a></li>
                                        <li class="page-item"><a class="page-link" data="+"><i
                                                    class="cl-icon-angle-right"></i></a></li>
                                        <li class="page-item"><a class="page-link" data="++"><i
                                                    class="cl-icon-angle-double-right"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <footer id="footer" class="group codecamp-footer">
        <div class="zone zone-footer">
            <div class=" main-footer">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-md-6 introduction footer-column">
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
    <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
    <script src="/Themes/TheCodeCampPro/Resources/App/Scripts/forum/forum.js?fileHash=ekjgLjVimMNsdxQAuBS%2bEw%3d%3d"
    type="text/javascript"></script>
    <script
        src="/Themes/TheCodeCampPro/Resources/App/Scripts/notification/notification.min.js?fileHash=KTzMdkPU39hUOQ5OrgzArg%3d%3d"
    type="text/javascript"></script>
    <script type="text/javascript">
                                            $(function () {
                                                translate.onLoad(function () {
                                                    $.UseForum({
                                                        threadsContainerSelector: "#threads-container",
                                                        getForumThreadsUri: "/Discussion/GetForumThreads",
                                                        searchInputSelector: "#search-box",
                                                        manager: 'False'
                                                    });
                                                });
                                            });
    </script>

    <div id="fb-root"></div>
    <div class="modal fade modal-center" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModal">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-body login-modal">
                    <div>

                        <ul class="nav nav-tabs nav-fill" role="tablist">
                            <li role="presentation" class="nav-item">
                                <a class="nav-link" data-target="#login" aria-controls="login" role="tab"
                                   data-toggle="tab" onclick="openModal('login')">Login</a>
                            </li>
                            <li role="presentation" class="nav-item active">
                                <a class="nav-link" data-target="#signup" aria-controls="signup" role="tab"
                                   data-toggle="tab" onclick="openModal('signup')">Register</a>
                            </li>
                        </ul>

                        <div class="tab-content">
                            <h4 class="header-card">with your social network</h4>
                            <div class="signin-options">
                                <button class="btn btn-default btn-block btn--microsoft icon-left"
                                        onclick="window.location.replace('https://oauth.codelearn.io/Home/SignIn')"
                                        title="Login to FSoft account via Microsoft">
                                    <i class="cl-icon-windows" aria-hidden="true"></i>
                                    <span>Microsoft</span>
                                </button>
                                <button class="btn btn-default btn-block btn--facebook icon-left"
                                        onclick="facebookSignIn()">
                                    <i class="cl-icon-facebook-f" aria-hidden="true"></i>
                                    <span>Facebook</span>
                                </button>
                                <a href="https://accounts.google.com/o/oauth2/auth?scope=profile&redirect_uri=http://localhost:9999/OnlineLearning/LoginGoogleHandler&response_type=code&client_id=132232716347-4mei2t22s3sups70fqi7u2ub30mrv5nr.apps.googleusercontent.com&approval_prompt=force" target="_blank" class="px-2">
                                    <button class="btn btn-default btn-block btn--google icon-left" id="googleSignIn">
                                        <i class="cl-icon-google-full" aria-hidden="true"></i>
                                        <span>Google</span>
                                    </button>
                                </a>
                            </div>
                            <p class="label-or text-center">OR</p>
                            <div role="tabpanel" class="tab-pane " id="login">
                                <c:set var="cookie" value="${pageContext.request.cookies}"></c:set>
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
                            <div role="tabpanel" class="tab-pane active" id="signup">
                                <form id="frmSignup" action="signup" method="post">
                                    <div class="form-group">
                                        <input name="suser" type="text" class="form-control" placeholder="User name"
                                               required />
                                    </div>
                                    <div class="form-group">
                                        <input name="spass" type="password" class="form-control" placeholder="Enter your Password"
                                               required/>
                                    </div>
                                    <div class="form-group">
                                        <input name="re-pass" type="password" class="form-control"
                                               placeholder="Confirm your password" required />
                                    </div>
                                    <!--                                        <div class="form-check">
                                                                                <div class="checkbox-area">
                                                                                    <input name="cbAgree" type="checkbox" value="1" class="form-check-input"
                                                                                           id="cbAgree" data-error="#cbAgree-error" />
                                                                                    <label class="form-check-label" for="cbAgree">
                                                                                        I agree to the <a href="/terms" target="_blank">Terms and Conditions</a>
                                                                                        of CodeLearn
                                                                                    </label>
                                                                                </div>
                                                                                <div id="cbAgree-error"></div>
                                                                            </div>-->
                                    <button type="submit"
                                            class="btn btn-default btn-block btn-blue btn-signup">Register</button>
                                    <div class="col-md-12 registered-forgot" style="margin-bottom: 0;">
                                        <div class="col-md-6 text-left">
                                            <a data-target="#login" aria-controls="login" role="tab" data-toggle="tab"
                                               onclick="openModal('login')">
                                                Already registered? Login
                                            </a>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

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
