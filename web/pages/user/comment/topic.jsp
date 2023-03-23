<%-- 
    Document   : topic
    Created on : Feb 28, 2023, 4:18:53 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="description"
              content="CodeLearn is an online platform developed by FPT Software company that helps users to learn, practice coding skills and join the developer community" />
        <meta name="author" content="CodeLearn" />

        <script>
            var isGetNotification = true;
            var isNotCountComment = false;

            var s3Storage = '';
            var resourcePath = '';
            var strAuthen = '';
            var faceId = '';
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
                gtag('set', {'user_id': 'ducnguyen11042002@gmail.com'});

                // Measure Google Ads conversions
                gtag('event', 'conversion', {
                    'send_to': 'USER_MANAGEMENT/ducnguyen11042002@gmail.com',
                });

                window['GoogleAnalyticsObject'] = 'ga';
                window['ga'] = window['ga'] || function () {
                    (window['ga'].q = window['ga'].q || []).push(arguments)
                };
                ga('set', 'userId', 'ducnguyen11042002@gmail.com');
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

        <link href="css/repcomment.css"
              rel="stylesheet" type="text/css" />
        <script src="js/rep1.js"
        type="text/javascript"></script>
        <script src="js/rep2.js"
        type="text/javascript"></script>
        <script src="js/rep3.js"
        type="text/javascript"></script>
        <script src="js/rep4.js"
        type="text/javascript"></script>
        <script src="js/rep5.js"
        type="text/javascript"></script>
        <script
            src="js/rep6.js"
        type="text/javascript"></script>
        <script src="js/rep7.js"
        type="text/javascript"></script>
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
                                    <a href="#" class="dropdown-toggle btn--profile" title="">
                                        <c:set var="user" value="${sessionScope.account}"></c:set>
                                            <img alt="" class="btn--img"
                                                 src="upload/${user.user_avatar}">
                                    </a>
                                    <ul class="dropdown-menu dropdown-menu-user">
                                        <li><a href="/user/information">My information</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="/profile/11606613">My profile</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li><a id="cick-logoff" href="/users/account/logoff">Sign out</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </header>
                </article>
                <article class="widget-navigation widget-bread-cumps-widget widget">
                    <nav aria-label="breadcrumb">
                        <div class="container">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="home">Home</a></li>
                                <li class="breadcrumb-item"><a href="discussion">Discussion</a></li>
                                <!--<li class="breadcrumb-item"><a href="discussion/topic/21378433">Topic</a></li>-->
                            </ol>
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
                        <input id="rootSiteUrl" name="rootSiteUrl" type="hidden" value="/" />
                        <div id="content-detail" class="container">
                            <div class="row">
                                <c:set var="d" value="${requestScope.discusion}"></c:set>
                                    <div class="col-md-12">
                                        <table class="forum-thread-detail">
                                            <tr>
                                                <td rowspan="4" class="user-col">
                                                    <div class="avatars">

                                                        <img id="op-avatar" class="user-avatar"
                                                             src="upload/${d.user.user_avatar}" />
                                                </div>

                                            </td>
                                            <td class="forum-thread-title">Discussion</td>
                                            <td>
                                            </td>
                                        </tr>
                                        <tr class="thread-summary">
                                            <td>By <span class="op"><a href="" id="user-cv-link">${d.getUser().getUser_name()}</a></span><span
                                                    class="category hide"></span>Last update: <span class="last-update">${d.timediff}</span></td>
                                        </tr>
                                        <tr>
                                            <td class="forum-thread-content" colspan="2">
                                                <p
                                                    style="font: 14px/18.2px Verdana, Arial, Helvetica, sans-serif; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px; line-height: 18.2px; margin: 14px 0px; margin-bottom: 14px; margin-top: 14px; width: auto">
                                                    ${d.discussion_detail}</p>
                                                    <c:if test="${d.discussion_image !=  null && d.discussion_image != 'Not found file'}" >
                                                    <img style="width:60%;height:50%" src="upload/${d.discussion_image}" />
                                                </c:if>
                                            </td>
                                        </tr>
                                        <tr>

                                            <td>
                                                <span class='share-button hide' id="shareButton"><img
                                                        src='/Themes/TheCodeCampPro/Resources/Images/forum/Share.svg'
                                                        class='forum-posts-count-icon' /> 0</span>
                                            </td>
                                            <td>
                                                <span class='view-button hide' id="viewButton"><img
                                                        src='/Themes/TheCodeCampPro/Resources/Images/forum/View.svg'
                                                        class='forum-posts-count-icon' /> 0</span>
                                            </td>
                                            <td>
                                                <span class='comment-button hide' id="commentButton"><img
                                                        src='/Themes/TheCodeCampPro/Resources/Images/forum/Comment.svg'
                                                        class='forum-posts-count-icon' /> 0</span>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <div class="row" id="forum-top-level-input">
                                <div class="col-md-12">
                                    <table style="width: 100%">
                                        <tr>
                                            <td class="user-col" rowspan="2">
                                                <div class="avatars">
                                                    <c:set var="user" value="${sessionScope.account}"></c:set>
                                                    <img src="upload/${user.user_avatar}"
                                                         class="user-avatar" />
                                                </div>
                                            </td>
                                            <td>
                                                <div id="top-level-input">
                                                    <form id="frm-fr" action="topic" method="post" >
                                                        <div class="form-group" hidden>
                                                            <input name="id" type="text" class="form-control" id="Id" value="${d.discussion_id}" />
                                                        </div>
                                                        <div class="form-group">

                                                            <textarea id="fr-content" class="form-control tinymce" name="discussion"></textarea>
                                                        </div>
                                                        <label>${errorReply}</label>

                                                        <button
                                                            class="btn btn-success standard-button">Post</button>

                                                    </form>
                                                </div>
                                            </td>
                                        </tr>
                                        <!--                                        <tr>
                                                                                    
                                                                                </tr>-->
                                    </table>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <c:set var="count" value="0"></c:set>
                                    <c:forEach items="${requestScope.replydiscussion}" var="j">
                                        <c:if test="${j.discussion_reply== d.discussion_id}">
                                            <c:set var="count" value="${count+1}"></c:set>
                                        </c:if>
                                    </c:forEach>
                                    <div class="forum total-comments-section" id="total-comments-section">
                                        <span id='total-comments'></span>${count} comments
                                    </div>
                                    <div id="posts" class="loaded-all">
                                        <c:forEach items="${requestScope.replydiscussion}" var="j">
                                            <c:if test="${j.discussion_reply== d.discussion_id}">
                                                <div class="comment-block" style="display: block;">
                                                    <div class="user-avatar">
                                                        <div class="avatars">
                                                            <img
                                                                src="upload/${j.user.user_avatar}">
                                                        </div>
                                                    </div>
                                                    <div class="comment-main">
                                                        <div class="comment-user"><a href="/profile/21192425"
                                                                                     class="href-user">${j.user.getUser_name()}</a> <span
                                                                                     class="modified-time">${j.timediff}</span></div>
                                                        <div class="comment-content">
                                                            <p
                                                                style="font: 14px/18.2px Verdana, Arial, Helvetica, sans-serif; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px; line-height: 18.2px; margin: 14px 0px; margin-bottom: 14px; margin-top: 14px; width: auto">
                                                                ${j.discussion_detail}</p>
                                                        </div>
                                                        <div class="comment-message for-edit"></div>
                                                        <div class="view-more">View more</div>
                                                        <div class="comment-footer">
                                                            <div class="left-parts action-buttons"><span class="hide-message">This
                                                                    comment has been hidden. </span>
                                                                <div class="user-action-buttons"><span class="likeButton"><i
                                                                            class="cl-icon-thumbs-up-1 up" id="img_21192554"></i>
                                                                        <span id="countVoteLike_21192554" class="count-vote">
                                                                            0</span></span><span class="disLikeButton"><i
                                                                            class="cl-icon-thumbs-down-1 down"
                                                                            id="imgDisLike_21192554"></i><span
                                                                            id="countVoteDisLike_21192554" class="count-vote">
                                                                            0</span> </span><span
                                                                        class="footer-button reply-button"><i
                                                                            class="cl-icon-reply-full reply-img"></i>Reply</span>
                                                                </div>
                                                            </div>
                                                            <div class="right-parts"><button
                                                                    class="btn btn-success standard-button save-button"
                                                                    style="display: none;">Save</button> </div>
                                                        </div>
                                                        <div class="replies"></div>
                                                        <div class="edit-box reply-box">
                                                            <form id="frm-fr" action="d" method="get" enctype="multipart/form-data">
                                                                <div class="form-group" hidden>
                                                                    <input name="Id" type="text" class="form-control" id="Id" />
                                                                </div>
                                                                <div class="form-group">

                                                                    <textarea id="fr-content" class="form-control tinymce" name="discussion"></textarea>
                                                                </div>
                                                                <button
                                                                    class="btn btn-success standard-button reply-post-button">Post</button>
                                                                    <br><label style="color: red">${errorReply}</label>
                                                            </form>

                                                            <div placeholder="Write your comment" class="with-placeholder"
                                                                 id="comment-box" contenteditable="" style="display: none;"
                                                                 aria-hidden="true"></div>
                                                            <div class="waiting-indicator"><span
                                                                    class="glyphicon glyphicon-refresh"></span></div>
                                                        </div>
                                                        <div class="comment-message"></div>
                                                    </div>
                                                </div>
                                            </c:if>
                                        </c:forEach>
                                        <div class="view-more-comments-button-container">
                                            <div class="view-more-comments-button btn btn-default"><span
                                                    class="view-more-text">View more</span><span
                                                    class="glyphicon glyphicon-refresh"></span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="break-line"></div>
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
                                <p><a href="/cdn-cgi/l/email-protection#b8cbcdc8c8d7caccf8dbd7dcddd4ddd9cad696d1d7"
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



        <div id="fb-root"></div>

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
