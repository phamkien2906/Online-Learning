<%-- 
    Document   : record
    Created on : Feb 14, 2023, 9:37:42 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/record.css" />

    </head>
    <body>

        <div class="tab-pane" id="2a" >
            <table class="generaltable quizattemptsummary">
                <thead>
                    <tr>
                        <th class="header c0" style="text-align:center;" scope="col">Attempt
                        </th>
                        <th class="header c1" style="text-align:left;" scope="col">State</th>
                        <th class="header c2" style="text-align:center;" scope="col">Submit Time</th>
                        <th class="header c3" style="text-align:center;" scope="col">Grade /
                            30</th>
                        <th class="header c4 lastcol" style="text-align:center;" scope="col">
                            Review</th>
                    </tr>
                </thead>
                <tbody>
                    <c:set var="count" value="0"></c:set>
                    <c:forEach var="c" items="${requestScope.listRecord}">
                        <c:set var="count" value="${count+1}"></c:set>
                            <tr class="">
                                <td class="cell c0" style="text-align:center;">${count}</td>
                            <td class="cell c1" style="text-align:left;">Finished</td>
                            <td class="cell c2" style="text-align:center;"><span
                                    class="statedetails">Submitted ${c.record_date}</span></td>
                            <td class="cell c3" style="text-align:center;">${c.record_mark}</td>
                            <td class="cell c4 lastcol" style="text-align:center;"><a
                                    title="Review your responses to this attempt"
                                    href="review?recordId=${c.record_id}&id=${course.course_id}" style="color: #fd647a">Review</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <div class="box quizattempt py-3" >
                <div class="singlebutton quizstartbuttondiv"></div>

                <a href="quizz?courseId=${course.course_id}">
                    <button type="submit" class="btn btn-secondary"
                            id="single_button63eb98f97423a18" title="">Continue the practice</button>
                </a>
            </div>
        </div>

    </body>
</html>
