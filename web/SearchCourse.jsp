<%-- 
    Document   : SearchCourse
    Created on : Feb 26, 2023, 10:48:54 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Search Course</label>
                <div class="login-form">
                    <form action="searchcourse" >
                        <h3 style="color: red">${requestScope.ms}</h3>
                        <div class="sign-up-htm">
                           
                            <div class="group">
                                <label for="pass" class="label">Course ID</label>
                                <input  name="cid" type="text" class="input"  >
                            </div>                                                       
                            <div class="group">
                                <label for="pass" class="label">Name</label>
                                <input  name="cname" type="text" class="input"  >
                            </div>
                            <div class="group">
                                <label for="pass" class="label">From Price</label>
                                <input  name="fprice" type="text" class="input" v >
                            </div>
                            <div class="group">
                                <label for="pass" class="label">To Price</label>
                                <input  name="tprice" type="text" class="input"  >
                            </div>
                           
                            <div class="group">
                                <input type="submit" class="button" value="Search">
                            </div>
                            <div class="hr"></div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>


        