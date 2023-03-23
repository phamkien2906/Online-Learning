<%-- 
    Document   : SearchChapter
    Created on : Feb 26, 2023, 9:53:32 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Learning</title>
        <link rel="stylesheet" href="./css/login.css"/>

    </head>
    <body>

        <div class="login-wrap">
            <div class="login-html">
                <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Update Chapter</label>
                <div class="login-form">
                    <form action="updatechapter" method="post">
                        <h3 style="color: red">${requestScope.ms}</h3>
                        <div class="sign-up-htm">
                            <c:set value="${requestScope.chapter}" var="c"/>
                            <div class="group">
                                <label for="pass" class="label">ChapterID</label>
                                <input  readonly name="chapterid" type="text" class="input" value="${c.getChapter_id()}" >
                            </div>                                                       
                            <div class="group">
                                <label for="pass" class="label">CourseID</label>
                                <input  readonly name="courseid" type="text" class="input" value="${c.getCourse_id()}" >
                            </div>
                            <div class="group">
                                <label for="pass" class="label">Chapter Name</label>
                                <input  name="name" type="text" class="input" value="${c.getChapter_name()}" >
                            </div>
                           
                            <div class="group">
                                <input type="submit" class="button" value="Update">
                            </div>
                            <div class="hr"></div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>


