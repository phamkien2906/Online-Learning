<%-- 
    Document   : payment
    Created on : Mar 15, 2023, 5:50:34 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/payment.css" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>

    <body style="background-color: rgb(0, 0, 34);">
        <c:set var="course" value="${requestScope.course}"></c:set>
            <div class="card">
                <div class="card-body">
                    <a href="home">Back to home</a>
                    <div class="row">
                        <div class="col-md-7">
                            <div class="left border">
                                <div class="row">
                                    <span class="header">Chuyển khoản thủ công</span>
                                </div>
                                <form>
                                    <span>Tên tài khoản:</span>
                                    <input placeholder="BoxBox Company" readonly>
                                    <span>Số tài khoản:</span>
                                    <input placeholder="0123 4567 8910 1112" readonly="">
                                    <div class="row">
                                        <div class="col-4"><span>Nội dung:</span>
                                            <input placeholder="${requestScope.content}" readonly>
                                    </div>
                                    <div class="col-4"><span>Chi nhánh:</span>
                                        <input placeholder="Vietcombank" readonly>
                                    </div>
                                </div>


                            </form>
                            <hr />
                            <div class="row">
                                <span class="header">Chuyển khoản bằng QR </span>
                                <form>
                                    <div class="icons">
                                        <img src="upload/332960341_1631627357278845_1878392059447962187_n.jpg" />
                                    </div>
                                    <span>Bước 1: Mở app ngân hàng hoặc Momo và quét mã QR</span><br />
                                    <span>Bước 2: Đảm bảo nội dung chuyển khoản là </span><b>${requestScope.content}</b><br />
                                    <span>Bước 3: Thực hiện thanh toán</span>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="right border">
                            <div class="header">Order Course</div>
                            <hr />
                            <div class="row item">
                                <div class="col-4 align-self-center"><img class="img-fluid"
                                                                          src=${course.course_image}>
                                </div>


                            </div>

                            <div class="row lower">
                                <div class="col text-left"><b>Tên khoá học:</b></div>
                                <div class="col text-right">${course.course_name}</div>
                            </div>
                            <div class="row lower">
                                <div class="col text-left"><b>Mã đơn hàng:</b></div>
                                <div class="col text-right">${course.course_name}</div>
                            </div>
                            <hr>
                            <h4>Chi tiết thanh toán:</h4>
                            <div class="row lower">
                                <div class="col text-left"><b>Giá bán:</b></div>
                                <div class="col text-right">${course.course_price} VNĐ </div>
                            </div>

                            <div class="row lower">
                                <div class="col text-left"><b>Tổng tiền:</b></div>
                                <div class="col text-right"><b>${course.course_price} VNĐ</b></div>
                            </div>

                            <form action="payment" method="post">
                                <input type="hidden" name="course" value="${course.course_id}" >
                                <input type="hidden" name="price" value="${course.course_price}" >
                                <input type="hidden" name="content" value="${requestScope.content}">
                                <button type="submit" class="btn">Check out</button>
                            </form>


                        </div>
                        <br>
                        <H3>Lưu ý:</H3>
                        <span>Tối đa 5 phút sau thời gian chuyển khoản, nếu hệ thống không phản hồi vui lòng liên hệ ngay bộ
                            phận hỗ trợ của BoxBox.</span>

                    </div>

                </div>
            </div>

            <div>
            </div>
        </div>
    </body>
</html>