<%-- 
    Document   : lesson64
    Created on : Feb 4, 2023, 10:33:01 AM
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
                <h1>MS Access <span class="color_h1">Functions </span></h1>

                <hr>
                <p class="intro">MS Access has many built-in functions.</p>
                <p class="intro">This reference contains the string, numeric, and date functions 
                    in MS Access.</p>
                <hr>

                <h2>MS Access String Functions</h2>
                <table class="ws-table-all notranslate">
                    <tbody><tr>
                            <th style="width:25%">Function</th>
                            <th>Description</th>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_asc.asp">Asc</a></td>
                            <td>Returns the ASCII value for the specific character</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_chr.asp">Chr</a></td>
                            <td>Returns the character for the specified ASCII number code</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_concat.asp">Concat with &amp;</a></td>
                            <td>Adds two or more strings together</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_curdir.asp">CurDir</a></td>
                            <td>Returns the full path for a specified drive</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_format.asp">Format</a></td>
                            <td>Formats a value with the specified format</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_instr.asp">InStr</a></td>
                            <td>Gets the position of the first occurrence of a string in another</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_instrrev.asp">InstrRev</a></td>
                            <td>Gets the position of the first occurrence of a string in another, 
                                from the end of string</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_lcase.asp">LCase</a></td>
                            <td>Converts a string to lower-case</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_left.asp">Left</a></td>
                            <td>Extracts a number of characters from a string (starting from left)</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_len.asp">Len</a></td>
                            <td>Returns the length of a string</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_ltrim.asp">LTrim</a></td>
                            <td>Removes leading spaces from a string</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_mid.asp">Mid</a></td>
                            <td>Extracts some characters from a string (starting at any position)</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_replace.asp">Replace</a></td>
                            <td>Replaces a substring within a string, with another 
                                substring, a specified number of times</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_right.asp">Right</a></td>
                            <td>Extracts a number of characters from a string (starting from right)</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_rtrim.asp">RTrim</a></td>
                            <td>Removes trailing spaces from a string</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_space.asp">Space</a></td>
                            <td>Returns a string of the specified number of space characters</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_split.asp">Split</a></td>
                            <td>Splits a string into an array of substrings</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_str.asp">Str</a></td>
                            <td>Returns a number as string</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_strcomp.asp">StrComp</a></td>
                            <td>Compares two strings</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_strconv.asp">StrConv</a></td>
                            <td>Returns a converted string</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_strreverse.asp">StrReverse</a></td>
                            <td>Reverses a string and returns the result</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_trim.asp">Trim</a></td>
                            <td>Removes both leading and trailing spaces from a string</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_ucase.asp">UCase</a></td>
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

                <h2>MS Access Numeric Functions</h2>
                <table class="ws-table-all notranslate">
                    <tbody><tr>
                            <th style="width:25%">Function</th>
                            <th>Description</th>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_abs.asp">Abs</a></td>
                            <td>Returns the absolute value of a number</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_atn.asp">Atn</a></td>
                            <td>Returns the arc tangent of a number</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_avg.asp">Avg</a></td>
                            <td>Returns the average value of an expression</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_cos.asp">Cos</a></td>
                            <td>Returns the cosine of an angle</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_count.asp">Count</a></td>
                            <td>Returns the number of records returned by a select query</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_exp.asp">Exp</a></td>
                            <td>Returns e raised to the power of a specified number</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_fix.asp">Fix</a></td>
                            <td>Returns the integer part of a number</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_format_number.asp">Format</a></td>
                            <td>Formats a numeric value with the specified format</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_int.asp">Int</a></td>
                            <td>Returns the integer part of a number</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_max.asp">Max</a></td>
                            <td>Returns the maximum value in a set of values</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_min.asp">Min</a></td>
                            <td>Returns the minimum value in a set of values</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_randomize.asp">Randomize</a></td>
                            <td>Initializes the random number generator (used by Rnd()) with a seed</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_rnd.asp">Rnd</a></td>
                            <td>Returns a random number</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_round.asp">Round</a></td>
                            <td>Rounds a number to a specified number of decimal places</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_sgn.asp">Sgn</a></td>
                            <td>Returns the sign of a number</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_sqr.asp">Sqr</a></td>
                            <td>Returns the square root of a number</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_sum.asp">Sum</a></td>
                            <td>Calculates the sum of a set of values</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_val.asp">Val</a></td>
                            <td>Reads a string and returns the numbers found in the string</td>
                        </tr>
                    </tbody></table>
                <hr>

                <h2>MS Access Date Functions</h2>
                <table class="ws-table-all notranslate">
                    <tbody><tr>
                            <th style="width:25%">Function</th>
                            <th>Description</th>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_date.asp">Date</a></td>
                            <td>Returns the current system date</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_dateadd.asp">DateAdd</a></td>
                            <td>Adds a time/date interval to a date and then returns the date</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_datediff.asp">DateDiff</a></td>
                            <td>Returns the difference between two dates</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_datepart.asp">DatePart</a></td>
                            <td>Returns a specified part of a date (as an integer)</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_dateserial.asp">DateSerial</a></td>
                            <td>Returns a date from the specified parts (year, month, and day values)</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_datevalue.asp">DateValue</a></td>
                            <td>Returns a date based on a string</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_day.asp">Day</a></td>
                            <td>Returns the day of the month for a given date</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_format_date.asp">Format</a></td>
                            <td>Formats a date value with the specified format</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_hour.asp">Hour</a></td>
                            <td>Returns the hour part of a time/datetime</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_minute.asp">Minute</a></td>
                            <td>Returns the minute part of a time/datetime</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_month.asp">Month</a></td>
                            <td>Returns the month part of a given date</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_monthname.asp">MonthName</a></td>
                            <td>Returns the name of the month based on a number</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_now.asp">Now</a></td>
                            <td>Returns the current date and time based on the computer's system date and 
                                time</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_second.asp">Second</a></td>
                            <td>Returns the seconds part of a time/datetime</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_time.asp">Time</a></td>
                            <td>Returns the current system time</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_timeserial.asp">TimeSerial</a></td>
                            <td>Returns a time from the specified parts (hour, minute, and second value)</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_timevalue.asp">TimeValue</a></td>
                            <td>Returns a time based on a string</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_weekday.asp">Weekday</a></td>
                            <td>Returns the weekday number for a given date</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_weekdayname.asp">WeekdayName</a></td>
                            <td>Returns the weekday name based on a number</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_year.asp">Year</a></td>
                            <td>Returns the year part of a given date</td>
                        </tr>
                    </tbody></table>
                <hr>

                <h2>MS Access Some Other Functions</h2>
                <table class="ws-table-all notranslate">
                    <tbody><tr>
                            <th style="width:25%">Function</th>
                            <th>Description</th>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_currentuser.asp">CurrentUser</a></td>
                            <td>Returns the name of the current database user</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_environ.asp">Environ</a></td>
                            <td>Returns a string that contains the value of an operating system environment 
                                variable</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_isdate.asp">IsDate</a></td>
                            <td>Checks whether an expression can be converted to a date</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_isnull.asp">IsNull</a></td>
                            <td>Checks whether an expression contains Null (no data)</td>
                        </tr>
                        <tr>
                            <td><a href="func_msaccess_isnumeric.asp">IsNumeric</a></td>
                            <td>Checks whether an expression is a valid number</td>
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
