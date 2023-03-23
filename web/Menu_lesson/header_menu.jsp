<%-- 
    Document   : left_menu
    Created on : Feb 5, 2023, 5:41:22 PM
    Author     : mylov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Menu_lesson/css_lesson/header_menu.css" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>
    <body>

        <div class="cl-header">   
            <div class="task-button"><a href="course?id=${requestScope.course_id}">
                    <i class="glyphicon glyphicon-menu-left"></i></a></div>            

            <div class="task-list-select">
                <c:forEach var="i" items="${requestScope.listlesson}">
                    <ul>
                        <% int c =0;%>
                        <c:forEach var="lesson_per" items="${requestScope.listPercentage}">
                            <c:if test="${i.lesson_id == lesson_per.lessonId && lesson_per.percentage == 1}">
                                <% c = 1;%>
                            </c:if>
                        </c:forEach>
                        <% if (c == 0){ %>
                        <li   ><a  href="lesson?id=${i.lesson_id} " target="target">${i.lesson_number}</a></li>                                                    
                            <% }else{%>
                        <li  style="background-color: blue" ><a style="color: white" href="lesson?id=${i.lesson_id} " target="target">${i.lesson_number}</a></li>
                            <% }%>
                    </ul>
                </c:forEach>

            </div>  
        </div>

    </body>


</html>
