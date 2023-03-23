<%-- 
    Document   : new
    Created on : Mar 14, 2023, 1:46:02 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1,user-scalable=0" />
        <title>Profile</title>



        <script async src="/js/MyProfile.js"></script>
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

        <script>
            !function (f, b, e, v, n, t, s) {
                if (f.fbq)
                    return;
                n = f.fbq = function () {
                    n.callMethod ?
                            n.callMethod.apply(n, arguments) : n.queue.push(arguments)
                };
                if (!f._fbq)
                    f._fbq = n;
                n.push = n;
                n.loaded = !0;
                n.version = '2.0';
                n.queue = [];
                t = b.createElement(e);
                t.async = !0;
                t.src = v;
                s = b.getElementsByTagName(e)[0];
                s.parentNode.insertBefore(t, s)
            }(window, document, 'script',
                    'https://connect.facebook.net/en_US/fbevents.js');
            fbq('init', '700313553710795');
            fbq('track', 'PageView');
        </script>
        <link rel="stylesheet" href="font/fontawesome-free-6.3.0-web/fontawesome-free-6.3.0-web/css/all.css"/>

        <link href="css/MyProfile.css" rel="stylesheet" type="text/css" />
        <script src="js/MyProfile1.js" type="text/javascript"></script>
        <script src="js/MyProfile2.js" type="text/javascript"></script>
        <script src="js/MyProfile3.js" type="text/javascript"></script>
        <script src="js/MyProfile4.js" type="text/javascript"></script>
        <script src="js/MyProfile5.js" type="text/javascript"></script>
        <script src="js/MyProfile6.js" type="text/javascript"></script>
        <script src="js/MyProfile7.js" type="text/javascript"></script>
    </head>

    <body class="hold-transition site-body skin-sku-light layout-top-nav profile ">
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
        <c:set var="profile" value="${requestScope.user}"></c:set>
            <main id="layout-main" class="group">
                <div id="layout-content" class="group">
                    <div id="content" class="group">
                        <div class="zone zone-content">
                            <div id="my-cv" class="container user-cv">
                                <div id="cv-left" class="col-md-3 col-sm-12 white">
                                    <div id="user-profile">
                                        <div class="user-avatar">
                                            <img id="img-user"
                                                 src="upload/${profile.user_avatar}">
                                    </div>
                                    <span id="user-name" title="${profile.user_name}">${profile.user_name}</span>

                                </div>
                                <div class="break-line"></div>
                                <div id="infomation">
                                    <h3>Information</h3>
                                    <ul>
                                        <li><span><i class="fa-solid fa-user"></i></span>
                                            <span>${profile.user_fullname}</span>
                                        </li>
                                        <li><span><i class="fa-solid fa-location-dot"></i></span> 
                                            <span>${profile.user_address} -
                                                ${profile.user_country}</span></li>
                                        <li><span><i class="fa-solid fa-calendar-days"></i></span> <span>${profile.user_birthday}</span></li>
                                    </ul>
                                </div>
                                <div class="break-line"></div>
                                <div id="container-user-achievement">
                                    <h3>
                                        Achievement

                                    </h3>
                                    <ul id="user-achievement">
                                        <li class=""><i class="fa-regular fa-circle-check"></i><span>${profile.user_achievement}</span></li>
                                    </ul>
                                    <span id="more-achievement" class="hide">See more</span>
                                </div>
                                <div class="break-line"></div>
                                <div id="container-user-achievement">
                                    <h3>
                                        SUMMARY

                                    </h3>
                                    <ul id="user-achievement">
                                        <li class=""><i class="fa-regular fa-circle-check"></i><span>${profile.user_summary}</span></li>
                                    </ul>
                                    <span id="more-achievement" class="hide">See more</span>
                                </div>


                                <div class="break-line"></div>
                                <div id="skill">
                                    <div class="skill-content">
                                        <h3>RATE COURSES</h3>
                                        <ul id="skills-section" class="left-side-section">
                                            <li> <img
                                                    src="/Themes/TheCodeCampPro/Resources/Images/assets/languages/Cplus.svg">
                                                <span>C++</span>
                                                <div class="star-number pull-right" data-level="5"><span
                                                        class="star-rating"><span style="width:100%"></span></span></div>
                                            </li>
                                            <li> <img
                                                    src="/Themes/TheCodeCampPro/Resources/Images/assets/languages/Java.svg">
                                                <span>Java</span>
                                                <div class="star-number pull-right" data-level="5"><span
                                                        class="star-rating"><span style="width:100%"></span></span></div>
                                            </li>
                                            <li> <img
                                                    src="/Themes/TheCodeCampPro/Resources/Images/assets/languages/postgresql.svg">
                                                <span>Postgresql</span>
                                                <div class="star-number pull-right" data-level="3"><span
                                                        class="star-rating"><span style="width:60%"></span></span></div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="break-line"></div>

                            </div>
                            <div id="cv-right" class="col-md-9 col-sm-12">
                                <div id="section-course" class="right-section">
                                    <h3 class="right-section-header">
                                        Learning
                                        <!--<span id="h3-section-course" class="user-cv-total-records"> (13)</span>-->
