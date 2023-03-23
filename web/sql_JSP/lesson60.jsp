<%-- 
    Document   : lesson60
    Created on : Feb 4, 2023, 10:25:10 AM
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
                <h1>SQL <span class="color_h1">Data Types for MySQL, SQL Server, and MS Access</span></h1>

                <hr>
                <p class="intro">The data type of a column defines what value the column can hold: 
                    integer, character, money, date and time, binary, 
                    and so on.</p>
                <hr>

                <h2>SQL Data Types</h2>
                <p>Each column in a database table is required to have a name and a data type.</p>
                <p>An SQL developer must decide what type of data that will be stored inside each 
                    column when creating a table. The data type is a 
                    guideline for SQL to understand what type of data is expected inside of each 
                    column, and it also identifies how SQL will interact with the stored data.</p>
                <div class="w3-panel w3-note">
                    <p><strong>Note:</strong> Data types might have different names in different database.
                        And even if the name is the same, the size and other details may be different! 
                        <strong>Always check the 
                            documentation!</strong></p>
                </div>
                <hr>

                <h2>MySQL Data Types (Version 8.0)</h2>
                <p>In MySQL there are three main data types: string, numeric, and date and time.</p>
                <h3>String Data Types</h3>
                <div class="w3-responsive">
                    <table class="ws-table-all notranslate">
                        <tbody><tr>
                                <th style="width:30%">Data type</th>
                                <th>Description</th>
                            </tr>
                            <tr>
                                <td>CHAR(size)</td>
                                <td>A FIXED length string (can contain letters, numbers, and special characters). The
                                    <em>size</em> parameter specifies the column length in characters - can be 
                                    from 0 to   255. Default is 1</td>
                            </tr>
                            <tr>
                                <td>VARCHAR(size)</td>
                                <td>A VARIABLE length string (can contain letters, numbers, and special 
                                    characters). The <em>size</em> parameter specifies the maximum string 
                                    length in characters - can be from 0 to 65535</td>
                            </tr>
                            <tr>
                                <td>BINARY(size)</td>
                                <td>Equal to CHAR(), but stores binary byte strings. The <em>size</em> 
                                    parameter specifies the column length in bytes. Default is 1</td>
                            </tr>
                            <tr>
                                <td>VARBINARY(size)</td>
                                <td>Equal to VARCHAR(), but stores binary byte strings. The <em>size</em> 
                                    parameter specifies the maximum column length in bytes.</td>
                            </tr>
                            <tr>
                                <td>TINYBLOB</td>
                                <td>For BLOBs (Binary Large Objects). Max length: 255 bytes</td>
                            </tr>
                            <tr>
                                <td>TINYTEXT</td>
                                <td>Holds a string with a maximum length of 255 characters</td>
                            </tr>
                            <tr>
                                <td>TEXT(size)</td>
                                <td>Holds a string with a maximum length of 65,535 bytes</td>
                            </tr>
                            <tr>
                                <td>BLOB(size)</td>
                                <td>For BLOBs (Binary Large Objects). Holds up to 65,535 bytes of data</td>
                            </tr>
                            <tr>
                                <td>MEDIUMTEXT</td>
                                <td>Holds a string with a maximum length of 16,777,215 characters</td>
                            </tr>
                            <tr>
                                <td>MEDIUMBLOB</td>
                                <td>For BLOBs (Binary Large Objects). Holds up to 16,777,215 bytes of data</td>
                            </tr>
                            <tr>
                                <td>LONGTEXT</td>
                                <td>Holds a string with a maximum length of 4,294,967,295 characters</td>
                            </tr>
                            <tr>
                                <td>LONGBLOB</td>
                                <td>For BLOBs (Binary Large Objects). Holds up to 4,294,967,295 bytes of data</td>
                            </tr>
                            <tr>
                                <td>ENUM(val1, val2, val3, ...)</td>
                                <td>A string object that can have only one value, chosen from a list of possible values. You can list up to 65535 values in an ENUM list. If a value is inserted that is not in the list, a   blank value will be inserted. 
                                    The values are sorted in the order you enter them</td>
                            </tr>
                            <tr>
                                <td>SET(val1, val2, val3, ...)</td>
                                <td>A string object that can have 0 or more values, chosen from a list of 
                                    possible values. You can list up to 64 values in a SET list</td>
                            </tr>
                        </tbody></table>
                </div>

                <h3>Numeric Data Types</h3>
                <div class="w3-responsive">
                    <table class="ws-table-all notranslate">
                        <tbody><tr>
                                <th style="width:30%">Data type</th>
                                <th>Description</th>
                            </tr>
                            <tr>
                                <td>BIT(<em>size</em>)</td>
                                <td>A bit-value type. The number of bits per value is specified in <em>size</em>. 
                                    The <em>size</em> parameter can hold a value from 1 to 64. The default 
                                    value for <em>size</em> is 1.</td>
                            </tr>
                            <tr>
                                <td>TINYINT(<em>size</em>)</td>
                                <td>A very small integer. Signed range is from -128 to 127. Unsigned range 
                                    is from 0 to 255. The <em>size</em> parameter specifies the maximum 
                                    display width (which is 255)</td>
                            </tr>
                            <tr>
                                <td>BOOL</td>
                                <td>Zero is considered as false, nonzero values are considered as true. </td>
                            </tr>
                            <tr>
                                <td>BOOLEAN</td>
                                <td>Equal to BOOL</td>
                            </tr>
                            <tr>
                                <td>SMALLINT(<em>size</em>)</td>
                                <td>A small integer. Signed range is from -32768 to 32767. Unsigned range 
                                    is from 0 to 65535. The <em>size</em> parameter specifies the maximum 
                                    display width (which is 255)</td>
                            </tr>
                            <tr>
                                <td>MEDIUMINT(<em>size</em>)</td>
                                <td>A medium integer. Signed range is from -8388608 to 8388607. Unsigned 
                                    range is from 0 to 16777215. The <em>size</em> parameter specifies the 
                                    maximum display width (which is 255)</td>
                            </tr>
                            <tr>
                                <td>INT(<em>size</em>)</td>
                                <td>A medium integer. Signed range is from -2147483648 to 2147483647. 
                                    Unsigned range is from 0 to 4294967295. The <em>size</em> parameter 
                                    specifies the maximum display width (which is 255)</td>
                            </tr>
                            <tr>
                                <td>INTEGER(<em>size</em>)</td>
                                <td>Equal to INT(size)</td>
                            </tr>
                            <tr>
                                <td>BIGINT(<em>size</em>)</td>
                                <td>A large integer. Signed range is from -9223372036854775808 to 
                                    9223372036854775807. Unsigned range is from 0 to 18446744073709551615. The
                                    <em>size</em> parameter specifies the maximum display width (which is 255)</td>
                            </tr>
                            <tr>
                                <td>FLOAT(<em>size</em>, <em>d</em>)</td>
                                <td>A floating point number. The total number of digits is specified in 
                                    <em>size</em>. The   number of digits after the decimal point is specified 
                                    in the <em>d</em> parameter. This syntax is deprecated in MySQL 8.0.17, 
                                    and it will be removed in future MySQL versions</td>
                            </tr>
                            <tr>
                                <td>FLOAT(<em>p</em>)</td>
                                <td>A floating point number. MySQL uses the <em>p</em> value to determine 
                                    whether to use FLOAT or DOUBLE for the resulting data type. If <em>p</em> 
                                    is from 0 to 24, the data type becomes FLOAT(). If <em>p</em> is from 25 to 
                                    53, the data type becomes DOUBLE()</td>
                            </tr>
                            <tr>
                                <td>DOUBLE(<em>size</em>, <em>d</em>)</td>
                                <td>A normal-size floating point number. The total number of digits is specified in 
                                    <em>size</em>. The   number of digits after the decimal point is specified 
                                    in the <em>d</em> parameter</td>
                            </tr>
                            <tr>
                                <td>DOUBLE PRECISION(<em>size</em>, <em>d</em>)</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>DECIMAL(<em>size</em>, <em>d</em>)</td>
                                <td>An exact fixed-point number. The   total number of digits is specified in 
                                    <em>size</em>. The   number of digits after the decimal point is specified 
                                    in the <em>d</em> parameter. The maximum number for <em>size</em> is 65. 
                                    The maximum number for <em>d</em> is 30. The default value for <em>size</em> 
                                    is 10. The default value for <em>d</em> is 0.</td>
                            </tr>
                            <tr>
                                <td>DEC(<em>size</em>, <em>d</em>)</td>
                                <td>Equal to DECIMAL(size,d)</td>
                            </tr>
                        </tbody></table>
                </div>
                <p><strong>Note:</strong> All the numeric data types may have an extra option: UNSIGNED 
                    or ZEROFILL. If you add the UNSIGNED option, MySQL disallows negative values for 
                    the column. If you add the ZEROFILL option, MySQL automatically also adds the 
                    UNSIGNED attribute to the column.</p>

                <h3>Date and Time Data Types</h3>
                <table class="ws-table-all notranslate">
                    <tbody><tr>
                            <th style="width:30%">Data type</th>
                            <th>Description</th>
                        </tr>
                        <tr>
                            <td>DATE</td>
                            <td>A date. Format: YYYY-MM-DD. The supported range is from '1000-01-01' to '9999-12-31'</td>
                        </tr>
                        <tr>
                            <td>DATETIME(<em>fsp</em>)</td>
                            <td>A date and time combination. Format: YYYY-MM-DD hh:mm:ss. The supported range is from '1000-01-01 00:00:00' to '9999-12-31 23:59:59'. 
                                Adding DEFAULT and ON UPDATE in the column definition to get automatic 
                                initialization and updating to the current date and time</td>
                        </tr>
                        <tr>
                            <td>TIMESTAMP(<em>fsp</em>)</td>
                            <td>A timestamp. TIMESTAMP values are stored as the number of seconds since the Unix epoch ('1970-01-01 00:00:00' UTC). Format: YYYY-MM-DD   
                                hh:mm:ss. The supported range is from '1970-01-01 00:00:01'   UTC to '2038-01-09 03:14:07' UTC. 
                                Automatic initialization and updating to the current date and time can be 
                                specified using DEFAULT CURRENT_TIMESTAMP and ON UPDATE CURRENT_TIMESTAMP 
                                in the column definition</td>
                        </tr>
                        <tr>
                            <td>TIME(<em>fsp</em>)</td>
                            <td>A time. Format: hh:mm:ss. The supported range is from '-838:59:59' to '838:59:59'</td>
                        </tr>
                        <tr>
                            <td>YEAR</td>
                            <td>A year in four-digit format. Values allowed in four-digit format: 1901 to 2155, and 0000.<br>
                                MySQL 8.0 does not support year in two-digit format.</td>
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

                <h2>SQL Server Data Types</h2>
                <h3>String Data Types</h3>
                <div class="w3-responsive">
                    <table class="ws-table-all notranslate">
                        <tbody><tr>
                                <th style="width:30%">Data type</th>
                                <th>Description</th>
                                <th>Max size</th>
                                <th>Storage</th>
                            </tr>
                            <tr>
                                <td>char(n)</td>
                                <td>Fixed width character string</td>
                                <td>8,000 characters</td>
                                <td>Defined width</td>
                            </tr>
                            <tr>
                                <td>varchar(n)</td>
                                <td>Variable width character string</td>
                                <td>8,000 characters</td>
                                <td>2 bytes + number of chars</td>
                            </tr>
                            <tr>
                                <td>varchar(max)</td>
                                <td>Variable width character string</td>
                                <td>1,073,741,824 characters</td>
                                <td>2 bytes + number of chars</td>
                            </tr>
                            <tr>
                                <td>text</td>
                                <td>Variable width character string</td>
                                <td>2GB of text data</td>
                                <td>4 bytes + number of chars</td>
                            </tr>
                            <tr>
                                <td>nchar</td>
                                <td>Fixed width Unicode string</td>
                                <td>4,000 characters</td>
                                <td>Defined width x 2</td>
                            </tr>
                            <tr>
                                <td>nvarchar</td>
                                <td>Variable width Unicode string</td>
                                <td>4,000 characters</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>nvarchar(max)</td>
                                <td>Variable width Unicode string</td>
                                <td>536,870,912 characters</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>ntext</td>
                                <td>Variable width Unicode string</td>
                                <td>2GB of text data</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>binary(n)</td>
                                <td>Fixed width binary string</td>
                                <td>8,000 bytes</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>varbinary</td>
                                <td>Variable width binary string</td>
                                <td>8,000 bytes</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>varbinary(max)</td>
                                <td>Variable width binary string</td>
                                <td>2GB</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>image</td>
                                <td>Variable width binary string</td>
                                <td>2GB</td>
                                <td>&nbsp;</td>
                            </tr>
                        </tbody></table>
                </div>

                <h3>Numeric Data Types</h3>
                <div class="w3-responsive">
                    <table class="ws-table-all notranslate">
                        <tbody><tr>
                                <th style="width:20%">Data type</th>
                                <th>Description</th>
                                <th style="width:10%">Storage</th>
                            </tr>
                            <tr>
                                <td>bit</td>
                                <td>Integer that can be 0, 1, or NULL</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>tinyint</td>
                                <td>Allows whole numbers from 0 to 255</td>
                                <td>1 byte</td>
                            </tr>
                            <tr>
                                <td>smallint</td>
                                <td>Allows whole numbers between -32,768 and 32,767</td>
                                <td>2 bytes</td>
                            </tr>
                            <tr>
                                <td>int</td>
                                <td>Allows whole numbers between -2,147,483,648 and 2,147,483,647 </td>
                                <td>4 bytes</td>
                            </tr>
                            <tr>
                                <td>bigint</td>
                                <td>Allows whole numbers between -9,223,372,036,854,775,808 and   9,223,372,036,854,775,807 </td>
                                <td>8 bytes</td>
                            </tr>
                            <tr>
                                <td>decimal(p,s)</td>
                                <td>Fixed precision and scale numbers.
                                    <p>Allows numbers from -10^38 +1 to 10^38 –1.</p>
                                    <p>The p parameter indicates the maximum total number of digits that can  be stored (both to the left and to the right of the decimal point). p  must be a value from 1 to 38. Default is 18.</p>
                                    <p>The s parameter indicates the maximum number of digits stored to the  right of the decimal point. s must be a value from 0 to p. Default value  is 0</p></td>
                                <td>5-17 bytes</td>
                            </tr>
                            <tr>
                                <td>numeric(p,s)</td>
                                <td>Fixed precision and scale numbers.
                                    <p>Allows numbers from -10^38 +1 to 10^38 –1.</p>
                                    <p>The p parameter indicates the maximum total number of digits that can  be stored (both to the left and to the right of the decimal point). p  must be a value from 1 to 38. Default is 18.</p>
                                    <p>The s parameter indicates the maximum number of digits stored to the  right of the decimal point. s must be a value from 0 to p. Default value  is 0</p></td>
                                <td>5-17 bytes</td>
                            </tr>
                            <tr>
                                <td>smallmoney</td>
                                <td>Monetary data from -214,748.3648 to 214,748.3647 </td>
                                <td>4 bytes</td>
                            </tr>
                            <tr>
                                <td>money</td>
                                <td>Monetary data from -922,337,203,685,477.5808 to   922,337,203,685,477.5807</td>
                                <td>8 bytes</td>
                            </tr>
                            <tr>
                                <td>float(n)</td>
                                <td>Floating precision number data from -1.79E + 308 to 1.79E + 308.<p>The   n parameter indicates whether the field should hold 4 or 8 bytes.   float(24) holds a 4-byte field and float(53) holds an 8-byte field.   Default value of n is 53.</p></td>
                                <td>4 or 8 bytes</td>
                            </tr>
                            <tr>
                                <td>real</td>
                                <td>Floating precision number data from -3.40E + 38 to 3.40E + 38</td>
                                <td>4 bytes</td>
                            </tr>
                        </tbody></table>
                </div>

                <h3>Date and Time Data Types</h3>
                <div class="w3-responsive">
                    <table class="ws-table-all notranslate">
                        <tbody><tr>
                                <th style="width:20%">Data type</th>
                                <th>Description</th>
                                <th style="width:10%">Storage</th>
                            </tr>
                            <tr>
                                <td>datetime</td>
                                <td>From January 1, 1753 to December 31, 9999 with an accuracy of 3.33   milliseconds</td>
                                <td>8 bytes</td>
                            </tr>
                            <tr>
                                <td>datetime2</td>
                                <td>From January 1, 0001 to December 31, 9999 with an accuracy of 100   nanoseconds</td>
                                <td>6-8 bytes</td>
                            </tr>
                            <tr>
                                <td>smalldatetime</td>
                                <td>From January 1, 1900 to June 6, 2079 with an accuracy of 1 minute</td>
                                <td>4 bytes</td>
                            </tr>
                            <tr>
                                <td>date</td>
                                <td>Store a date only. From January 1, 0001 to December 31, 9999</td>
                                <td>3 bytes</td>
                            </tr>
                            <tr>
                                <td>time</td>
                                <td>Store a time only to an accuracy of 100 nanoseconds</td>
                                <td>3-5 bytes</td>
                            </tr>
                            <tr>
                                <td>datetimeoffset</td>
                                <td>The same as datetime2 with the addition of a time zone offset</td>
                                <td>8-10 bytes</td>
                            </tr>
                            <tr>
                                <td>timestamp</td>
                                <td>Stores a unique number that gets updated every time a row gets created   or modified. The timestamp value is based upon an internal clock and does   not correspond to real time. Each table may have only one timestamp   variable</td>
                                <td>&nbsp;</td>
                            </tr>
                        </tbody></table>
                </div>

                <h3>Other Data Types</h3>
                <table class="ws-table-all notranslate">
                    <tbody><tr>
                            <th style="width:20%">Data type</th>
                            <th>Description</th>
                        </tr>
                        <tr>
                            <td>sql_variant</td>
                            <td>Stores up to 8,000 bytes of data of various data types, except text,   ntext, and timestamp</td>
                        </tr>
                        <tr>
                            <td>uniqueidentifier</td>
                            <td>Stores a globally unique identifier (GUID)</td>
                        </tr>
                        <tr>
                            <td>xml</td>
                            <td>Stores XML formatted data. Maximum 2GB</td>
                        </tr>
                        <tr>
                            <td>cursor</td>
                            <td>Stores a reference to a cursor used for database operations</td>
                        </tr>
                        <tr>
                            <td>table</td>
                            <td>Stores a result-set for later processing</td>
                        </tr>
                    </tbody></table>
                <hr>
                <h2>MS Access Data Types</h2>
                <div class="w3-responsive">
                    <table class="ws-table-all notranslate">
                        <tbody><tr>
                                <th style="width:20%">Data type</th>
                                <th>Description</th>
                                <th style="width:10%">Storage</th>
                            </tr>
                            <tr>
                                <td>Text</td>
                                <td>Use for text or combinations of text and numbers. 255 characters maximum</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>Memo</td>
                                <td>Memo is used for larger amounts of text. Stores up to 65,536 characters. <b>Note:</b> You cannot sort a memo field. However, they are   searchable</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>Byte</td>
                                <td>Allows whole numbers from 0 to 255</td>
                                <td>1 byte</td>
                            </tr>
                            <tr>
                                <td>Integer</td>
                                <td>Allows whole numbers between -32,768 and 32,767</td>
                                <td>2 bytes</td>
                            </tr>
                            <tr>
                                <td>Long</td>
                                <td>Allows whole numbers between -2,147,483,648 and 2,147,483,647</td>
                                <td>4 bytes</td>
                            </tr>
                            <tr>
                                <td>Single</td>
                                <td>Single precision floating-point. Will handle most decimals </td>
                                <td>4 bytes</td>
                            </tr>
                            <tr>
                                <td>Double</td>
                                <td>Double precision floating-point. Will handle most decimals</td>
                                <td>8 bytes</td>
                            </tr>
                            <tr>
                                <td>Currency</td>
                                <td>Use for currency. Holds up to 15 digits of whole dollars, plus 4 decimal places. <b>Tip:</b> You can choose which country's currency to use</td>
                                <td>8 bytes</td>
                            </tr>
                            <tr>
                                <td>AutoNumber</td>
                                <td>AutoNumber fields automatically give each record its own number, usually starting at 1</td>
                                <td>4 bytes</td>
                            </tr>
                            <tr>
                                <td>Date/Time</td>
                                <td>Use for dates and times</td>
                                <td>8 bytes</td>
                            </tr>
                            <tr>
                                <td>Yes/No</td>
                                <td>A logical field can be displayed as Yes/No, True/False, or On/Off. In code, use the constants True and False (equivalent to -1 and 0). <b>Note:</b>   Null values are not allowed in Yes/No fields</td>
                                <td>1 bit</td>
                            </tr>
                            <tr>
                                <td>Ole Object</td>
                                <td>Can store pictures, audio, video, or other BLOBs (Binary Large Objects)</td>
                                <td>up to 1GB</td>
                            </tr>
                            <tr>
                                <td>Hyperlink</td>
                                <td>Contain links to other files, including web pages</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>Lookup Wizard</td>
                                <td>Let you type a list of options, which can then be chosen from a drop-down list</td>
                                <td>4 bytes</td>
                            </tr>
                        </tbody></table>
                </div>


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
