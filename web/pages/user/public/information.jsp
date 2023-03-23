<%-- 
    Document   : information
    Created on : Feb 28, 2023, 5:15:51 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1,user-scalable=0" />
        <title>Infomation & Contact about your account</title>

        <script>
            var isGetNotification = true;
            var isNotCountComment = false;

            var s3Storage = '';
            var resourcePath = '/Themes/TheCodeCampPro/Resources';
            var strAuthen = 'ducnguyen11042002@gmail.com';
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

        <link href="css/info.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="font/fontawesome-free-6.3.0-web/fontawesome-free-6.3.0-web/css/all.css"/>

        <script src="js/account1.js" type="text/javascript"></script>
        <script src="js/account2.js" type="text/javascript"></script>
        <script src="js/account3.js" type="text/javascript"></script>
        <script src="js/account4.js" type="text/javascript"></script>
        <script src="js/account5.js" type="text/javascript"></script>
        <script src="js/account6.js" type="text/javascript"></script>
        <script src="js/account7.js" type="text/javascript"></script>
        <script type="text/javascript">
            var validateInfo = false;
            var validateWork = false;
            var userId = '11606613';
            var token = '7G6wr4Fmyv4rWVBaTwKRSmLWSciTTntl68OC0HC9QV_Vf_zobuIU9Q5ptBu7MmCX6R1LmG8RVs6eGahRys6wjlaqsOT780cGhumOn_6meJe5NuY0Ysk5hhMAedGM1wZ8HHufe8AfBhJLzZqc2UzoRA2';
            var deletedEducationId = 0;
            var deletedExperienceId = 0;
            var editedEducationId = 0;
            var editedExperienceId = 0;
            var isCreated = false;
            var isEdited = false;
            var isCreatedExp = false;
            var isEditedExp = false;
            var isMainEdited = false;
            var defaultStateId;
            var defaultStateName;
            var defaultMessage;
        </script>
        <style>
            #messageValidateImage:hover {
                background-color: #0081c7;
            }
        </style>
    </head>

    <body class="hold-transition site-body skin-sku-light layout-top-nav user ">
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
                        </div>
                    </header>
                </article>
                <article class="widget-navigation widget-bread-cumps-widget widget">
                    <nav aria-label="breadcrumb">
                        <div class="container">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="home.html">Home</a></li>
                                <li class="breadcrumb-item"><a href="profile.html">My information</a></li>
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
                        <div class="container">
                            <div class="user--profile">
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="user--profile-left">
                                            <ul class="user--profile--list-function">
                                                <li class="active"><a href="profile.html">Information & Contact </a></li>
                                                <li><a href="change">Change Password</a></li>
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="col-md-9 user--profile-right-container">
                                        <div class="user--profile-right">
                                            <div class="user--profile-group">
                                                <h2 class="user--profile-title-group">Information</h2>
                                                <!--<form class="init" method="post" id="frm-info">-->
                                                <div class="row">
                                                    <div class="col-md-2 col-xs-12">
                                                        <div class="row">
                                                            <div id="ImgPreview" class="no-img" >
                                                                <img src="upload/${requestScope.avatar}" alt="alt"/>
                                                            </div>
                                                        </div>
                                                        <div class="row avatar-selector">
                                                            <div class="form-group UploadAvatar">
                                                                <form id="myForm" action="avatar" method="post" enctype="multipart/form-data">
                                                                    <label for="Avatar" id="messageValidateImage"
                                                                           style="display: block;">Select photo</label>
                                                                    <input name="ImgFile" id="Avatar" class="file"
                                                                           type="file"
                                                                           accept="image/png,image/x-png,image/gif,image/jpeg,image/jpg"
                                                                           onchange="document.getElementById('myForm').submit()"
                                                                           >
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <form class="init" method="post" id="frm-info" action="information">
                                                        <div class="col-md-9 col-xs-12">
                                                            <div class="row">
                                                                <div class="col-lg-3 col-sm-4 col-xs-12">
                                                                    <div class="form-group">
                                                                        <label for="FamilyName" class="required">Full
                                                                            name</label>
                                                                    </div>
                                                                </div>

                                                                <div class="col-lg-9 col-sm-8 col-xs-12">
                                                                    <div class="form-group">
                                                                        <span id="span-name" class="span-display"></span>
                                                                        <input name="FamilyName" type="text"
                                                                               class="form-control is-required" id="FamilyName"
                                                                               autocomplete="family-name" aria-required="true"
                                                                               style="display: block; " placeholder="Full Name" 
                                                                               <c:if test="${requestScope.name != null}">
                                                                                   value="${requestScope.name}"
                                                                               </c:if>
                                                                               >
                                                                        <%--<c:if test="${requestScope.mssg == null}">
                                                                            <label id="FamilyName-error" class="error" for="FamilyName">This field is invalid</label>
                                                                        </c:if>--%>
                                                                        <label id="FamilyName-error" class="error" for="FamilyName">${messageNameError}</label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-lg-3 col-sm-4 col-xs-12">
                                                                    <div class="form-group">
                                                                        <label for="BirthYear">Birthday</label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-9 col-sm-8 col-xs-12">
                                                                    <div class="form-group">
                                                                        <span id="span-birthday"
                                                                              class="span-display"></span>

                                                                        <input type="date" name="date" class="form-control"
                                                                               <c:if test="${requestScope.dob != null}">
                                                                                   value="${requestScope.dob}"
                                                                               </c:if>>
                                                                    </div>
                                                                    <label id="Date-error" class="error" for="Date">${messageDateError}</label>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-lg-3 col-sm-4 col-xs-12">
                                                                    <div class="form-group">
                                                                        <label for="text" class="required">Phone
                                                                            number</label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-9 col-sm-8 col-xs-12">
                                                                    <div class="form-group">
                                                                        <span id="span-phone" class="span-display"></span>
                                                                        <input name="PhoneNumber" type="text"
                                                                               class="form-control is-required"
                                                                               id="PhoneNumber" placeholder="Phone number"
                                                                               <c:if test="${requestScope.phone != null}">
                                                                                   value="${requestScope.phone}"
                                                                               </c:if>
                                                                               autocomplete='tel-national' />
                                                                        <label id="PhoneNumber-error" class="error" for="PhoneNumber">${messagePhoneError}</label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-lg-3 col-sm-4 col-xs-12">
                                                                    <div class="form-group">
                                                                        <label for="CountryId"
                                                                               class="required">Country/Region</label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-9 col-sm-8 col-xs-12">
                                                                    <div class="form-group">
                                                                        <span id="span-country" class="span-display"></span>
                                                                        <select class="form-control" id="CountrySelect"
                                                                                name="CountrySelect"
                                                                                >
                                                                            <option value="United States" selected="selected">United States</option>
                                                                            <option value="United Kingdom" selected="selected">United Kingdom</option>
                                                                            <option value="India" selected="selected">India</option>
                                                                            <option value="China" selected="selected">China</option>
                                                                            <option value="Venezuela" selected="selected">Venezuela</option>
                                                                            <option value="Korea" selected="selected">Korea</option>
                                                                            <option value="Viet Nam" selected="selected">Viet Nam</option>
                                                                            <c:if test="${requestScope.country != null}">
                                                                                <option value="${requestScope.country}" selected="selected">${requestScope.country}</option>
                                                                            </c:if>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-lg-3 col-sm-4 col-xs-12">
                                                                    <div class="form-group">
                                                                        <label for="CityName">Address</label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-9 col-sm-8 col-xs-12">
                                                                    <div class="form-group">
                                                                        <span id="span-cityName"
                                                                              class="span-display"></span>
                                                                        <textarea name="CityName" type="text"
                                                                                  class="form-control" id="CityName"
                                                                                  placeholder="Province/city name that you're living now"
                                                                                  ><c:if test="${requestScope.address != null}">${requestScope.address}
                                                                            </c:if>
                                                                        </textarea>
                                                                        <label id="CityName-error" class="error" for="CityName">${messageAddress}</label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-lg-3 col-sm-4 col-xs-12">
                                                                    <div class="form-group">
                                                                        <label>Facebook</label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-9 col-sm-8 col-xs-12">
                                                                    <div class="form-group">
                                                                        <span id="span-facebook"
                                                                              class="span-display"></span>
                                                                        <input type="text" name="Facebook"
                                                                               class="form-control" id="facebook"
                                                                               placeholder="Your profile link" 
                                                                               <c:if test="${requestScope.face != null}">
                                                                                   value="${requestScope.face}"
                                                                               </c:if>/>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-lg-3 col-sm-4 col-xs-12">
                                                                    <div class="form-group">
                                                                        <label>LinkedIn</label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-9 col-sm-8 col-xs-12">
                                                                    <div class="form-group">
                                                                        <span id="span-linkedIn"
                                                                              class="span-display"></span>
                                                                        <input type="text" name="LinkedIn"
                                                                               class="form-control" id="linkedIn"
                                                                               placeholder="Your profile link" 
                                                                               <c:if test="${requestScope.link != null}">
                                                                                   value="${requestScope.link}"
                                                                               </c:if>/>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-lg-3 col-sm-4 col-xs-12">
                                                                    <div class="form-group">
                                                                        <label>Twitter</label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-9 col-sm-8 col-xs-12">
                                                                    <div class="form-group">
                                                                        <span id="span-twitter" class="span-display"></span>
                                                                        <input type="text" name="Twitter"
                                                                               class="form-control" id="twitter"
                                                                               placeholder="Your profile link" 
                                                                               <c:if test="${requestScope.twit != null}">
                                                                                   value="${requestScope.twit}"
                                                                               </c:if>/>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-lg-3 col-sm-4 col-xs-12">
                                                                    <div class="form-group">
                                                                        <label>Your summary</label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-9 col-sm-8 col-xs-12">
                                                                    <div class="form-group">
                                                                        <p id="span-summary"></p>
                                                                        <textarea rows="5" name="Summary" type="text"
                                                                                  class="form-control" id="summary"
                                                                                  ><c:if test="${requestScope.summary != null}">${requestScope.summary}
                                                                            </c:if></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-lg-3 col-sm-4 col-xs-12">
                                                                    <div class="form-group">
                                                                        <label>Achievement</label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-9 col-sm-8 col-xs-12">
                                                                    <div class="form-group">
                                                                        <ul id="span-achievement"></ul>
                                                                        <span id="more-achievement" class="hide">See
                                                                            more</span>
                                                                        <textarea rows="5" name="Achievement" type="text"
                                                                                  class="form-control"
                                                                                  id="achievement"
                                                                                  ><c:if test="${requestScope.archie != null}">${requestScope.archie}
                                                                            </c:if></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="form-group pull-right">
                                                                    <button
                                                                        class="btn btn-sm pull-right btn-save save-info-button"
                                                                        type="submit" id="btnSaveInfo"
                                                                        style="height: 35px;width: 104px;border-radius: 3px;line-height: inherit;">Save</button>
                                                                    <a href="information"><button class="btn btn-sm pull-right btn-cancel "
                                                                                                  type="button" id="btnCancelInfo"
                                                                                                  style="height: 35px;width: 104px;border-radius: 3px;margin-right: 18px; line-height: inherit;">Cancel</button></a>

                                                                </div>
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
                                           data-dismiss="modal" onclick="deleteUserEducation()">Yes</a>
                                        <a id="cancel-delete-edu" href="javascript:void(0)" class="btn btn-default"
                                           data-dismiss="modal">Cancel</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="modal fade" id="mode-delete-experience" role="dialog">
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
                                           data-dismiss="modal" onclick="deleteUserExperience()">Yes</a>
                                        <a id="cancel-delete-exp" href="javascript:void(0)" class="btn btn-default"
                                           data-dismiss="modal" onclick="removeExperienceDeleteId()">Cancel</a>
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
                                <p><a href="/cdn-cgi/l/email-protection#added8ddddc2dfd9edcec2c9c8c1c8ccdfc383c4c2"
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
        <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
        <script src="/Themes/TheCodeCampPro/Resources/Lib/select2/select2.full.js?fileHash=EGKiLDVR6hTNA7YV4d7j7w%3d%3d"
        type="text/javascript"></script>
        <script
            src="/Themes/TheCodeCampPro/Resources/Lib/jquery.validation/1.16.0/jquery.validate.min.js?fileHash=SCipQ20WB6bjXDishBIK5Q%3d%3d"
        type="text/javascript"></script>
        <script
            src="/Themes/TheCodeCampPro/Resources/Lib/jquery.validation/1.16.0/additional-methods.min.js?fileHash=2bqpIYgwDgMM8FILx3oCEw%3d%3d"
        type="text/javascript"></script>
        <script
            src="/Themes/TheCodeCampPro/Resources/Lib/jquery.ui/jquery.ui.datepicker-vi.min.js?fileHash=IIZgPYGCTlx7QYNIoqvscg%3d%3d"
        type="text/javascript"></script>
        <script
            src="/Themes/TheCodeCampPro/Resources/App/Scripts/user-profile/user-profile.min.js?fileHash=WFqE8Vaa0pUpA8eR4Zcs6w%3d%3d"
        type="text/javascript"></script>
        <script
            src="/Themes/TheCodeCampPro/Resources/App/Scripts/notification/notification.min.js?fileHash=KTzMdkPU39hUOQ5OrgzArg%3d%3d"
        type="text/javascript"></script>

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

        <noscript>
        <img height="1" width="1" style="display:none" alt=""
             src="https://www.facebook.com/tr?id=700313553710795&ev=PageView&noscript=1" />
        </noscript>
    </body>
</html>
