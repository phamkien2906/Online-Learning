<%-- 
    Document   : home
    Created on : Oct 1, 2022, 9:47:14 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8" />
        <meta name="description"
              content="Free online courses with certification. CodeLearn has several courses with the most popular programming language such as Python, C#, Java, etc." />
        <meta name="author" content="CodeLearn" />
        <link rel="shortcut icon" href="/Themes/TheCodeCampPro/Resources/Images/content/codelearn-icon.png" />
        <link rel="apple-touch-icon" href="/Themes/TheCodeCampPro/Resources/Images/content/codelearn-icon.png" />
        <link rel="canonical" href="/learning" />
        <link rel="alternate" hreflang="vi" href="https://codelearn.io/learning" />
        <link rel="alternate" hreflang="en-US" href="https://codelearn.io/learning" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1,user-scalable=0" />
        <title>Learn to code with different courses from basic to advanced</title>

        <script async src="/js/account.js"></script>
        <script>
            var isGetNotification = true;
            var isNotCountComment = false;

            var s3Storage = '';
            var resourcePath = '/Themes/TheCodeCampPro/Resources';
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

            if ('https://codelearn.io' == location.origin.toLocaleLowerCase()) {
                window.dataLayer = window.dataLayer || [];
                function gtag() {
                    dataLayer.push(arguments);
                }

                gtag('js', new Date());
                gtag('config', 'UA-141685371-1');
                gtag('config', 'USER_MANAGEMENT');
                gtag('set', {'user_id': 'CodeLearn-Anonymous'});

                // Measure Google Ads conversions
                gtag('event', 'conversion', {
                    'send_to': 'USER_MANAGEMENT/CodeLearn-Anonymous',
                });

                window['GoogleAnalyticsObject'] = 'ga';
                window['ga'] = window['ga'] || function () {
                    (window['ga'].q = window['ga'].q || []).push(arguments)
                };
                ga('set', 'userId', 'CodeLearn-Anonymous');
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

        <link href="css/learn.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="font/fontawesome-free-6.3.0-web/fontawesome-free-6.3.0-web/css/all.css"/>

        <script src="js/account1.js" type="text/javascript"></script>
        <script src="js/account2.js" type="text/javascript"></script>
        <script src="js/account3.js" type="text/javascript"></script>
        <script src="js/account4.js" type="text/javascript"></script>
        <script src="js/account5.js" type="text/javascript"></script>
        <script src="js/account6.js" type="text/javascript"></script>
        <script src="js/account7.js" type="text/javascript"></script>      
    </head>

    <body class="hold-transition site-body skin-sku-light layout-top-nav learning ">
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
                                    <li><a href="Contact.jsp">Contact</a>
                                    </li>
                                    <c:if test="${sessionScope.account.getUser_role()==0}">
                                        <li><a href="manage">Manage</a>
                                        </li>
                                    </c:if>
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
                                            <li><a href="information">My information</a></li>
                                            <li role="separator" class="divider"></li>
                                                <c:set var="link" value="profile?id=${user.user_id}"></c:set>
                                            <li><a href="${link}">My profile</a></li>
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
        <br/>
        <br/>
        <br/>

        <main id="layout-main" class="group">
            <div id="layout-content" class="group">
                <div id="content" class="group">
                    <div class="zone zone-content">
                        
                        <div class="container">
                            <c:set value="0" var="num"></c:set> 
                            <c:forEach items="${requestScope.list}" var="entry">
                                <c:set value="${num+1}" var="num"></c:set> 
                                <ul>Question ${num} : ${entry.question}
                                    <c:choose>
                                        <c:when test="${entry.choose=='1'}">
                                            <li style="color: #0069d9"><b>${entry.choice1}</b></li>
                                            <li>${entry.choice2}</li>
                                            <li>${entry.choice3}</li>
                                            <li>${entry.choice4}</li>
                                            <li>${entry.choice5}</li>
                                            </c:when>
                                            <c:when test="${entry.choose=='2'}">
                                            <li>${entry.choice1}</li>
                                            <li style="color: #0069d9"><b>${entry.choice2}</b></li>
                                            <li>${entry.choice3}</li>
                                            <li>${entry.choice4}</li>
                                            <li>${entry.choice5}</li>
                                            </c:when>
                                            <c:when test="${entry.choose=='3'}">
                                            <li>${entry.choice1}</li>
                                            <li>${entry.choice2}</li>
                                            <li style="color: #0069d9"><b>${entry.choice3}</b></li>
                                            <li>${entry.choice4}</li>
                                            <li>${entry.choice5}</li>
                                            </c:when>
                                            <c:when test="${entry.choose=='4'}">
                                            <li>${entry.choice1}</li>
                                            <li>${entry.choice2}</li>
                                            <li>${entry.choice3}</li>
                                            <li style="color: #0069d9"><b>${entry.choice4}</b></li>
                                            <li>${entry.choice5}</li>
                                            </c:when>
                                            <c:when test="${entry.choose=='5'}">
                                            <li>${entry.choice1}</li>
                                            <li>${entry.choice2}</li>
                                            <li>${entry.choice3}</li>
                                            <li>${entry.choice4}</li>
                                            <li style="color: #0069d9"><b>${entry.choice5}</b></li>
                                                </c:when>
                                                <c:otherwise>
                                            <li>${entry.choice1}</li>
                                            <li>${entry.choice2}</li>
                                            <li>${entry.choice3}</li>
                                            <li>${entry.choice4}</li>
                                            <li>${entry.choice5}</li>
                                            </c:otherwise>
                                        </c:choose> 

                                    <li style="color: red">CORRECT Answer: ${entry.correct}</li>

                                </ul>
                            </c:forEach>
                            <br>
                            <a href="course?id=${requestScope.id}">
                                <button type="submit" class="btn btn-secondary"
                                        id="single_button63eb98f97423a18" title="">Continue the practice</button>
                            </a>
                        </div>

                        <div class="modal fade" id="buy-now-support" role="dialog">
                            <div class="modal-dialog">

                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal"></button>
                                        <h4 class="modal-title">Support Codelearn</h4>
                                    </div>
                                    <div class="modal-body">
                                        <p>Please contact email: <a
                                                href="/cdn-cgi/l/email-protection#90e3e5e0e0ffe2e4d0f3fff4f5fcf5f1e2febef9ff"><span
                                                    class="__cf_email__"
                                                    data-cfemail="32414742425d404672515d56575e5753405c1c5b5d">[email&#160;protected]</span></a>
                                            for support.</p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <script data-cfasync="false"
                        src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
                        <script>
                                                    //Ẩn breadcum ở trang danh sách khóa học
                                                    $('#layout-navigation .widget-bread-cumps-widget').css('display', 'none');
                        </script>
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
                                         alt="" />
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
                    <span>All Rights Reserved. rev 11/12/2022 11:15:53 AM</span>
                </div>
            </div>
        </footer>
        <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
        <script src="/Themes/TheCodeCampPro/Resources/Lib/slick/slick.min.js?fileHash=g5vMajDezqU32iaWKxPsqg%3d%3d"
        type="text/javascript"></script>
        <script
            src="/Themes/TheCodeCampPro/Resources/App/Scripts/notification/notification.min.js?fileHash=KTzMdkPU39hUOQ5OrgzArg%3d%3d"
        type="text/javascript"></script>

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

                                    <a href="https://accounts.google.com/o/oauth2/auth?scope=profile&redirect_uri=http://localhost:9999/OnlineLearning/LoginGoogleHandler&response_type=code&client_id=132232716347-4mei2t22s3sups70fqi7u2ub30mrv5nr.apps.googleusercontent.com&approval_prompt=force" target="_blank" class="px-2">
                                        <button class="btn btn-default btn-block btn--google icon-left" id="googleSignIn">
                                            <i class="fa-brands fa-google" aria-hidden="true"></i>
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

        <noscript>
        <img height="1" width="1" style="display:none" alt=""
             src="https://www.facebook.com/tr?id=700313553710795&ev=PageView&noscript=1" />
        </noscript>
    </body>
</html>

