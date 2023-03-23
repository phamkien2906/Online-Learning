<%-- 
    Document   : lesson63
    Created on : Feb 4, 2023, 10:31:20 AM
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
                <h1>SQL Server <span class="color_h1">Functions</span></h1>

                <hr>
                <p class="intro">SQL Server has many built-in functions.</p>
                <p class="intro">This reference contains string, numeric, date,  
                    conversion, and some advanced functions 
                    in SQL Server.</p>
                <hr>

                <h2>SQL Server String Functions</h2>
                <table class="ws-table-all notranslate">
                    <tbody><tr>
                            <th style="width:25%">Function</th>
                            <th>Description</th>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_ascii.asp">ASCII</a></td>
                            <td>Returns the ASCII value for the specific character</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_char.asp">CHAR</a></td>
                            <td>Returns the character based on the ASCII code</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_charindex.asp">CHARINDEX</a></td>
                            <td>Returns the position of a substring in a string</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_concat.asp">CONCAT</a></td>
                            <td>Adds two or more strings together</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_concat_with_plus.asp">Concat with +</a></td>
                            <td>Adds two or more strings together</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_concat_ws.asp">CONCAT_WS</a></td>
                            <td>Adds two or more strings together with a separator</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_datalength.asp">DATALENGTH</a></td>
                            <td>Returns the number of bytes used to represent an expression</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_difference.asp">DIFFERENCE</a></td>
                            <td>Compares two SOUNDEX values, and returns an integer value</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_format.asp">FORMAT</a></td>
                            <td>Formats a value with the specified format</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_left.asp">LEFT</a></td>
                            <td>Extracts a number of characters from a string (starting from left)</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_len.asp">LEN</a></td>
                            <td>Returns the length of a string</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_lower.asp">LOWER</a></td>
                            <td>Converts a string to lower-case</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_ltrim.asp">LTRIM</a></td>
                            <td>Removes leading spaces from a string</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_nchar.asp">NCHAR</a></td>
                            <td>Returns the Unicode character based on the number code</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_patindex.asp">PATINDEX</a></td>
                            <td>Returns the position of a pattern in a string</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_quotename.asp">QUOTENAME</a></td>
                            <td>Returns a Unicode string with delimiters added to make the string 
                                a valid SQL Server delimited identifier</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_replace.asp">REPLACE</a></td>
                            <td>Replaces all occurrences of a substring within a string, with a new 
                                substring</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_replicate.asp">REPLICATE</a></td>
                            <td>Repeats a string a specified number of times</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_reverse.asp">REVERSE</a></td>
                            <td>Reverses a string and returns the result</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_right.asp">RIGHT</a></td>
                            <td>Extracts a number of characters from a string (starting from right)</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_rtrim.asp">RTRIM</a></td>
                            <td>Removes trailing spaces from a string</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_soundex.asp">SOUNDEX</a></td>
                            <td>Returns a four-character code to evaluate the similarity of two strings</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_space.asp">SPACE</a></td>
                            <td>Returns a string of the specified number of space characters</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_str.asp">STR</a></td>
                            <td>Returns a number as string</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_stuff.asp">STUFF</a></td>
                            <td>Deletes a part of a string and then inserts another part into the string, 
                                starting at a specified position</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_substring.asp">SUBSTRING</a></td>
                            <td>Extracts some characters from a string</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_translate.asp">TRANSLATE</a></td>
                            <td>Returns the string from the first argument after the characters specified in 
                                the second argument are translated into the characters specified in the third 
                                argument.</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_trim.asp">TRIM</a></td>
                            <td>Removes leading and trailing spaces (or other specified characters) from a string</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_unicode.asp">UNICODE</a></td>
                            <td>Returns the Unicode value for the first 
                                character of the input expression</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_upper.asp">UPPER</a></td>
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

                <h2>SQL Server Math/Numeric Functions</h2>
                <table class="ws-table-all notranslate">
                    <tbody><tr>
                            <th style="width:25%">Function</th>
                            <th>Description</th>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_abs.asp">ABS</a></td>
                            <td>Returns the absolute value of a number</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_acos.asp">ACOS</a></td>
                            <td>Returns the arc cosine of a number</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_asin.asp">ASIN</a></td>
                            <td>Returns the arc sine of a number</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_atan.asp">ATAN</a></td>
                            <td>Returns the arc tangent of a number</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_atn2.asp">ATN2</a></td>
                            <td>Returns the arc tangent of two numbers</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_avg.asp">AVG</a></td>
                            <td>Returns the average value of an expression</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_ceiling.asp">CEILING</a></td>
                            <td>Returns the smallest integer value that is &gt;= a number</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_count.asp">COUNT</a></td>
                            <td>Returns the number of records returned by a select query</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_cos.asp">COS</a></td>
                            <td>Returns the cosine of a number</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_cot.asp">COT</a></td>
                            <td>Returns the cotangent of a number</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_degrees.asp">DEGREES</a></td>
                            <td>Converts a value in radians to degrees</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_exp.asp">EXP</a></td>
                            <td>Returns e raised to the power of a specified number</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_floor.asp">FLOOR</a></td>
                            <td>Returns the largest integer value that is &lt;= to a number</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_log.asp">LOG</a></td>
                            <td>Returns the natural logarithm of a number, or the logarithm of a number to a 
                                specified base</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_log10.asp">LOG10</a></td>
                            <td>Returns the natural logarithm of a number to base 10</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_max.asp">MAX</a></td>
                            <td>Returns the maximum value in a set of values</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_min.asp">MIN</a></td>
                            <td>Returns the minimum value in a set of values</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_pi.asp">PI</a></td>
                            <td>Returns the value of PI</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_power.asp">POWER</a></td>
                            <td>Returns the value of a number raised to the power of another number</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_radians.asp">RADIANS</a></td>
                            <td>Converts a degree value into radians</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_rand.asp">RAND</a></td>
                            <td>Returns a random number</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_round.asp">ROUND</a></td>
                            <td>Rounds a number to a specified number of decimal places</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_sign.asp">SIGN</a></td>
                            <td>Returns the sign of a number</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_sin.asp">SIN</a></td>
                            <td>Returns the sine of a number</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_sqrt.asp">SQRT</a></td>
                            <td>Returns the square root of a number</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_square.asp">SQUARE</a></td>
                            <td>Returns the square of a number</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_sum.asp">SUM</a></td>
                            <td>Calculates the sum of a set of values</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_tan.asp">TAN</a></td>
                            <td>Returns the tangent of a number</td>
                        </tr>
                    </tbody></table>
                <hr>

                <h2>SQL Server Date Functions</h2>
                <table class="ws-table-all notranslate">
                    <tbody><tr>
                            <th style="width:25%">Function</th>
                            <th>Description</th>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_current_timestamp.asp">CURRENT_TIMESTAMP</a></td>
                            <td>Returns the current date and time</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_dateadd.asp">DATEADD</a></td>
                            <td>Adds a time/date interval to a date and then returns the date</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_datediff.asp">DATEDIFF</a></td>
                            <td>Returns the difference between two dates</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_datefromparts.asp">DATEFROMPARTS</a></td>
                            <td>Returns a date from the specified parts (year, month, and day values)</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_datename.asp">DATENAME</a></td>
                            <td>Returns a specified part of a date (as string)</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_datepart.asp">DATEPART</a></td>
                            <td>Returns a specified part of a date (as integer)</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_day.asp">DAY</a></td>
                            <td>Returns the day of the month for a specified date</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_getdate.asp">GETDATE</a></td>
                            <td>Returns the current database system date and time</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_getutcdate.asp">GETUTCDATE</a></td>
                            <td>Returns the current database system UTC date and time</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_isdate.asp">ISDATE</a></td>
                            <td>Checks an expression and returns 1 if it is a valid date, otherwise 0</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_month.asp">MONTH</a></td>
                            <td>Returns the month part for a specified date (a number from 1 to 12)</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_sysdatetime.asp">SYSDATETIME</a></td>
                            <td>Returns the date and time of the SQL Server</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_year.asp">YEAR</a></td>
                            <td>Returns the year part for a specified date</td>
                        </tr>
                    </tbody></table>
                <hr>

                <h2>SQL Server Advanced Functions</h2>
                <table class="ws-table-all notranslate">
                    <tbody><tr>
                            <th style="width:25%">Function</th>
                            <th>Description</th>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_cast.asp">CAST</a></td>
                            <td>Converts a value (of any type) into a specified datatype</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_coalesce.asp">COALESCE</a></td>
                            <td>Returns the first non-null value in a list</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_convert.asp">CONVERT</a></td>
                            <td>Converts a value (of any type) into a specified datatype</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_current_user.asp">CURRENT_USER</a></td>
                            <td>Returns the name of the current user in the SQL Server database</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_iif.asp">IIF</a></td>
                            <td>Returns a value if a condition is TRUE, or another value if a condition is FALSE</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_isnull.asp">ISNULL</a></td>
                            <td>Return a specified value if the expression is NULL, otherwise return the 
                                expression</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_isnumeric.asp">ISNUMERIC</a></td>
                            <td>Tests whether an expression is numeric</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_nullif.asp">NULLIF</a></td>
                            <td>Returns NULL if two expressions are equal</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_session_user.asp">SESSION_USER</a></td>
                            <td>Returns the name of the current user in the SQL Server database</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_sessionproperty.asp">SESSIONPROPERTY</a></td>
                            <td>Returns the session settings for a specified option</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_system_user.asp">SYSTEM_USER</a></td>
                            <td>Returns the login name for the current user</td>
                        </tr>
                        <tr>
                            <td><a href="func_sqlserver_user_name.asp">USER_NAME</a></td>
                            <td>Returns the database user name based on the specified id</td>
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
