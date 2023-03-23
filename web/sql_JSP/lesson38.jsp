<%-- 
    Document   : lesson38
    Created on : Feb 4, 2023, 2:03:46 AM
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
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>    </head>
</head>
<body>
    <jsp:include page="../Menu_lesson/header_menu.jsp"></jsp:include>
        <div class="w3-col l10 m12" class="main" style="margin: 0 100px;padding-top: 0px"> 
            <h1>SQL <span class="color_h1">Operators</span></h1>

            <hr>
            <h2>SQL Arithmetic Operators</h2>
            <table class="ws-table-all notranslate">
                <tbody><tr>
                        <th style="width:20%">Operator</th>
                        <th style="width:70%">Description</th>
                        <th style="width:10%">Example</th>
                    </tr>
                    <tr>
                        <td>+</td>
                        <td>Add</td>
                        <td><a target="_blank" class="w3-btn btnsmall" href="trysql.asp?filename=trysql_op_add">Try it</a></td>
                    </tr>
                    <tr>
                        <td>-</td>
                        <td>Subtract</td>
                        <td><a target="_blank" class="w3-btn btnsmall" href="trysql.asp?filename=trysql_op_subtract">Try it</a></td>
                    </tr>
                    <tr>
                        <td>*</td>
                        <td>Multiply</td>
                        <td><a target="_blank" class="w3-btn btnsmall" href="trysql.asp?filename=trysql_op_multiply">Try it</a></td>
                    </tr>
                    <tr>
                        <td>/</td>
                        <td>Divide</td>
                        <td><a target="_blank" class="w3-btn btnsmall" href="trysql.asp?filename=trysql_op_divide">Try it</a></td>
                    </tr>
                    <tr>
                        <td>%</td>
                        <td>Modulo</td>
                        <td><a target="_blank" class="w3-btn btnsmall" href="trysql.asp?filename=trysql_op_modulo">Try it</a></td>
                    </tr>
                </tbody></table>
            <hr>

            <h2>SQL Bitwise Operators</h2>
            <table class="ws-table-all notranslate">
                <tbody><tr>
                        <th style="width:20%">Operator</th>
                        <th>Description</th>
                    </tr>
                    <tr>
                        <td>&amp;</td>
                        <td>Bitwise AND</td>
                    </tr>
                    <tr>
                        <td>|</td>
                        <td>Bitwise OR</td>
                    </tr>
                    <tr>
                        <td>^</td>
                        <td>Bitwise exclusive OR</td>
                    </tr>
                </tbody></table>
            <hr>

            <h2>SQL Comparison Operators</h2>
            <table class="ws-table-all notranslate">
                <tbody><tr>
                        <th style="width:20%">Operator</th>
                        <th style="width:70%">Description</th>
                        <th style="width:10%">Example</th>
                    </tr>
                    <tr>
                        <td>=</td>
                        <td>Equal to</td>
                        <td><a target="_blank" class="w3-btn btnsmall" href="trysql.asp?filename=trysql_op_equal_to">Try it</a></td>
                    </tr>
                    <tr>
                        <td>&gt;</td>
                        <td>Greater than</td>
                        <td><a target="_blank" class="w3-btn btnsmall" href="trysql.asp?filename=trysql_op_greater_than">Try it</a></td>
                    </tr>
                    <tr>
                        <td>&lt;</td>
                        <td>Less than</td>
                        <td><a target="_blank" class="w3-btn btnsmall" href="trysql.asp?filename=trysql_op_less_than">Try it</a></td>
                    </tr>
                    <tr>
                        <td>&gt;=</td>
                        <td>Greater than or equal to</td>
                        <td><a target="_blank" class="w3-btn btnsmall" href="trysql.asp?filename=trysql_op_greater_than2">Try it</a></td>
                    </tr>
                    <tr>
                        <td>&lt;=</td>
                        <td>Less than or equal to</td>
                        <td><a target="_blank" class="w3-btn btnsmall" href="trysql.asp?filename=trysql_op_less_than2">Try it</a></td>
                    </tr>
                    <tr>
                        <td>&lt;&gt;</td>
                        <td>Not equal to</td>
                        <td><a target="_blank" class="w3-btn btnsmall" href="trysql.asp?filename=trysql_op_not_equal_to">Try it</a></td>
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

            <h2>SQL Compound Operators</h2>
            <table class="ws-table-all notranslate">
                <tbody><tr>
                        <th style="width:20%">Operator</th>
                        <th>Description</th>
                    </tr>
                    <tr>
                        <td>+=</td>
                        <td>Add equals</td>
                    </tr>
                    <tr>
                        <td>-=</td>
                        <td>Subtract equals</td>
                    </tr>
                    <tr>
                        <td>*=</td>
                        <td>Multiply equals</td>
                    </tr>
                    <tr>
                        <td>/=</td>
                        <td>Divide equals</td>
                    </tr>
                    <tr>
                        <td>%=</td>
                        <td>Modulo equals</td>
                    </tr>
                    <tr>
                        <td>&amp;=</td>
                        <td>Bitwise AND equals</td>
                    </tr>
                    <tr>
                        <td>^-=</td>
                        <td>Bitwise exclusive equals</td>
                    </tr>
                    <tr>
                        <td>|*=</td>
                        <td>Bitwise OR equals</td>
                    </tr>
                </tbody></table>
            <hr>

            <h2>SQL Logical Operators</h2>

            <table class="ws-table-all notranslate">
                <tbody><tr>
                        <th style="width:20%">Operator</th>
                        <th style="width:70%">Description</th>
                        <th style="width:10%">Example</th>
                    </tr>
                    <tr>
                        <td>ALL</td>
                        <td>TRUE if all of the subquery values meet the condition</td>
                        <td><a target="_blank" class="w3-btn btnsmall" href="trysql.asp?filename=trysql_op_all&amp;ss=-1">Try it</a></td>
                    </tr>
                    <tr>
                        <td>AND</td>
                        <td>TRUE if all the conditions separated by AND is TRUE</td>
                        <td><a target="_blank" class="w3-btn btnsmall" href="trysql.asp?filename=trysql_op_and">Try it</a></td>
                    </tr>
                    <tr>
                        <td>ANY</td>
                        <td>TRUE if any of the subquery values meet the condition</td>
                        <td><a target="_blank" class="w3-btn btnsmall" href="trysql.asp?filename=trysql_op_any&amp;ss=-1">Try it</a></td>
                    </tr>
                    <tr>
                        <td>BETWEEN</td>
                        <td>TRUE if the operand is within the range of comparisons</td>
                        <td><a target="_blank" class="w3-btn btnsmall" href="trysql.asp?filename=trysql_op_between">Try it</a></td>
                    </tr>
                    <tr>
                        <td>EXISTS</td>
                        <td>TRUE if the subquery returns one or more records</td>
                        <td><a target="_blank" class="w3-btn btnsmall" href="trysql.asp?filename=trysql_op_exists">Try it</a></td>
                    </tr>
                    <tr>
                        <td>IN</td>
                        <td>TRUE if the operand is equal to one of a list of expressions</td>
                        <td><a target="_blank" class="w3-btn btnsmall" href="trysql.asp?filename=trysql_op_in">Try it</a></td>
                    </tr>
                    <tr>
                        <td>LIKE</td>
                        <td>TRUE if the operand matches a pattern</td>
                        <td><a target="_blank" class="w3-btn btnsmall" href="trysql.asp?filename=trysql_op_like">Try it</a></td>
                    </tr>
                    <tr>
                        <td>NOT</td>
                        <td>Displays a record if the condition(s) is NOT TRUE</td>
                        <td><a target="_blank" class="w3-btn btnsmall" href="trysql.asp?filename=trysql_op_not">Try it</a></td>
                    </tr>
                    <tr>
                        <td>OR</td>
                        <td>TRUE if any of the conditions separated by OR is TRUE</td>
                        <td><a target="_blank" class="w3-btn btnsmall" href="trysql.asp?filename=trysql_op_or">Try it</a></td>
                    </tr>
                    <tr>
                        <td>SOME</td>
                        <td>TRUE if any of the subquery values meet the condition</td>
                        <td><a target="_blank" class="w3-btn btnsmall" href="trysql.asp?filename=trysql_op_some&amp;ss=-1">Try it</a></td>
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
