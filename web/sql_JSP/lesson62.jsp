<%-- 
    Document   : lesson62
    Created on : Feb 4, 2023, 10:29:29 AM
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
                <h1>MySQL <span class="color_h1">Functions</span></h1>

                <hr>
                <p class="intro">MySQL has many built-in functions.</p>
                <p class="intro">This reference contains string, numeric, date, and some advanced functions 
                    in MySQL.</p>
                <hr>

                <h2>MySQL String Functions</h2>
                <table class="ws-table-all notranslate">
                    <tbody><tr>
                            <th style="width:25%">Function</th>
                            <th>Description</th>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_ascii.asp">ASCII</a></td>
                            <td>Returns the ASCII value for the specific character</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_char_length.asp">CHAR_LENGTH</a></td>
                            <td>Returns the length of a string (in characters)</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_character_length.asp">CHARACTER_LENGTH</a></td>
                            <td>Returns the length of a string (in characters)</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_concat.asp">CONCAT</a></td>
                            <td>Adds two or more expressions together</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_concat_ws.asp">CONCAT_WS</a></td>
                            <td>Adds two or more expressions together with a separator</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_field.asp">FIELD</a></td>
                            <td>Returns the index position of a value in a list of values</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_find_in_set.asp">FIND_IN_SET</a></td>
                            <td>Returns the position of a string within a list of strings</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_format.asp">FORMAT</a></td>
                            <td>Formats a number to a format like "#,###,###.##", rounded to a 
                                specified number 
                                of decimal places</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_insert.asp">INSERT</a></td>
                            <td>Inserts a string within a string at the specified position and for a certain 
                                number of characters</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_instr.asp">INSTR</a></td>
                            <td>Returns the position of the first occurrence of a string in another string</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_lcase.asp">LCASE</a></td>
                            <td>Converts a string to lower-case</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_left.asp">LEFT</a></td>
                            <td>Extracts a number of characters from a string (starting from left)</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_length.asp">LENGTH</a></td>
                            <td>Returns the length of a string (in bytes)</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_locate.asp">LOCATE</a></td>
                            <td>Returns the position of the first occurrence of a substring in a string</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_lower.asp">LOWER</a></td>
                            <td>Converts a string to lower-case</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_lpad.asp">LPAD</a></td>
                            <td>Left-pads a string with another string, to a certain length</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_ltrim.asp">LTRIM</a></td>
                            <td>Removes leading spaces from a string</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_mid.asp">MID</a></td>
                            <td>Extracts a substring from a string (starting at any position)</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_position.asp">POSITION</a></td>
                            <td>Returns the position of the first occurrence of a substring in a string</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_repeat.asp">REPEAT</a></td>
                            <td>Repeats a string as many times as specified</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_replace.asp">REPLACE</a></td>
                            <td>Replaces all occurrences of a substring within a string, with a new 
                                substring</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_reverse.asp">REVERSE</a></td>
                            <td>Reverses a string and returns the result</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_right.asp">RIGHT</a></td>
                            <td>Extracts a number of characters from a string (starting from right)</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_rpad.asp">RPAD</a></td>
                            <td>Right-pads a string with another string, to a certain length</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_rtrim.asp">RTRIM</a></td>
                            <td>Removes trailing spaces from a string</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_space.asp">SPACE</a></td>
                            <td>Returns a string of the specified number of space characters</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_strcmp.asp">STRCMP</a></td>
                            <td>Compares two strings</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_substr.asp">SUBSTR</a></td>
                            <td>Extracts a substring from a string (starting at any position)</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_substring.asp">SUBSTRING</a></td>
                            <td>Extracts a substring from a string (starting at any position)</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_substring_index.asp">SUBSTRING_INDEX</a></td>
                            <td>Returns a substring of a string before a specified number of 
                                delimiter occurs</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_trim.asp">TRIM</a></td>
                            <td>Removes leading and trailing spaces from a string</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_ucase.asp">UCASE</a></td>
                            <td>Converts a string to upper-case</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_upper.asp">UPPER</a></td>
                            <td>Converts a string to upper-case</td>
                        </tr>
                    </tbody></table>
                <hr>
                <style>

                    #coursera_img {
                        position: absolute;
                        right: 5%;
                        width: 45%;
                        max-width:350px;
                        bottom: -5%;
                    }


                    #guided {
                        position: relative;
                        padding: 0 60px 30px 60px;
                        margin-bottom: 20px;
                        border-radius: 16px;
                        background-color: #282A35;
                        color: #FFC0C7;
                        font-family: 'Source Sans Pro', sans-serif;
                    }

                    #guided h2 {
                        font-size:30px;
                        margin-top: 1em;
                        margin-bottom: 1em;
                        font-family: 'Source Sans Pro', sans-serif
                    }

                    #guided p {
                        font-size: 20px;
                        margin-top: 1em;
                        margin-bottom: 1em;
                        margin-right: 50%;
                        font-family: 'Source Sans Pro', sans-serif
                    }

                    #guided a {
                        border-radius: 50px;
                        margin-top: 50px;
                        font-size: 18px;
                        background-color: rgb(0, 86, 210);
                        padding: 17px 55px
                    }

                    #guided a:hover,
                    #guided a:active {
                        background-color: rgb(0, 96, 220)!important;
                    }


                    @media screen and (max-width: 1350px) {
                        #coursera_img {
                            bottom: -5%;
                            max-width:300px;
                        }

                    }


                    @media screen and (max-width: 1202px) {
                        #coursera_img {
                            bottom: 5%;
                        }

                    }

                    @media screen and (max-width: 992px) {
                        #coursera_img {
                            bottom: 5%;
                        }

                    }


                    @media screen and (max-width: 800px) {

                        #guided a {
                            width: 100%;
                        }
                        #coursera_img {

                            display:none;
                        }
                        #guided p {
                            display:none;
                        }

                        #guided {
                            margin-bottom: 10px;
                        }
                    }
                </style>

                <div class="w3-panel" id="guided">

                    <h2>Learn to Filter Data in SQL Like a Data Analyst</h2>
                    <p>Try a hands-on training sessions with step-by-step guidance from an expert. Try the guided project made in collaboration with Coursera now!</p>
                    <a class="w3-btn w3-margin-bottom" id="coursera_link" href="https://imp.i384100.net/b36bjb" target="_blank">Get started</a>
                </div>

                <hr>

                <h2>MySQL Numeric Functions</h2>
                <table class="ws-table-all notranslate">
                    <tbody><tr>
                            <th style="width:25%">Function</th>
                            <th>Description</th>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_abs.asp">ABS</a></td>
                            <td>Returns the absolute value of a number</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_acos.asp">ACOS</a></td>
                            <td>Returns the arc cosine of a number</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_asin.asp">ASIN</a></td>
                            <td>Returns the arc sine of a number</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_atan.asp">ATAN</a></td>
                            <td>Returns the arc tangent of one or two numbers</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_atan2.asp">ATAN2</a></td>
                            <td>Returns the arc tangent of two numbers</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_avg.asp">AVG</a></td>
                            <td>Returns the average value of an expression</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_ceil.asp">CEIL</a></td>
                            <td>Returns the smallest integer value that is &gt;= to a number</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_ceiling.asp">CEILING</a></td>
                            <td>Returns the smallest integer value that is &gt;= to a number</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_cos.asp">COS</a></td>
                            <td>Returns the cosine of a number</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_cot.asp">COT</a></td>
                            <td>Returns the cotangent of a number</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_count.asp">COUNT</a></td>
                            <td>Returns the number of records returned by a select query</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_degrees.asp">DEGREES</a></td>
                            <td>Converts a value in radians to degrees</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_div.asp">DIV</a></td>
                            <td>Used for integer division</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_exp.asp">EXP</a></td>
                            <td>Returns e raised to the power of a specified number</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_floor.asp">FLOOR</a></td>
                            <td>Returns the largest integer value that is &lt;= to a number</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_greatest.asp">GREATEST</a></td>
                            <td>Returns the greatest value of the list of arguments</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_least.asp">LEAST</a></td>
                            <td>Returns the smallest value of the list of arguments</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_ln.asp">LN</a></td>
                            <td>Returns the natural logarithm of a number</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_log.asp">LOG</a></td>
                            <td>Returns the natural logarithm of a number, or the logarithm of a number to a 
                                specified base</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_log10.asp">LOG10</a></td>
                            <td>Returns the natural logarithm of a number to base 10</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_log2.asp">LOG2</a></td>
                            <td>Returns the natural logarithm of a number to base 2</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_max.asp">MAX</a></td>
                            <td>Returns the maximum value in a set of values</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_min.asp">MIN</a></td>
                            <td>Returns the minimum value in a set of values</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_mod.asp">MOD</a></td>
                            <td>Returns the remainder of a number divided by another number</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_pi.asp">PI</a></td>
                            <td>Returns the value of PI</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_pow.asp">POW</a></td>
                            <td>Returns the value of a number raised to the power of another number</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_power.asp">POWER</a></td>
                            <td>Returns the value of a number raised to the power of another number</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_radians.asp">RADIANS</a></td>
                            <td>Converts a degree value into radians</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_rand.asp">RAND</a></td>
                            <td>Returns a random number</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_round.asp">ROUND</a></td>
                            <td>Rounds a number to a specified number of decimal places</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_sign.asp">SIGN</a></td>
                            <td>Returns the sign of a number</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_sin.asp">SIN</a></td>
                            <td>Returns the sine of a number</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_sqrt.asp">SQRT</a></td>
                            <td>Returns the square root of a number</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_sum.asp">SUM</a></td>
                            <td>Calculates the sum of a set of values</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_tan.asp">TAN</a></td>
                            <td>Returns the tangent of a number</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_truncate.asp">TRUNCATE</a></td>
                            <td>Truncates a number to the specified number of decimal places</td>
                        </tr>
                    </tbody></table>
                <hr>

                <h2>MySQL Date Functions</h2>
                <table class="ws-table-all notranslate">
                    <tbody><tr>
                            <th style="width:25%">Function</th>
                            <th>Description</th>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_adddate.asp">ADDDATE</a></td>
                            <td>Adds a time/date interval to a date and then returns the date</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_addtime.asp">ADDTIME</a></td>
                            <td>Adds a time interval to a time/datetime and then returns the time/datetime</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_curdate.asp">CURDATE</a></td>
                            <td>Returns the current date</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_current_date.asp">CURRENT_DATE</a></td>
                            <td>Returns the current date</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_current_time.asp">CURRENT_TIME</a></td>
                            <td>Returns the current time</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_current_timestamp.asp">CURRENT_TIMESTAMP</a></td>
                            <td>Returns the current date and time</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_curtime.asp">CURTIME</a></td>
                            <td>Returns the current time</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_date.asp">DATE</a></td>
                            <td>Extracts the date part from a datetime expression</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_datediff.asp">DATEDIFF</a></td>
                            <td>Returns the number of days between two date values</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_date_add.asp">DATE_ADD</a></td>
                            <td>Adds a time/date interval to a date and then returns the date</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_date_format.asp">DATE_FORMAT</a></td>
                            <td>Formats a date</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_date_sub.asp">DATE_SUB</a></td>
                            <td>Subtracts a time/date interval from a date and then returns the date</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_day.asp">DAY</a></td>
                            <td>Returns the day of the month for a given date</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_dayname.asp">DAYNAME</a></td>
                            <td>Returns the weekday name for a given date</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_dayofmonth.asp">DAYOFMONTH</a></td>
                            <td>Returns the day of the month for a given date</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_dayofweek.asp">DAYOFWEEK</a></td>
                            <td>Returns the weekday index for a given date</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_dayofyear.asp">DAYOFYEAR</a></td>
                            <td>Returns the day of the year for a given date</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_extract.asp">EXTRACT</a></td>
                            <td>Extracts a part from a given date</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_from_days.asp">FROM_DAYS</a></td>
                            <td>Returns a date from a numeric datevalue</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_hour.asp">HOUR</a></td>
                            <td>Returns the hour part for a given date</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_last_day.asp">LAST_DAY</a></td>
                            <td>Extracts the last day of the month for a given date</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_localtime.asp">LOCALTIME</a></td>
                            <td>Returns the current date and time</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_localtimestamp.asp">LOCALTIMESTAMP</a></td>
                            <td>Returns the current date and time</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_makedate.asp">MAKEDATE</a></td>
                            <td>Creates and returns a date based on a year and a number of days value</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_maketime.asp">MAKETIME</a></td>
                            <td>Creates and returns a time based on an hour, minute, and second value</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_microsecond.asp">MICROSECOND</a></td>
                            <td>Returns the microsecond part of a time/datetime</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_minute.asp">MINUTE</a></td>
                            <td>Returns the minute part of a time/datetime</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_month.asp">MONTH</a></td>
                            <td>Returns the month part for a given date</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_monthname.asp">MONTHNAME</a></td>
                            <td>Returns the name of the month for a given date</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_now.asp">NOW</a></td>
                            <td>Returns the current date and time</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_period_add.asp">PERIOD_ADD</a></td>
                            <td>Adds a specified number of months to a period</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_period_diff.asp">PERIOD_DIFF</a></td>
                            <td>Returns the difference between two periods</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_quarter.asp">QUARTER</a></td>
                            <td>Returns the quarter of the year for a given date value</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_second.asp">SECOND</a></td>
                            <td>Returns the seconds part of a time/datetime</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_sec_to_time.asp">SEC_TO_TIME</a></td>
                            <td>Returns a time value based on the specified seconds</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_str_to_date.asp">STR_TO_DATE</a></td>
                            <td>Returns a date based on a string and a format</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_subdate.asp">SUBDATE</a></td>
                            <td>Subtracts a time/date interval from a date and then returns the date</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_subtime.asp">SUBTIME</a></td>
                            <td>Subtracts a time interval from a datetime and then returns the time/datetime</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_sysdate.asp">SYSDATE</a></td>
                            <td>Returns the current date and time</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_time.asp">TIME</a></td>
                            <td>Extracts the time part from a given time/datetime</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_time_format.asp">TIME_FORMAT</a></td>
                            <td>Formats a time by a specified format</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_time_to_sec.asp">TIME_TO_SEC</a></td>
                            <td>Converts a time value into seconds</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_timediff.asp">TIMEDIFF</a></td>
                            <td>Returns the difference between two time/datetime expressions</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_timestamp.asp">TIMESTAMP</a></td>
                            <td>Returns a datetime value based on a date or datetime value</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_to_days.asp">TO_DAYS</a></td>
                            <td>Returns the number of days between a date and date "0000-00-00"</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_week.asp">WEEK</a></td>
                            <td>Returns the week number for a given date</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_weekday.asp">WEEKDAY</a></td>
                            <td>Returns the weekday number for a given date</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_weekofyear.asp">WEEKOFYEAR</a></td>
                            <td>Returns the week number for a given date</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_year.asp">YEAR</a></td>
                            <td>Returns the year part for a given date</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_yearweek.asp">YEARWEEK</a></td>
                            <td>Returns the year and week number for a given date</td>
                        </tr>
                    </tbody></table>
                <hr>

                <h2>MySQL Advanced Functions</h2>
                <table class="ws-table-all notranslate">
                    <tbody><tr>
                            <th style="width:25%">Function</th>
                            <th>Description</th>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_bin.asp">BIN</a></td>
                            <td>Returns a binary representation of a number</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_binary.asp">BINARY</a></td>
                            <td>Converts a value to a binary string</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_case.asp">CASE</a></td>
                            <td>Goes through conditions and return a value when the first condition is 
                                met</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_cast.asp">CAST</a></td>
                            <td>Converts a value (of any type) into a specified datatype</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_coalesce.asp">COALESCE</a></td>
                            <td>Returns the first non-null value in a list</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_connection_id.asp">CONNECTION_ID</a></td>
                            <td>Returns the unique connection ID for the current connection</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_conv.asp">CONV</a></td>
                            <td>Converts a number from one numeric base system to another</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_convert.asp">CONVERT</a></td>
                            <td>Converts a value into the specified datatype or character set</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_current_user.asp">CURRENT_USER</a></td>
                            <td>Returns the user name and host name for the MySQL account that the server 
                                used to authenticate the current client</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_database.asp">DATABASE</a></td>
                            <td>Returns the name of the current database</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_if.asp">IF</a></td>
                            <td>Returns a value if a condition is TRUE, or another value if a condition is FALSE</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_ifnull.asp">IFNULL</a></td>
                            <td>Return a specified value if the expression is NULL, otherwise return the 
                                expression</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_isnull.asp">ISNULL</a></td>
                            <td>Returns 1 or 0 depending on whether an expression is NULL</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_last_insert_id.asp">LAST_INSERT_ID</a></td>
                            <td>Returns the AUTO_INCREMENT id of the last row that has been inserted or 
                                updated in a table</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_nullif.asp">NULLIF</a></td>
                            <td>Compares two expressions and returns NULL if they are equal. Otherwise, the 
                                first expression is returned</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_session_user.asp">SESSION_USER</a></td>
                            <td>Returns the current MySQL user name and host name</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_system_user.asp">SYSTEM_USER</a></td>
                            <td>Returns the current MySQL user name and host name</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_user.asp">USER</a></td>
                            <td>Returns the current MySQL user name and host name</td>
                        </tr>
                        <tr>
                            <td><a href="func_mysql_version.asp">VERSION</a></td>
                            <td>Returns the current version of the MySQL database</td>
                        </tr>
                    </tbody></table>


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
