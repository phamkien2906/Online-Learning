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
              content="Object-Oriented-Programming (Object-Oriented-Programming) is an object-based programming method to find out the nature of the problem. This course helps programmers learn programming techniques that all logic and practical requirements are built around objects. Understanding how OOP works in C++ will simplify maintenance and scalability in software development." />
        <meta name="author" content="CodeLearn" />
        <link rel="shortcut icon" href="/Themes/TheCodeCampPro/Resources/Images/content/codelearn-icon.png" />
        <link rel="apple-touch-icon" href="/Themes/TheCodeCampPro/Resources/Images/content/codelearn-icon.png" />
        <link rel="canonical" href="/learning/object-oriented-programming-in-cpp" />
        <link rel="alternate" hreflang="vi" href="https://codelearn.io/learning/object-oriented-programming-in-cpp" />
        <link rel="alternate" hreflang="en-US" href="https://codelearn.io/learning/object-oriented-programming-in-cpp" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1,user-scalable=0" />
        <title>Online Learning</title>

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
        <link rel="stylesheet" href="font/fontawesome-free-6.3.0-web/fontawesome-free-6.3.0-web/css/all.css"/>

        <link rel="stylesheet" type="text/css" href="css/record.css" />
        <link href="css/chapter.css" rel="stylesheet" type="text/css" />
        <script src="js/account1.js" type="text/javascript"></script>
        <script src="js/account2.js" type="text/javascript"></script>
        <script src="js/account3.js" type="text/javascript"></script>
        <script src="js/account4.js" type="text/javascript"></script>
        <script src="js/account5.js" type="text/javascript"></script>
        <script src="js/account6.js" type="text/javascript"></script>
        <script src="js/account7.js" type="text/javascript"></script> 
        <script src="https://code.jquery.com/jquery-latest.js"></script>
    </head>

    <body class="hold-transition site-body skin-sku-light layout-top-nav learning ">

        <div id="layout-navigation" class="group ">
            <div class="zone zone-navigation">
                <article class="widget-navigation widget-menu-widget widget">
                    <header class="navbar site-header">
                        <div class="wrap-site-logo">
                            <a title="Home" href="home">
                                <img alt="Home" class="site-logo" src="themes/logo2.png">
                                <img alt="Home" class="site-logo-mobile" src="">
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
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="/">Home</a></li>
                                <li class="breadcrumb-item"><a
                                        href="/learning/object-oriented-programming-in-cpp">Learning</a></li>
                            </ol>
                        </div>
                    </nav>

                    <div class="fb-customerchat" attribution=setup_tool page_id="2254662768188202"
                         greeting_dialog_display="hide">
                    </div>
                </article>
            </div>
        </div>
        <c:set var="course" value="${requestScope.course}"/>
        <main id="layout-main" class="group">
            <div id="layout-content" class="group">
                <div id="content" class="group">
                    <div class="zone zone-content">
                        <div class="course-head">
                            <div class="overlay"></div>
                            <div class="container">
                                <div class="course-head-content">
                                    <div class="head">
                                        <h1 class="title">
                                            ${course.getCourse_name()}
                                        </h1>
                                        <div class="actions">
                                        </div>
                                    </div>
                                    <div class="main-content">
                                        <div class="title-wrap">
                                            <div class="title-wrap__rate-and-author">

                                                <div class="enroll-students">
                                                    <i class="fa-regular fa-user"></i>

                                                    ${requestScope.numberUser} students
                                                </div>&nbsp&nbsp&nbsp&nbsp

                                                <div id="container-rate" class="rate ">
                                                    <span class="star-rating">
                                                        <span style="width:88.0%"></span>
                                                        <span class="vote-rate">
                                                            <span value="1" class="star"><i class="cl-icon-favorite-full"></i></span>
                                                            <span value="2" class="star"><i class="cl-icon-favorite-full"></i></span>
                                                            <span value="3" class="star"><i class="cl-icon-favorite-full"></i></span>
                                                            <span value="4" class="star"><i class="cl-icon-favorite-full"></i></span>
                                                            <span value="5" class="star"><i class="cl-icon-favorite-full"></i></span>
                                                        </span>
                                                    </span>

                                                    <span class="text-rate" >
                                                        ${requestScope.Rate} (${requestScope.numberRate} votes)
                                                    </span>
                                                </div>
                                            </div>
                                            <p class="title-wrap__desc"
                                               title="${course.getCourse_description()}">
                                                ${course.getCourse_description()}</p>
                                        </div>
                                        <div class="infor-wrap">
                                            <div class="infor-wrap__item">
                                                <span class="left">
                                                    <span class="icon-wrap"><i class="fa-regular fa-clock"></i></span>
                                                    Time
                                                </span>
                                                <span class="right">
                                                    40 hours
                                                </span>
                                            </div>
                                            <div class="infor-wrap__item">
                                                <span class="left">
                                                    <span class="icon-wrap"><i class="fa-solid fa-list-check"></i></span>
                                                    Number of tasks
                                                </span>
                                                <span class="right">
                                                    ${course.getCourse_number_lesson()}
                                                </span>
                                            </div>
                                        </div>
                                        <c:if test="${sessionScope.account!=null}">
                                            <c:set var="count" value="0"></c:set>
                                            <c:forEach var="i" items="${requestScope.lister}">
                                                <c:if test="${i.getCourse_id()==course.getCourse_id()}">
                                                    <c:set var="count" value="${count+1}"></c:set>
                                                </c:if>                                                          
                                            </c:forEach>
                                            <c:choose>
                                                <c:when test="${count==0}">
                                                    <div class="actions-wrap">
                                                        <span class="text-price free">Free</span>
                                                        <div class="register" id="button-register">
                                                            <c:if test="${course.course_price==0}">
                                                                <a id="course-register" href="enroll?course=${course.course_id}"
                                                                   class="buy-now course-register">Register Now</a>
                                                            </c:if>
                                                            <c:if test="${course.course_price>0}">
                                                                <a id="course-register" href="payment?course=${course.course_id}"
                                                                   class="buy-now course-register">Register Now</a>
                                                            </c:if>
                                                        </div>
                                                    </div>
                                                </c:when>
                                                <c:when test="${count>0}">
                                                    <div class="actions-wrap">
                                                        <div class="process-wrap">
                                                            <div class="progress-circle progress-${course.getPercentage()}"><span>${course.getPercentage()}</span></div>
                                                        </div>
                                                    </div> 
                                                </c:when>    
                                            </c:choose>

                                        </c:if>
                                        <c:if test="${sessionScope.account==null}">
                                            <div class="actions-wrap">
                                                <span class="text-price free">Free</span>
                                                <div class="register" id="button-register">
                                                    <a href="javascript:void(0)" data-toggle="modal" data-target="#loginModal"
                                                       onclick="openModal('login')" id="not-auth">Please login to continue</a>
                                                </div>
                                            </div>
                                        </c:if>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="course-detail" class="container">
                            <div class="container">
                                <div class="tmp">
                                </div>
                                <div id="exTab1" class="">
                                    <ul class="nav nav-pills col-sm-12">
                                        <li class="hide extab course-lesson">
                                            <a href="#course-lesson" data-toggle="tab">Lecture/Video</a>
                                        </li>
                                        <li class="active extab">
                                            <a href="#1a" data-toggle="tab">Tasks</a>
                                        </li>
                                        <c:if test="${(sessionScope.account!=null)}">
                                            <li class="extab">
                                                <a id="course-objective" href="#2a" data-toggle="tab">Practice</a>
                                            </li>
                                        </c:if>
                                        <li class="extab">
                                            <a style="" href="#3a" id="comments-tab" data-toggle="tab" id="comment-display">
                                                Comments (${course.getNumbercomment()})</a>
                                        </li>

                                    </ul>
                                    <div class="tab-content clearfix">
                                        <div class="tab-pane hide list-task row" id="course-lesson">
                                        </div>
                                        <div class="tab-pane hide list-task row" id="course-practice">
                                        </div>
                                        <div class="tab-pane active list-task row" id="1a" >
                                            <c:forEach items="${requestScope.listChap}" var="listChap">
                                                <div class="group-detail-course-item col-md-6">
                                                    <div class="course-name">
                                                        <div class="lession">
                                                            <img
                                                                src="themes/bg-Lesson.png">
                                                            <div class="title">
                                                                <h3 class="active" title="${listChap.getChapter_name()}">${listChap.getChapter_name()}
                                                                </h3>
                                                            </div>
                                                        </div>
                                                        <div class="contain-task">
                                                            <c:forEach var="i" items="${requestScope.listlesson}">
                                                                <% int c =0;%>
                                                                <c:forEach var="lesson_per" items="${requestScope.listPercentage}">
                                                                    <c:if test="${i.lesson_id == lesson_per.lessonId && lesson_per.percentage == 1}">

                                                                        <% c = 1;%>
                                                                    </c:if>
                                                                </c:forEach>
                                                                <c:if test="${listChap.chapter_id == i.chapter_id}"> 
                                                                    <% if (c == 0){ %>
                                                                    <a title="Lập tr&#236;nh hướng đối tượng trong C++ | Codelearn"
                                                                       href="lesson?id=${i.lesson_id}"
                                                                       class="circle allow-active  ">${i.lesson_number}</a>                                                     
                                                                    <% }else{%>

                                                                    <a title="Lập tr&#236;nh hướng đối tượng trong C++ | Codelearn"
                                                                       href="lesson?id=${i.lesson_id}"
                                                                       class="circle resolve  ">${i.lesson_number}</a>  
                                                                    <% }%>
                                                                </c:if>

                                                            </c:forEach>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                        <jsp:include page="../public/record.jsp"></jsp:include>

                                            <div class="tab-pane " id="3a" >
                                                <div class="total-comments-section"><span id="total-comments">${course.getNumbercomment()}</span> comments</div>
                                            <c:if test="${sessionScope.account !=null}">
                                                <form action="commentc" method="post">
                                                    <div class="top-level-comment-input">
                                                        <div class="user-avatar">
                                                            <c:set var="user" value="${sessionScope.account}"></c:set>
                                                                <div class="avatars"> <img
                                                                        src="upload/${user.user_avatar}"> </div>
                                                        </div>

                                                        <div class="edit-box comment-box">
                                                            <input type="text" class="with-placeholder" name="commentcourse"
                                                                   id="comment-box" placeholder="Write your comment">
                                                            <input type="hidden" name="id" value="${course.course_id}">
                                                            <input type="submit" class="submit-cmmt btn" title="Post" value="Post" style="color: white;font-size:150%;background-color: #0062cc" >

                                                        </div>
                                                    </div>
                                                </form>
                                            </c:if>
                                            <c:forEach items="${requestScope.commentcourse}" var="i" >
                                                <div class="comment-block has-replies" style="display: block;">
                                                    <div class="user-avatar">
                                                        <div class="avatars"> <img src="upload/${i.user.user_avatar}"> </div>
                                                    </div>
                                                    <div class="comment-main">
                                                        <div class="comment-user"><a href="/profile/16742109" class="href-user">${i.user.getUser_name()}</a> <span
                                                                class="modified-time">${i.timediff}</span></div>
                                                        <div class="comment-content">${i.commentc_detail}</div>
                                                        <div class="comment-message for-edit"></div>
                                                        <div class="view-more">View more</div>
                                                        <div class="comment-footer">
                                                            <div class="left-parts action-buttons"><span class="hide-message">This comment has been hidden. </span>
                                                                <div class="user-action-buttons"><span class="likeButton">
                                                                        <a href="like"><i class="fa-solid fa-thumbs-up"></i> </a>
                                                                        <span id="countVoteLike_16875376" class="count-vote"> ${i.commentc_like}</span></span>
                                                                        <c:if test="${sessionScope.account !=null}">
                                                                        <span class="footer-button reply-button" id="btn${i.commentc_id}"><i
                                                                                class="fa-solid fa-reply"></i> Reply
                                                                        </span>
                                                                    </c:if>
                                                                </div>
                                                            </div>
                                                            <div class="right-parts"><button class="btn btn-success standard-button save-button"
                                                                                             style="display: none;">Save</button> </div>
                                                        </div>
                                                        <div class="replies loaded-all">
                                                            <c:forEach items="${requestScope.replycommentcourse}" var="j">
                                                                <c:if test="${j.commentc_reply== i.commentc_id}">
                                                                    <div class="comment-block " style="display: block;">
                                                                        <div class="user-avatar">
                                                                            <div class="avatars"><img src="upload/${j.user.user_avatar}"> </div>
                                                                        </div>
                                                                        <div class="comment-main">
                                                                            <div class="comment-user"><a href="/profile/17219477"
                                                                                                         class="href-user">${j.user.getUser_name()}</a> <span class="modified-time">${j.timediff}</span></div>
                                                                            <div class="comment-content">${j.commentc_detail}</div>
                                                                            <div class="comment-message for-edit"></div>
                                                                            <div class="view-more">View more</div>
                                                                            <div class="comment-footer">
                                                                                <div class="left-parts action-buttons"><span class="hide-message">This comment has been
                                                                                        hidden. </span>
                                                                                    <div class="user-action-buttons">
                                                                                        <span class="likeButton"><a href="discussion"><i id="img_17317684" class="fa-solid fa-thumbs-up"></i></a> 
                                                                                            <span id="countVoteLike_17317684" class="count-vote"> ${j.commentc_like}</span></span>
                                                                                            <c:if test="${sessionScope.account !=null}">
                                                                                            
                                                                                        </c:if>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="right-parts"><button class="btn btn-success standard-button save-button"
                                                                                                                 style="display: none;">Save</button> </div>
                                                                            </div>
                                                                            <div class="replies"></div>
                                                                            <div class="edit-box reply-box" style="display: none;">
                                                                                <div placeholder="Write your comment" class="with-placeholder" id="comment-box"
                                                                                     contenteditable=""></div>
                                                                                <div class="waiting-indicator"><span class="glyphicon glyphicon-refresh"></span></div><a
                                                                                    href="#" class="submit-cmmt btn" title="Post"> Post</a>
                                                                            </div>
                                                                            <div class="comment-message"></div>
                                                                        </div>
                                                                    </div>
                                                                </c:if>
                                                            </c:forEach>

                                                            <div class="view-more-comments-button as-link"><span class="view-more-text">View more</span><span
                                                                    class="glyphicon glyphicon-refresh"></span></div>
                                                        </div>
                                                        <form action="commentc" method="post">              
                                                            <div class="edit-box reply-box  " id="${i.commentc_id}" style="display: none">
                                                                <input type="text" class="with-placeholder" name="replycomment"
                                                                       id="comment-box" placeholder="Write your comment">
                                                                <input type="hidden" name="id" value="${course.course_id}">
                                                                <input type="hidden" name="reply" value="${i.commentc_id}">
                                                                <input type="submit" class="submit-cmmt btn" title="Post" value="Post" style="color: white;font-size:150%;background-color: #0062cc" >
                                                            </div>
                                                        </form>
                                                        <div class="comment-message"></div>
                                                    </div>
                                                </div>

                                            </c:forEach>
                                            <div class="view-more-comments-button-container">
                                                <div class="view-more-comments-button btn btn-default"><span class="view-more-text">View more</span><span
                                                        class="glyphicon glyphicon-refresh"></span></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <c:forEach items="${requestScope.commentcourse}" var="i" >
                            <script language="javascript">

                                document.getElementById("btn${i.commentc_id}").onclick = function () {
                                    document.getElementById("${i.commentc_id}").style.display = 'block';
                                };

                            </script>
                        </c:forEach>

                        <div class="modal fade" id="buy-now-support" role="dialog">
                            <div class="modal-dialog">

                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal"></button>
                                        <h4 class="modal-title">Support Codelearn</h4>
                                    </div>
                                    <div class="modal-body">
                                        <p>Please contact email: <a
                                                href="/cdn-cgi/l/email-protection#9be8eeebebf4e9efdbf8f4fffef7fefae9f5b5f2f4"><span
                                                    class="__cf_email__"
                                                    data-cfemail="45363035352a373105262a2120292024372b6b2c2a">[email&#160;protected]</span></a>
                                            for support.</p>
                                    </div>
                                    <div class="modal-footer">
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
                                <p><a href="/cdn-cgi/l/email-protection#becdcbceced1cccafeddd1dadbd2dbdfccd090d7d1"
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

        <script type="text/javascript">
            $(function () {

                var loadCommentsTrigger = {};
                $("#comments-tab").on("shown.bs.tab", function () {
                    loadCommentsTrigger.loadComments();
                });
                $.UseCommentModule({
                    containerSelector: "#3a",
                    headerCountSelector: "#total-comments-count",
                    contentId: courseId,
                    loadCommentsUri: "/CodeCamp/Comment/GetComments",
                    postCommentUri: "/CodeCamp/Comment/PostComment",
                    toggleCommentUri: "/CodeCamp/Comment/ToggleCommentVisibility",
                    postLikeCommentUri: "/Discussion/LikeCommentUri",
                    trigger: loadCommentsTrigger
                });
            });
        </script>
        <script type="application/ld+json">
            {
            "@context": "http://schema.org/",
            "@type": "Product",
            "name": "Object Oriented-Programming in C++" ,
            "image" : "/CodeCamp/CodeCamp/Upload/Course/fa2bdb40f4e449dca4514de8c8bca52d.jpg" ,
            "url" : "https://codelearn.io/learning/" ,
            "description" : "Object-Oriented-Programming (Object-Oriented-Programming) is an object-based programming method to find out the nature of the problem. This course helps programmers learn programming techniques that all logic and practical requirements are built around objects. Understanding how OOP works in C++ will simplify maintenance and scalability in software development.)" ,
            "aggregateRating" : {
            "@type" : "AggregateRating" ,
            "ratingValue" : "4.5" ,
            "reviewCount" : "200" ,
            "worstRating" : 3,
            "bestRating" : 5
            },
            "offers" : {
            "@type" : "Offer" ,
            "priceCurrency" : "USD" ,
            "price" : "0" ,
            "seller" : {
            "@type" : "Organization" ,
            "name" : "Codelearn"
            },
            "url" : "https://codelearn.io/learning/object-oriented-programming-in-cpp"
            }
            }
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

    </body>


</html>




