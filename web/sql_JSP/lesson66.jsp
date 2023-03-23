<%-- 
    Document   : lesson66
    Created on : Feb 4, 2023, 10:36:56 AM
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
    </head>
    <body>
        <jsp:include page="../Menu_lesson/header_menu.jsp"></jsp:include>
            <div class="w3-col l10 m12" class="main" style="margin: 0 100px;padding-top: 0px"> 
                <h1>SQL <span class="color_h1">Examples</span></h1>

                <hr>

                <h2>SQL Syntax</h2>
                <div class="w3-bar-block">
                    <a class="w3-button w3-bar-item ws-grey" target="_blank" href="trysql.asp?filename=trysql_select_all">
                        Select all the records from a specific table ("Customers")</a>
                </div>
                <p><a href="sql_syntax.asp" class="ws-btn">Example Explained</a></p>
                <hr>

                <h2>SQL SELECT</h2>
                <div class="w3-bar-block">
                    <a class="w3-button w3-bar-item ws-grey" target="_blank" href="trysql.asp?filename=trysql_select_columns">
                        SELECT Column</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_all">
                        SELECT *</a>
                </div>
                <p><a href="sql_select.asp" class="ws-btn">Examples Explained</a></p>
                <hr>

                <h2>SQL SELECT DISTINCT</h2>
                <div class="w3-bar-block">
                    <a class="w3-button w3-bar-item ws-grey" target="_blank" href="trysql.asp?filename=trysql_select_distinct">
                        SELECT DISTINCT</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_distinct2">
                        SELECT COUNT(DISTINCT column_name)</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_distinct3">
                        SELECT COUNT(DISTINCT column_name) workaround for MS Access</a>
                </div>
                <p><a href="sql_distinct.asp" class="ws-btn">Examples Explained</a></p>
                <hr>

                <h2>SQL WHERE</h2>
                <div class="w3-bar-block">
                    <a class="w3-button w3-bar-item ws-grey" target="_blank" href="trysql.asp?filename=trysql_select_where">
                        WHERE Clause</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_where_number">
                        Text Fields vs. Numeric Fields</a>
                </div>
                <p><a href="sql_where.asp" class="ws-btn">Examples Explained</a></p>
                <hr>

                <h2>SQL AND, OR and NOT Operators</h2>
                <div class="w3-bar-block">
                    <a class="w3-button w3-bar-item ws-grey" target="_blank" href="trysql.asp?filename=trysql_select_where_and">
                        AND</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_where_or">
                        OR</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_where_not">
                        NOT</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_where_and_or">
                        Combining AND, OR and NOT</a>
                </div>
                <p><a href="sql_and_or.asp" class="ws-btn">Examples Explained</a></p>
                <hr>

                <h2>SQL ORDER BY</h2>
                <div class="w3-bar-block">
                    <a class="w3-button w3-bar-item ws-grey" target="_blank" href="trysql.asp?filename=trysql_select_orderby">
                        ORDER BY</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_orderby_desc">
                        ORDER BY DESC</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_orderby2">
                        ORDER BY Several Columns</a>
                </div>
                <p><a href="sql_orderby.asp" class="ws-btn">Examples Explained</a></p>
                <hr>

                <h2>SQL INSERT INTO</h2>
                <div class="w3-bar-block">
                    <a class="w3-button w3-bar-item ws-grey" target="_blank" href="trysql.asp?filename=trysql_insert_colname">
                        INSERT INTO</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_insert_cols">
                        Insert data in specific columns</a>
                </div>
                <p><a href="sql_insert.asp" class="ws-btn">Examples Explained</a></p>
                <hr>

                <style>
                    #buy_course_btn {
                        text-decoration:none !important;
                        background-color:#04AA6D;
                        width:auto;
                        border-radius:25px;
                        padding-top:10px;
                        padding-bottom:10px;
                        font-family: 'Source Sans Pro', sans-serif;
                    }
                    #buy_course_btn {
                        background-color:#059862!important;
                    }
                </style>

                <div style="position:relative;font-family:'Source Sans Pro', sans-serif;border-radius:25px;color:#FFC0C7;padding:4px 120px 32px 32px;background-color:#282A35">
                    <a href="https://shop.w3schools.com/collections/certifications" target="_blank">
                        <svg id="w3_cert_badge2" style="position:absolute;top:20px;right:20px;width:100px" data-name="w3_cert_badge2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 300 300"><defs><style>.cls-1{
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
                    </a>
                    <h2 style="font-family:'Source Sans Pro';margin-bottom:0!important;font-size:50px!important">
                        Get Certified!</h2>
                    <div>Take the SQL exam and become w3schools certified!!</div>
                    <br>
                    <a class="w3-btn" id="buy_course_btn" href="https://shop.w3schools.com/collections/certifications/products/sql-certificate" target="_blank">$95 ENROLL</a>
                </div>

                <hr>

                <h2>SQL NULL Values</h2>
                <div class="w3-bar-block">
                    <a class="w3-button w3-bar-item ws-grey" target="_blank" href="trysql.asp?filename=trysql_is_null">
                        IS NULL Operator</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_is_not_null">
                        IS NOT NULL Operator</a>
                </div>
                <p><a href="sql_null_values.asp" class="ws-btn">Examples Explained</a></p>
                <hr>

                <h2>SQL Update</h2>
                <div class="w3-bar-block">
                    <a class="w3-button w3-bar-item ws-grey" target="_blank" href="trysql.asp?filename=trysql_update_2">
                        UPDATE Table</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_update_3">
                        UPDATE Multiple Records</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_update_4">
                        UPDATE Warning (if you omit the WHERE clause, all records will be updated)</a>
                </div>
                <p><a href="sql_update.asp" class="ws-btn">Examples Explained</a></p>
                <hr>

                <h2>SQL DELETE</h2>
                <div class="w3-bar-block">
                    <a class="w3-button w3-bar-item ws-grey" target="_blank" href="trysql.asp?filename=trysql_delete">
                        DELETE</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_delete_all">
                        DELETE All Records</a>
                </div>
                <p><a href="sql_delete.asp" class="ws-btn">Examples Explained</a></p>
                <hr>

                <h2>SQL SELECT TOP</h2>
                <div class="w3-bar-block">
                    <a class="w3-button w3-bar-item ws-grey" target="_blank" href="trysql.asp?filename=trysql_select_top&amp;ss=-1">
                        SELECT TOP</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_limit">
                        LIMIT</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_top_percent&amp;ss=-1">
                        SELECT TOP PERCENT</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_top_where&amp;ss=-1">
                        SELECT TOP and add a WHERE Clause</a>
                </div>
                <p><a href="sql_top.asp" class="ws-btn">Examples Explained</a></p>
                <hr>

                <h2>SQL MIN() and MAX()</h2>
                <div class="w3-bar-block">
                    <a class="w3-button w3-bar-item ws-grey" target="_blank" href="trysql.asp?filename=trysql_select_min">
                        MIN()</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_max">
                        MAX()</a>
                </div>
                <p><a href="sql_min_max.asp" class="ws-btn">Examples Explained</a></p>
                <hr>

                <h2>SQL COUNT, AVG() and SUM()</h2>
                <div class="w3-bar-block">
                    <a class="w3-button w3-bar-item ws-grey" target="_blank" href="trysql.asp?filename=trysql_select_count">
                        COUNT()</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_avg">
                        AVG()</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_sum">
                        SUM()</a>
                </div>
                <p><a href="sql_count_avg_sum.asp" class="ws-btn">Examples Explained</a></p>
                <hr>

                <h2>SQL LIKE</h2>
                <div class="w3-bar-block">
                    <a class="w3-button w3-bar-item ws-grey" target="_blank" href="trysql.asp?filename=trysql_select_like">
                        LIKE - select all table rows starting with "a"</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_like_ending">
                        LIKE - select all table rows ending with "a"</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_like_pattern">
                        LIKE - select all table rows that have "or" in any position</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_like_underscore">
                        LIKE - select all table rows that have "r" in the second position</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_like_start_end">
                        LIKE - select all table rows that starts with "a" and ends with "o"</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_like_not">
                        LIKE - select all table rows that does NOT start with "a"</a>
                </div>
                <p><a href="sql_like.asp" class="ws-btn">Examples Explained</a></p>
                <hr>

                <h2>SQL Wildcards</h2>
                <div class="w3-bar-block">
                    <a class="w3-button w3-bar-item ws-grey" target="_blank" href="trysql.asp?filename=trysql_select_wildcard_percent">
                        Using the % Wildcard</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_wildcard_underscore">
                        Using the _ Wildcard</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_wildcard_charlist&amp;ss=-1">
                        Using the [charlist] Wildcard</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_wildcard_not_charlist&amp;ss=-1">
                        Using the [!charlist] Wildcard</a>
                </div>
                <p><a href="sql_wildcards.asp" class="ws-btn">Examples Explained</a></p>
                <hr>

                <h2>SQL IN</h2>
                <div class="w3-bar-block">
                    <a class="w3-button w3-bar-item ws-grey" target="_blank" href="trysql.asp?filename=trysql_select_in">
                        IN</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_in_not">
                        NOT IN</a>
                </div>
                <p><a href="sql_in.asp" class="ws-btn">Examples Explained</a></p>
                <hr>

                <h2>SQL BETWEEN</h2>
                <div class="w3-bar-block">
                    <a class="w3-button w3-bar-item ws-grey" target="_blank" href="trysql.asp?filename=trysql_select_between">
                        BETWEEN</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_not_between">
                        NOT BETWEEN</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_between_in">
                        BETWEEN with IN</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_between_text">
                        BETWEEN Text Values</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_not_between_text">
                        NOT BETWEEN Text Values</a>
                </div>
                <p><a href="sql_between.asp" class="ws-btn">Examples Explained</a></p>
                <hr>

                <h2>SQL Aliases</h2>
                <div class="w3-bar-block">
                    <a class="w3-button w3-bar-item ws-grey" target="_blank" href="trysql.asp?filename=trysql_select_alias_column0">
                        Alias for Columns</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_alias_column">
                        Two Aliases</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_alias_table">
                        Alias for Tables</a>
                </div>
                <p><a href="sql_alias.asp" class="ws-btn">Examples Explained</a></p>
                <hr>

                <h2>SQL Joins</h2>
                <div class="w3-bar-block">
                    <a class="w3-button w3-bar-item ws-grey" target="_blank" href="trysql.asp?filename=trysql_select_join_inner">
                        INNER JOIN</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_join_left">
                        LEFT JOIN</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_join_right">
                        RIGHT JOIN</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_join_self">
                        Self JOIN</a>
                </div>
                <p><a href="sql_join.asp" class="ws-btn">Examples Explained</a></p>
                <hr>

                <h2>SQL UNION</h2>
                <div class="w3-bar-block">
                    <a class="w3-button w3-bar-item ws-grey" target="_blank" href="trysql.asp?filename=trysql_select_union">
                        UNION</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_union_all">
                        UNION ALL</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_union2">
                        UNION With WHERE</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_union_all2">
                        UNION ALL With WHERE</a>
                </div>
                <p><a href="sql_union.asp" class="ws-btn">Examples Explained</a></p>
                <hr>

                <h2>SQL GROUP BY</h2>
                <div class="w3-bar-block">
                    <a class="w3-button w3-bar-item ws-grey" target="_blank" href="trysql.asp?filename=trysql_select_groupby">
                        GROUP BY</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_groupby_orderby">
                        GROUP BY and ORDER BY</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_groupby1">
                        GROUP BY With JOIN</a>
                </div>
                <p><a href="sql_groupby.asp" class="ws-btn">Examples Explained</a></p>
                <hr>

                <h2>SQL HAVING</h2>
                <div class="w3-bar-block">
                    <a class="w3-button w3-bar-item ws-grey" target="_blank" href="trysql.asp?filename=trysql_select_having">
                        HAVING and GROUP BY</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_having_orderby">
                        HAVING and ORDER BY</a>
                </div>
                <p><a href="sql_having.asp" class="ws-btn">Examples Explained</a></p>
                <hr>

                <h2>SQL EXISTS</h2>
                <div class="w3-bar-block">
                    <a class="w3-button w3-bar-item ws-grey" target="_blank" href="trysql.asp?filename=trysql_select_exists">
                        EXISTS</a>
                </div>
                <p><a href="sql_exists.asp" class="ws-btn">Example Explained</a></p>
                <hr>

                <h2>SQL ANY and ALL</h2>
                <div class="w3-bar-block">
                    <a class="w3-button w3-bar-item ws-grey" target="_blank" href="trysql.asp?filename=trysql_select_any&amp;ss=-1">
                        ANY</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_select_all2&amp;ss=-1">
                        ALL</a>
                </div>
                <p><a href="sql_any_all.asp" class="ws-btn">Examples Explained</a></p>
                <hr>

                <h2>SQL INSERT INTO SELECT</h2>
                <div class="w3-bar-block">
                    <a class="w3-button w3-bar-item ws-grey" target="_blank" href="trysql.asp?filename=trysql_insert_into_select">
                        INSERT INTO SELECT</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_insert_into_select_where">
                        INSERT INTO SELECT with WHERE</a>
                </div>
                <p><a href="sql_insert_into_select.asp" class="ws-btn">Examples Explained</a></p>
                <hr>

                <h2>SQL CASE</h2>
                <div class="w3-bar-block">
                    <a class="w3-button w3-bar-item ws-grey" target="_blank" href="trysql.asp?filename=trysql_case">
                        CASE 1</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_case2">
                        CASE 2</a>
                </div>
                <p><a href="sql_case.asp" class="ws-btn">Examples Explained</a></p>
                <hr>

                <h2>SQL Comments</h2>
                <div class="w3-bar-block">
                    <a class="w3-button w3-bar-item ws-grey" target="_blank" href="trysql.asp?filename=trysql_comment_single_1">
                        Single Line Comments</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_comment_single_2">
                        Single Line Comments At The End Of a Line</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_blank" href="trysql.asp?filename=trysql_comment_multi_1">
                        Multi-line Comments</a>
                </div>
                <p><a href="sql_comments.asp" class="ws-btn">Examples Explained</a></p>
                <hr>

                <h2>SQL Database</h2>
                <p>SQL Database tutorials can be found here:</p>
                <div class="w3-bar-block">
                    <a class="w3-button w3-bar-item ws-grey" target="_top" href="sql_create_db.asp">SQL Create DB</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_top" href="sql_drop_db.asp">SQL Drop DB</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_top" href="sql_backup_db.asp">SQL Backup DB</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_top" href="sql_create_table.asp">SQL Create Table</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_top" href="sql_drop_table.asp">SQL Drop Table</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_top" href="sql_alter.asp">SQL Alter Table</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_top" href="sql_constraints.asp">SQL Constraints</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_top" href="sql_notnull.asp">SQL Not Null</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_top" href="sql_unique.asp">SQL Unique</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_top" href="sql_primarykey.asp">SQL Primary Key</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_top" href="sql_foreignkey.asp">SQL Foreign Key</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_top" href="sql_check.asp">SQL Check</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_top" href="sql_default.asp">SQL Default</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_top" href="sql_create_index.asp">SQL Index</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_top" href="sql_autoincrement.asp">SQL Auto Increment</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_top" href="sql_dates.asp">SQL Dates</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_top" href="sql_view.asp">SQL Views</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_top" href="sql_injection.asp">SQL Injection</a>
                    <a class="w3-button w3-bar-item ws-grey w3-border-top" target="_top" href="sql_hosting.asp">SQL Hosting</a>
                </div>
                <hr>



                <style>

                    #w3_cert_badge {
                        position: absolute;
                        right: 5%;
                        width: 220px;
                        transform: rotate(10deg);
                        bottom: -20%;
                    }

                    #w3_cert_arrow {
                        position: absolute;
                        right: 220px;
                        width: 220px;
                        transform: rotate(10deg);
                        bottom: 0;
                        z-index: 1;
                    }

                    #getdiploma {
                        position: relative;
                        padding: 0 60px 50px 60px;
                        margin-bottom: 125px;
                        border-radius: 16px;
                        background-color: #282A35;
                        color: #FFC0C7;
                        font-family: 'Source Sans Pro', sans-serif;
                    }

                    #getdiploma h2 {
                        font-size:50px;
                        margin-top: 1em;
                        margin-bottom: 1em;
                        font-family: 'Source Sans Pro', sans-serif
                    }

                    #getdiploma p {
                        font-size: 42px;
                        margin-top: 1em;
                        margin-bottom: 1em;
                        font-family: 'Source Sans Pro', sans-serif
                    }

                    #getdiploma a {
                        border-radius: 50px;
                        mxargin-top: 50px;
                        font-size: 18px;
                        background-color: #04AA6D;
                        padding: 17px 55px
                    }

                    #getdiploma a:hover,
                    #getdiploma a:active {
                        background-color: #059862 !important;
                    }


                    @media screen and (max-width: 1442px) {
                        #w3_cert_arrow {
                            right: 212px;
                            bottom: -15px;
                        }
                    }


                    @media screen and (max-width: 1202px) {
                        #w3_cert_arrow {
                            display: none;
                        }
                    }

                    @media screen and (max-width: 992px) {
                        #w3_cert_arrow {
                            display: block;
                        }
                    }


                    @media screen and (max-width: 800px) {
                        #w3_cert_arrow {
                            display: none;
                        }
                        #getdiploma h2 {
                            font-size: 44px;
                        }
                        #getdiploma p {
                            font-size: 30px;
                        }

                        #getdiploma a {
                            width: 100%;
                        }
                        #w3_cert_badge {
                            top: -16px;
                            right: -8px;
                            width: 100px;
                        }
                        #getdiploma  {
                            margin-bottom: 55px;
                        }
                    }
                </style>

                <div class="w3-panel" id="getdiploma">

                    <h2>Kickstart your career</h2>
                    <p>Get certified by completing <span id="hey">the</span> <span id="coursetopic">SQL</span> course</p>
                    <script>
                        var foldername;
                        function getCourseFolder() {
                            var pathname = window.location.pathname;
                            if (pathname.substr(0, 1) == "/") {
                                pathname = pathname.substr(1);
                            }
                            pos = pathname.indexOf("/");
                            foldername = pathname.substr(0, pos);
                            foldername = foldername.toUpperCase();
                            if (foldername == "JS")
                                foldername = "JavaScript";
                            if (foldername == "QUIZTEST" || foldername == "EXERCISES") {
                                document.getElementById("hey").innerText = "a";
                            }
                            if (foldername == "QUIZTEST" || foldername == "EXERCISES")
                                foldername = "";
                            if (foldername == "CS")
                                foldername = "C#";
                            if (foldername == "CYBERSECURITY")
                                foldername = "Cyber Security";
                            if (foldername == "CPP")
                                foldername = "C++";
                            document.getElementById("coursetopic").innerText = foldername;
                        }
                        getCourseFolder();
                    </script>
                    <a class="w3-btn w3-margin-bottom" href="https://shop.w3schools.com/collections/course-catalog" target="_blank">Get certified</a>

                    <svg id="w3_cert_arrow" viewBox="0 0 170 143" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M9.7747 42.7064C9.7747 42.7064 19.5575 77.2951 44.4558 84.8113C62.0225 90.1142 81.0061 80.1196 77.791 68.3309C76.0904 62.0955 69.0574 62.4735 65.5106 65.8444C59.1003 71.9368 67.8591 89.7423 77.9205 96.1324C112.816 118.295 161.943 84.5867 161.943 84.5867" stroke="white" stroke-width="2" stroke-linecap="round"></path>
                    <path d="M159.804 93.8429L162.704 84.4917L152.715 80.8293" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                    </svg>
                    <svg id="w3_cert_badge" data-name="w3_cert_badge" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 300 300"><defs><style>.cls-1{
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

                </div>

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