<!--                                        <span id="course-dropdown" class="header-dropdown">
                                            <div class="dropdown dropdown-selector"><button class="dropdown-toggle"
                                                                                            type="button" data-toggle="dropdown"><span
                                                        class="selected-text">All</span><span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li data-value="All"><a href="javascript:void">All</a></li>
                                                    <li data-value="Created"><a href="javascript:void">Created</a></li>
                                                    <li data-value="Registered"><a href="javascript:void">Registered</a>
                                                    </li>
                                                    <li data-value="Finished"><a href="javascript:void">Finished</a></li>
                                                </ul>
                                            </div>
                                        </span>-->
<!--                                        <a href="home">
                                            <span class="course-next-span" id="course-next-span"><i
                                                    class="cl-icon-arrow-circle-right-next-full course-next-img"
                                                    id="course-next-img"
                                                    src="/Themes/TheCodeCampPro/Resources/Images/cv/next_click.svg?v=5"></i>
                                            </span>
                                        </a>-->
                                        <!--                                        <span class="course-prev-span course-prev-span-disable" id="course-prev-span"><i
                                                                                        class="cl-icon-arrow-circle-left-back-full course-prev-img"
                                                                                        id="course-prev-img"
                                                                                        src="/Themes/TheCodeCampPro/Resources/Images/cv/prev.svg?v=5"></i></span>-->
                                    </h3>
                                    <div id="course-section-body" class="row">

                                        <c:forEach var="course" items="${requestScope.listC}">
                                            <div class="col-md-4">
                                                <div class="course-item">
                                                    <div class="inner-course-item">
                                                        <div class="course-item-body"> <a
                                                                href="course?id=${course.course_id}"><img
                                                                    src="${course.getCourse_image()}"
                                                                    alt=""></a> </div>
                                                        <div class="course-item-footer">
                                                            <div class="course-rating"><span class="star-rating"><span
                                                                        style="width:88%"></span></span></div>
                                                            <div class="course-users-count"><i
                                                                    class="fa-solid fa-user"></i>${course.getCourse_number_user()}</div>
                                                            <div class="course-progress">
                                                                <div class="visual-progress" id="vprog2"> <svg
                                                                        viewBox="0 0 100 100"
                                                                        style="display: block; width: 100%;">
                                                                    <path
                                                                        d="M 50,50 m 0,-45 a 45,45 0 1 1 0,90 a 45,45 0 1 1 0,-90"
                                                                        stroke="#ccc" stroke-width="10" fill-opacity="0">
                                                                    </path>
                                                                    <path
                                                                        d="M 50,50 m 0,-45 a 45,45 0 1 1 0,90 a 45,45 0 1 1 0,-90"
                                                                        stroke="rgb(123,192,67)" stroke-width="10"
                                                                        fill-opacity="0"
                                                                        <c:set var="value" value="${282.783- course.getPercentage()*282.783/100}"></c:set>
                                                                        style="stroke-dasharray: 282.783, 282.783; stroke-dashoffset: ${value};">
                                                                    </path>
                                                                    </svg></div>
                                                                <div class="textual-progress">${course.getPercentage()}%</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                                <div id="section-contest" class="right-section hide">
                                    <h3 class="right-section-header">
                                        Fights
                                        <span id="h3-section-contest" class="user-cv-total-records"></span>
                                        <span id="contest-dropdown" class="header-dropdown"></span>
                                        <span id="contest-expand" class="contest-expand contest-expand-disable"><label
                                                class="contest-label-expand" id="contest-label-expand">More</label></span>
                                        <span id="contest-collapse" class="contest-expand contest-expand-disable"><label
                                                class="contest-label-expand">Less</label></span>
                                    </h3>
                                    <div class="row" id="contest-section-body">
                                    </div>
                                    <h3 class="right-section-header contest-expand-disable" id="h3-contest-expand-under">
                                        <span id="contest-expand-under" class="contest-expand"><label
                                                class="contest-label-expand"
                                                id="contest-label-expand-under">More</label></span>
                                    </h3>
                                </div>

                                <div class="col-md-12">
                                    <div class="home-ui-block flex forum-activity" id="user-forum"
                                         style="margin-right: 2%;">
                                        <div class="right-section-title">
                                            <h3 class="right-section-header" style="margin-top : 0">
                                                Discussion
                                            </h3>
                                        </div>
                                        <div class="table">
                                            <div class="row forum-table-row ">
                                                <div class="col-md-6 col-sm-6">
                                                    <div class="forum-table-td-question mg-10-auto">
                                                        <div>
                                                            <span class="forum-table-img question"><i
                                                                    class="cl-icon-plus"></i></span>
                                                        </div>
                                                        <div>
                                                            <div class="question-number" id="forum-table-question">${requestScope.topic}
                                                            </div>
                                                            <div class="question-text"> Topic</div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-sm-6">
                                                    <div class="forum-table-td-vote mg-10-auto">
                                                        <div>
                                                            <span class="forum-table-img vote"><i
                                                                    class="cl-icon-check"></i></span>
                                                        </div>
                                                        <div>
                                                            <div class="vote-number" id="forum-table-vote">${requestScope.post}
                                                            </div>
                                                            <div class="vote-text"> Post</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row forum-table-row ">
                                                <div class="col-md-6 col-sm-6">
                                                    <div class="forum-table-td-like mg-10-auto">
                                                        <div>
                                                            <span class="forum-table-img like"><i
                                                                    class="cl-icon-thumbs-up"></i></span>
                                                        </div>
                                                        <div>
                                                            <div class="like-number" id="forum-table-like">0
                                                            </div>
                                                            <div class="like-text">Like</div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-sm-6">
                                                    <div class="forum-table-td-comment mg-10-auto">
                                                        <div>
                                                            <span class="forum-table-img comment"><i
                                                                    class="cl-icon-comment-alt-dots"></i></span>
                                                        </div>
                                                        <div>
                                                            <div class="comment-number" id="forum-table-comment">${requestScope.comment}
                                                            </div>
                                                            <div class="comment-text">Comment</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="space"></div>

                        <div class="modal fade" id="mode-delete-education" role="dialog">
                            <div class="modal-dialog">

                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h4 class="modal-title">Confirmation</h4>
                                    </div>
                                    <div class="modal-body">
                                        <span>Are you sure you want to delete this information?</span>
                                    </div>
                                    <div class="modal-footer">
                                        <a id="delete-education" href="javascript:void(0)" class="btn btn-primary"
                                           data-dismiss="modal">Yes</a>
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="modal fade" id="mode-delete-exp" role="dialog">
                            <div class="modal-dialog">

                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h4 class="modal-title">Confirmation</h4>
                                    </div>
                                    <div class="modal-body">
                                        <span>Are you sure you want to delete this information?</span>
                                    </div>
                                    <div class="modal-footer">
                                        <a id="delete-exp" href="javascript:void(0)" class="btn btn-primary"
                                           data-dismiss="modal">Yes</a>
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="modal fade" id="modal-edit-achievement" role="dialog">
                            <div class="modal-dialog">

                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal"></button>
                                        <h4 class="modal-title">Achievement</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="form-group">
                                            <label>Achievement</label>
                                            <textarea id="user-achievement-data" rows="10" name="achievement" type="text"
                                                      class="form-control"></textarea>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button id="event-edit-achievement" type="button"
                                                class="btn btn-success">Save</button>
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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
                                    <img src="/Themes/TheCodeCampPro/Resources/Images/new-header/codelearn-logo.svg"
                                         alt="CodeLearn" />
                                </div>
                                <p>
                                    CodeLearn is an online platform that helps users to learn, practice coding skills and
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
                                <p><a href="/cdn-cgi/l/email-protection#12616762627d606652717d76777e7773607c3c7b7d"
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
                    <span>All Rights Reserved. rev 11/12/2022 11:15:59 AM</span>
                </div>
            </div>
        </footer>


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
