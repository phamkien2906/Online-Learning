<%-- 
    Document   : UpdateLesson
    Created on : Feb 25, 2023, 12:34:06 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>OL</title>
        <link rel="stylesheet" href="./css/login.css"/>

    </head>
    <body>

        <div class="login-wrap">
            <div class="login-html">
                <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Add new Lesson</label>
                <div class="login-form">
                    <form action="addlesson" method="post">
                        <h3 style="color: red">${requestScope.ms}</h3>
                        <div class="sign-up-htm">
                            
                            <div class="group">
                                <label for="pass" class="label">LessonID</label>
                                <input  name="id" type="text" class="input" >
                            </div>                                                       
                            <div class="group">
                                <label for="pass" class="label">Level</label>
                                <input  name="level" type="text" class="input" >
                            </div>
                            <div class="group">
                                <label for="pass" class="label">ChapterID</label>
                                <input  name="chapterid" type="text" class="input"  >
                            </div>
                            <div class="group">
                                <label for="pass" class="label">LessonContent</label>
                                <input  name="content" type="text" class="input" >
                            </div>
                            <div class="group">
                                <label for="pass" class="label">Lesson Number</label>
                                <input  name="number" type="text" class="input" >
                            </div>
                            <div class="group">
                                <input type="submit" class="button" value="Add">
                            </div>
                            <div class="hr"></div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>

