<%-- 
    Document   : lesson69
    Created on : Feb 4, 2023, 10:43:09 AM
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
    <body>
        <jsp:include page="../Menu_lesson/header_menu.jsp"></jsp:include>
            <div class="w3-col l10 m12" class="main" style="margin: 0 100px;padding-top: 0px"> 
                <h1>W3Schools <span class="color_h1">SQL Certificate</span></h1>

                <hr>
                <style>
                    .certtext {
                        width:100%;
                        padding:20px 30px;
                        background-color:#282A35;
                    }
                </style>
                <table class="w3-hide-small certtext">
                    <tbody><tr>
                            <td><svg style="margin:auto;width:90%;max-width:230px" data-name="w3_cert_badge2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 300 300"><defs><style>.cls-1{
                                        fill:#04aa6b;
                                    }
                                    .cls-2{
                                        font-size:23px;
                                    }
                                    .cls-2,.cls-3,.cls-4{
                                        fill:#fff;
                                    }
                                    .cls-2,.cls-3{
                                        font-family:RobotoMono-Medium, Roboto Mono;
                                        font-weight:500;
                                    }
                                    .cls-3{
                                        font-size:20.08px;
                                    }</style></defs><circle class="cls-1" cx="150" cy="150" r="146.47" transform="translate(-62.13 150) rotate(-45)"></circle><text class="cls-2" transform="translate(93.54 63.89) rotate(-29.5)">w</text><text class="cls-2" transform="translate(107.13 56.35) rotate(-20.8)">3</text><text class="cls-2" transform="matrix(0.98, -0.21, 0.21, 0.98, 121.68, 50.97)">s</text><text class="cls-2" transform="translate(136.89 47.84) rotate(-3.47)">c</text><text class="cls-2" transform="translate(152.39 47.03) rotate(5.12)">h</text><text class="cls-2" transform="translate(167.85 48.54) rotate(13.72)">o</text><text class="cls-2" transform="translate(182.89 52.35) rotate(22.34)">o</text><text class="cls-2" transform="matrix(0.86, 0.52, -0.52, 0.86, 197.18, 58.36)">l</text><text class="cls-2" transform="matrix(0.77, 0.64, -0.64, 0.77, 210.4, 66.46)">s</text><text class="cls-3" transform="translate(35.51 186.66) rotate(69.37)"> </text><text class="cls-3" transform="matrix(0.47, 0.88, -0.88, 0.47, 41.27, 201.28)">C</text><text class="cls-3" transform="matrix(0.58, 0.81, -0.81, 0.58, 48.91, 215.03)">E</text><text class="cls-3" transform="matrix(0.67, 0.74, -0.74, 0.67, 58.13, 227.36)">R</text><text class="cls-3" transform="translate(69.16 238.92) rotate(39.44)">T</text><text class="cls-3" transform="matrix(0.85, 0.53, -0.53, 0.85, 81.47, 248.73)">I</text><text class="cls-3" transform="translate(94.94 256.83) rotate(24.36)">F</text><text class="cls-3" transform="translate(109.34 263.09) rotate(16.83)">I</text><text class="cls-3" transform="translate(124.46 267.41) rotate(9.34)">E</text><text class="cls-3" transform="translate(139.99 269.73) rotate(1.88)">D</text><text class="cls-3" transform="translate(155.7 270.01) rotate(-5.58)"> </text><text class="cls-3" transform="translate(171.32 268.24) rotate(-13.06)"> </text><text class="cls-2" transform="translate(187.55 266.81) rotate(-21.04)">.</text><text class="cls-3" transform="translate(203.27 257.7) rotate(-29.24)"> </text><text class="cls-3" transform="translate(216.84 249.83) rotate(-36.75)"> </text><text class="cls-3" transform="translate(229.26 240.26) rotate(-44.15)">2</text><text class="cls-3" transform="translate(240.39 229.13) rotate(-51.62)">0</text><text class="cls-3" transform="translate(249.97 216.63) rotate(-59.17)">2</text><text class="cls-3" transform="matrix(0.4, -0.92, 0.92, 0.4, 257.81, 203.04)">2</text><path class="cls-4" d="M196.64,136.31s3.53,3.8,8.5,3.8c3.9,0,6.75-2.37,6.75-5.59,0-4-3.64-5.81-8-5.81h-2.59l-1.53-3.48,6.86-8.13a34.07,34.07,0,0,1,2.7-2.85s-1.11,0-3.33,0H194.79v-5.86H217.7v4.28l-9.19,10.61c5.18.74,10.24,4.43,10.24,10.92s-4.85,12.3-13.19,12.3a17.36,17.36,0,0,1-12.41-5Z"></path><path class="cls-4" d="M152,144.24l30.24,53.86,14.94-26.61L168.6,120.63H135.36l-13.78,24.53-13.77-24.53H77.93l43.5,77.46.15-.28.16.28Z"></path></svg>
                            </td>
                            <td>&nbsp;&nbsp;</td>
                            <td style="vertical-align:top;">
                                <p style="font-size: 21px;font-family: 'Source Sans Pro', sans-serif;color: #FFC0C7;">W3Schools offers an Online Certification Program.</p>
                                <p style="font-size: 18px;font-family: 'Source Sans Pro', sans-serif;color: #FFC0C7;">The perfect solution for busy professionals who need to balance work, family, and career building.</p>
                                <p style="font-size: 18px;font-family: 'Source Sans Pro', sans-serif;color: #FFC0C7;">More than 50 000 certificates already issued!</p>
                                <br>
                                <p><a class="ws-btn w3-large" href="https://shop.w3schools.com/27417837625/checkouts/a1a04a24b87e7ce91100e41d1528dd0b?skip_shopify_pay=true&amp;locale=en" target="_blank">Get Your Certificate »</a></p>
                            </td>
                        </tr>
                    </tbody></table>

                <div class="w3-center w3-hide-large w3-hide-medium" style="padding:16px 24px;background-color:#282A35;border-radius:5px;">
                    <svg style="margin:20px;width:165px" data-name="w3_cert_badge2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 300 300"><defs><style>.cls-1{
                            fill:#04aa6b;
                        }
                        .cls-2{
                            font-size:23px;
                        }
                        .cls-2,.cls-3,.cls-4{
                            fill:#fff;
                        }
                        .cls-2,.cls-3{
                            font-family:RobotoMono-Medium, Roboto Mono;
                            font-weight:500;
                        }
                        .cls-3{
                            font-size:20.08px;
                        }</style></defs><circle class="cls-1" cx="150" cy="150" r="146.47" transform="translate(-62.13 150) rotate(-45)"></circle><text class="cls-2" transform="translate(93.54 63.89) rotate(-29.5)">w</text><text class="cls-2" transform="translate(107.13 56.35) rotate(-20.8)">3</text><text class="cls-2" transform="matrix(0.98, -0.21, 0.21, 0.98, 121.68, 50.97)">s</text><text class="cls-2" transform="translate(136.89 47.84) rotate(-3.47)">c</text><text class="cls-2" transform="translate(152.39 47.03) rotate(5.12)">h</text><text class="cls-2" transform="translate(167.85 48.54) rotate(13.72)">o</text><text class="cls-2" transform="translate(182.89 52.35) rotate(22.34)">o</text><text class="cls-2" transform="matrix(0.86, 0.52, -0.52, 0.86, 197.18, 58.36)">l</text><text class="cls-2" transform="matrix(0.77, 0.64, -0.64, 0.77, 210.4, 66.46)">s</text><text class="cls-3" transform="translate(35.51 186.66) rotate(69.37)"> </text><text class="cls-3" transform="matrix(0.47, 0.88, -0.88, 0.47, 41.27, 201.28)">C</text><text class="cls-3" transform="matrix(0.58, 0.81, -0.81, 0.58, 48.91, 215.03)">E</text><text class="cls-3" transform="matrix(0.67, 0.74, -0.74, 0.67, 58.13, 227.36)">R</text><text class="cls-3" transform="translate(69.16 238.92) rotate(39.44)">T</text><text class="cls-3" transform="matrix(0.85, 0.53, -0.53, 0.85, 81.47, 248.73)">I</text><text class="cls-3" transform="translate(94.94 256.83) rotate(24.36)">F</text><text class="cls-3" transform="translate(109.34 263.09) rotate(16.83)">I</text><text class="cls-3" transform="translate(124.46 267.41) rotate(9.34)">E</text><text class="cls-3" transform="translate(139.99 269.73) rotate(1.88)">D</text><text class="cls-3" transform="translate(155.7 270.01) rotate(-5.58)"> </text><text class="cls-3" transform="translate(171.32 268.24) rotate(-13.06)"> </text><text class="cls-2" transform="translate(187.55 266.81) rotate(-21.04)">.</text><text class="cls-3" transform="translate(203.27 257.7) rotate(-29.24)"> </text><text class="cls-3" transform="translate(216.84 249.83) rotate(-36.75)"> </text><text class="cls-3" transform="translate(229.26 240.26) rotate(-44.15)">2</text><text class="cls-3" transform="translate(240.39 229.13) rotate(-51.62)">0</text><text class="cls-3" transform="translate(249.97 216.63) rotate(-59.17)">2</text><text class="cls-3" transform="matrix(0.4, -0.92, 0.92, 0.4, 257.81, 203.04)">2</text><path class="cls-4" d="M196.64,136.31s3.53,3.8,8.5,3.8c3.9,0,6.75-2.37,6.75-5.59,0-4-3.64-5.81-8-5.81h-2.59l-1.53-3.48,6.86-8.13a34.07,34.07,0,0,1,2.7-2.85s-1.11,0-3.33,0H194.79v-5.86H217.7v4.28l-9.19,10.61c5.18.74,10.24,4.43,10.24,10.92s-4.85,12.3-13.19,12.3a17.36,17.36,0,0,1-12.41-5Z"></path><path class="cls-4" d="M152,144.24l30.24,53.86,14.94-26.61L168.6,120.63H135.36l-13.78,24.53-13.77-24.53H77.93l43.5,77.46.15-.28.16.28Z"></path></svg>
                    <p style="font-size: 18px;font-family: 'Source Sans Pro', sans-serif;color: #FFC0C7;">W3Schools offers an Online Certification Program.</p>
                    <p style="font-size: 18px;font-family: 'Source Sans Pro', sans-serif;color: #FFC0C7;">The perfect solution for busy professionals who need to balance work, family, and career building.</p>
                    <p style="font-size: 18px;font-family: 'Source Sans Pro', sans-serif;color: #FFC0C7;">More than 50 000 certificates already issued!</p>
                    <p><a class="ws-btn w3-large" href="https://shop.w3schools.com/27417837625/checkouts/a1a04a24b87e7ce91100e41d1528dd0b?skip_shopify_pay=true&amp;locale=en" target="_blank">Get Your Certificate »</a></p>
                </div>

                <svg style="background-color:#D9EEE1;" width="100%" height="70" viewBox="0 0 100 100" preserveAspectRatio="none">
                <path id="wavepath" d="M0,0  L110,0C35,150 35,0 0,100z" fill="#282A35"></path>
                </svg>

                <div class="w3-row w3-padding-32 ws-light-green" style="margin-top:-10px;">
                    <div class="w3-content w3-container" style="max-width:1400px">

                        <div style="margin-top: 40px;" class="w3-row-padding w3-center xw3-dark-grey">
                            <div class="w3-third">
                                <i style="font-size: 80px;" class="fa fa-code ws-text-black" aria-hidden="true"></i>
                                <h6>
                                    <b>Document your skills</b><br>Improve your career</h6>
                            </div>
                            <div class="w3-third">
                                <i style="font-size: 80px;" class="fa fa-graduation-cap ws-text-black" aria-hidden="true"></i>
                                <h6>
                                    <b>Study at your own pace</b><br>Save time and money</h6>
                            </div>
                            <div class="w3-third">
                                <i style="font-size: 80px;" class="fa fa-globe ws-text-black" aria-hidden="true"></i>
                                <h6>
                                    <b>Known brand</b><br>Trusted by top companies</h6>
                            </div>
                        </div>

                    </div>
                </div>

                <hr>

                <div class="w3-row">
                    <div class="w3-half w3-container">
                        <h2>Who Should Consider Getting Certified?</h2>
                        <p>Any student or professional within the digital industry.</p>
                        <p>Certifications are valuable assets to gain trust and demonstrate knowledge to your clients, current or future employers on a ever increasing competitive market.</p>


                        <h2>W3Schools is Trusted by Top Companies</h2>
                        <p>W3Schools has over two decades of experience with teaching coding online.</p>
                        <p>Our certificates are recognized and valued by companies looking to employ skilled developers.</p>


                        <h2>Save Time and Money</h2>
                        <p>Show the world your coding skills by getting a certification.</p>
                        <p>The prices is a small fraction compared to the price of traditional education.</p>
                        <p>Document and validate your competence by getting certified!</p>
                    </div>

                    <div class="w3-half w3-container ws-yellow w3-padding-large">
                        <h2>Exam overview</h2>
                        <p><strong>Fee:</strong><span> 95 USD</span></p>
                        <p><strong>Number of questions:</strong><span> 70</span></p>
                        <p><strong>Requirement to pass:</strong><span> 75% correct answers</span></p>
                        <p><strong>Time limit:</strong><span> 70 minutes</span></p>
                        <p><strong>Number of attempts to pass:</strong><span> Two</span></p>
                        <p><strong>Exam deadline:</strong><span> None</span></p>
                        <p><strong>Certification Expiration:</strong><span> None</span></p>
                        <p><strong>Format:</strong><span> Online, multiple choice</span></p>
                        <p><a class="ws-btn w3-large ws-black" href="https://shop.w3schools.com/27417837625/checkouts/a1a04a24b87e7ce91100e41d1528dd0b?skip_shopify_pay=true&amp;locale=en" target="_blank">Register now »</a></p>
                    </div>
                </div>
                <hr>

                <h2>Advance Faster in Your Career</h2>
                <p>Getting a certificate proves your commitment to upgrading your skills.</p>
                <p>The certificate can be added as credentials to your CV, Resume, LinkedIn profile, and so on.</p>
                <p>It gives you the credibility needed for more responsibilities, larger projects, and a higher salary.</p>
                <p>Knowledge is power, especially in the current job market.</p>
                <p>Documentation of your skills enables you to advance your career or helps you to start a new one.</p>
                <hr>

                <div class="w3-panel w3-info">
                    <h2>How Does It Work?</h2>
                    <ul>
                        <li>Study for free at W3Schools.com</li>
                        <li>Study at your own speed</li>
                        <li>Test your skills with W3Schools online quizzes</li>
                        <li>Apply for your certificate by paying an exam fee</li>
                        <li>Take your exam online, at any time, and from any location</li>
                    </ul>
                </div>
                <hr>

                <h2>Get Your Certificate and Share It With The World</h2>
                <p>Example certificate:</p>
                <p>Each certificate gets a unique link that can be shared with others.</p>
                <p>Validate your certification with the link or QR code.</p>
                <p>Check how it looks like in this <a href="https://verify.w3schools.com/1ML8E71MEL" target="_blank">Example</a>.</p>
                <p style="display: flex; align-items: center;">Share your certificate on LinkedIn in the Certifications section in just one click! <span style="padding-left:10px;" class="fa fa-linkedin-square fa-2x"></span></p>
                <hr>

                <div class="w3-panel w3-note">
                    <h2>Document Your Skills</h2>
                    <p>Getting a certificate proves your commitment to upgrade your skills,
                        gives you the credibility needed for more responsibilities, larger projects, and a higher salary.</p>
                    <br>
                    <p><a class="ws-btn w3-large" href="https://shop.w3schools.com/27417837625/checkouts/a1a04a24b87e7ce91100e41d1528dd0b?skip_shopify_pay=true&amp;locale=en" target="_blank">Get Your Certificate »</a></p>
                </div>
                <hr>

                <h2>Looking to add multiple users?</h2>
                <p>Are you an educator, manager or business owner looking for courses or certifications?</p>
                <p>We are working with schools, companies and organizations from all over the world.</p>
                <p><a href="https://shop.w3schools.com/" target="_blank">Get courses and/or certifications for your team here.</a></p>
                <hr>

                <br>

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
