<%-- 
    Document   : lesson65
    Created on : Feb 4, 2023, 10:34:23 AM
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
                <h1>SQL <span class="color_h1">Quick Reference</span> from W3Schools</h1>

                <hr>
                <div class="w3-responsive">
                    <table class="ws-table-all notranslate">
                        <tbody><tr>
                                <th style="width:27%">SQL Statement</th>
                                <th>Syntax</th>
                            </tr>
                            <tr>
                                <td>AND / OR</td>
                                <td>SELECT column_name(s)<br>
                                    FROM table_name<br>
                                    WHERE condition<br>
                                    AND|OR condition</td>
                            </tr>
                            <tr>
                                <td>ALTER TABLE</td>
                                <td>ALTER TABLE table_name <br>
                                    ADD column_name datatype<p>or</p>
                                    <p>ALTER TABLE table_name <br>
                                        DROP COLUMN column_name</p></td>
                            </tr>
                            <tr>
                                <td>AS (alias)</td>
                                <td>SELECT column_name AS column_alias<br>
                                    FROM table_name<p>or</p>
                                    <p>SELECT column_name<br>
                                        FROM table_name&nbsp; AS table_alias</p></td>
                            </tr>
                            <tr>
                                <td>BETWEEN</td>
                                <td>SELECT column_name(s)<br>
                                    FROM table_name<br>
                                    WHERE column_name<br>
                                    BETWEEN value1 AND value2</td>
                            </tr>
                            <tr>
                                <td>CREATE DATABASE</td>
                                <td>CREATE DATABASE database_name</td>
                            </tr>
                            <tr>
                                <td>CREATE TABLE</td>
                                <td>CREATE TABLE table_name<br>
                                    (<br>
                                    column_name1 data_type,<br>
                                    column_name2 data_type,<br>
                                    column_name3 data_type,<br>
                                    ...<br>
                                    )</td>
                            </tr>
                            <tr>
                                <td>CREATE INDEX</td>
                                <td>CREATE INDEX index_name<br>
                                    ON table_name (column_name)<p>or</p>
                                    <p>CREATE UNIQUE INDEX index_name<br>
                                        ON table_name (column_name)</p></td>
                            </tr>
                            <tr>
                                <td>CREATE VIEW</td>
                                <td>CREATE VIEW view_name AS<br>
                                    SELECT column_name(s)<br>
                                    FROM table_name<br>
                                    WHERE condition</td>
                            </tr>
                            <tr>
                                <td>DELETE</td>
                                <td>DELETE FROM table_name<br>
                                    WHERE some_column=some_value<p>or</p>
                                    <p>DELETE FROM table_name <br>
                                        (<b>Note: </b>Deletes the entire table!!)</p>
                                    <p>DELETE * FROM table_name <br>
                                        (<b>Note: </b>Deletes the entire table!!)</p></td>
                            </tr>
                            <tr>
                                <td>DROP DATABASE</td>
                                <td>DROP DATABASE database_name</td>
                            </tr>
                            <tr>
                                <td>DROP INDEX</td>
                                <td>DROP INDEX table_name.index_name (SQL  Server)<br>
                                    DROP INDEX index_name ON table_name (MS Access)<br>
                                    DROP INDEX index_name (DB2/Oracle)<br>
                                    ALTER TABLE table_name<br>
                                    DROP INDEX index_name (MySQL)</td>
                            </tr>
                            <tr>
                                <td>DROP TABLE</td>
                                <td>DROP TABLE table_name</td>
                            </tr>
                            <tr>
                                <td>EXISTS</td>
                                <td>IF EXISTS (SELECT * FROM table_name WHERE id = ?)<br>BEGIN<br>--do   what needs to be done if exists<br>END<br>ELSE<br>BEGIN<br>--do what needs   to be done if not<br>END</td>
                            </tr>
                            <tr>
                                <td>GROUP BY</td>
                                <td>SELECT column_name,  aggregate_function(column_name)<br>
                                    FROM table_name<br>
                                    WHERE column_name operator value<br>
                                    GROUP BY column_name</td>
                            </tr>
                            <tr>
                                <td>HAVING</td>
                                <td>SELECT column_name,  aggregate_function(column_name)<br>
                                    FROM table_name<br>
                                    WHERE column_name operator value<br>
                                    GROUP BY column_name<br>
                                    HAVING aggregate_function(column_name) operator value</td>
                            </tr>
                            <tr>
                                <td>IN</td>
                                <td>SELECT column_name(s)<br>
                                    FROM table_name<br>
                                    WHERE column_name<br>
                                    IN (value1,value2,..)</td>
                            </tr>
                            <tr>
                                <td>INSERT INTO</td>
                                <td>INSERT INTO table_name<br>
                                    VALUES (value1, value2, value3,....)<p><i>or</i></p>
                                    <p>INSERT INTO table_name<br>
                                        (column1, column2, column3,...)<br>
                                        VALUES (value1, value2, value3,....)</p></td>
                            </tr>
                            <tr>
                                <td>INNER JOIN</td>
                                <td>SELECT column_name(s)<br>
                                    FROM table_name1<br>
                                    INNER JOIN table_name2 <br>
                                    ON table_name1.column_name=table_name2.column_name</td>
                            </tr>
                            <tr>
                                <td>LEFT JOIN</td>
                                <td>SELECT column_name(s)<br>
                                    FROM table_name1<br>
                                    LEFT JOIN table_name2 <br>
                                    ON table_name1.column_name=table_name2.column_name</td>
                            </tr>
                            <tr>
                                <td>RIGHT JOIN</td>
                                <td>SELECT column_name(s)<br>
                                    FROM table_name1<br>
                                    RIGHT JOIN table_name2 <br>
                                    ON table_name1.column_name=table_name2.column_name</td>
                            </tr>
                            <tr>
                                <td>FULL JOIN</td>
                                <td>SELECT column_name(s)<br>
                                    FROM table_name1<br>
                                    FULL JOIN table_name2 <br>
                                    ON table_name1.column_name=table_name2.column_name</td>
                            </tr>
                            <tr>
                                <td>LIKE</td>
                                <td>SELECT column_name(s)<br>
                                    FROM table_name<br>
                                    WHERE column_name
                                    LIKE pattern</td>
                            </tr>
                            <tr>
                                <td>ORDER BY</td>
                                <td>SELECT column_name(s)<br>
                                    FROM table_name<br>
                                    ORDER BY column_name [ASC|DESC]</td>
                            </tr>
                            <tr>
                                <td>SELECT</td>
                                <td>SELECT column_name(s)<br>
                                    FROM table_name</td>
                            </tr>
                            <tr>
                                <td>SELECT *</td>
                                <td>SELECT *<br>
                                    FROM table_name</td>
                            </tr>
                            <tr>
                                <td>SELECT DISTINCT</td>
                                <td>SELECT DISTINCT column_name(s)<br>
                                    FROM table_name</td>
                            </tr>
                            <tr>
                                <td>SELECT INTO</td>
                                <td>SELECT *<br>
                                    INTO new_table_name [IN externaldatabase]<br>
                                    FROM old_table_name<p><i>or</i></p>
                                    <p>SELECT column_name(s)<br>
                                        INTO new_table_name [IN externaldatabase]<br>
                                        FROM old_table_name</p></td>
                            </tr>
                            <tr>
                                <td>SELECT TOP</td>
                                <td>SELECT TOP number|percent column_name(s)<br>
                                    FROM table_name</td>
                            </tr>
                            <tr>
                                <td>TRUNCATE TABLE</td>
                                <td>TRUNCATE TABLE table_name</td>
                            </tr>
                            <tr>
                                <td>UNION</td>
                                <td>SELECT column_name(s) FROM table_name1<br>
                                    UNION<br>
                                    SELECT column_name(s) FROM table_name2</td>
                            </tr>
                            <tr>
                                <td>UNION ALL</td>
                                <td>SELECT column_name(s) FROM table_name1<br>
                                    UNION ALL<br>
                                    SELECT column_name(s) FROM table_name2</td>
                            </tr>
                            <tr>
                                <td>UPDATE</td>
                                <td>UPDATE table_name<br>
                                    SET column1=value, column2=value,...<br>
                                    WHERE some_column=some_value</td>
                            </tr>
                            <tr>
                                <td>WHERE</td>
                                <td>SELECT column_name(s)<br>
                                    FROM table_name<br>
                                    WHERE column_name operator value</td>
                            </tr>
                        </tbody></table>
                </div>
                <p><b>Source : https://www.w3schools.com/sql/sql_quickref.asp</b></p>
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
