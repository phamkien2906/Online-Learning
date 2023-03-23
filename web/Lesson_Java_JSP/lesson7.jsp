<%-- 
    Document   : lesson7
    Created on : Feb 1, 2023, 2:56:26 PM
    Author     : mylov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css_lesson/mynewstyle.css"/>  
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="../Menu_lesson/header_menu.jsp"></jsp:include>

        <div class="w3-col l10 m12" class="main" style="margin: 0 100px;padding-top: 0px">



            <h2>Java Data Types</h2>
            <p>As explained in the previous chapter, a <a href="java_variables.asp">variable</a> in Java must be a specified data type:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-int">int</span> myNum <span class="token operator">=</span> <span class="token number">5</span><span class="token punctuation">;</span>               <span class="token comment">// Integer (whole number)</span>
<span class="token keyword keyword-float">float</span> myFloatNum <span class="token operator">=</span> <span class="token number">5.99f</span><span class="token punctuation">;</span>    <span class="token comment">// Floating point number</span>
<span class="token keyword keyword-char">char</span> myLetter <span class="token operator">=</span> <span class="token string">'D'</span><span class="token punctuation">;</span>         <span class="token comment">// Character</span>
<span class="token keyword keyword-boolean">boolean</span> myBool <span class="token operator">=</span> <span class="token boolean">true</span><span class="token punctuation">;</span>       <span class="token comment">// Boolean</span>
<span class="token class-name">String</span> myText <span class="token operator">=</span> <span class="token string">"Hello"</span><span class="token punctuation">;</span>     <span class="token comment">// String</span>
</code></pre>

            </div>

            <p>Data types are divided into two groups:</p>

            <ul>
                <li>Primitive data types - includes <code class="w3-codespan">byte</code>, <code class="w3-codespan">short</code>, <code class="w3-codespan">int</code>, <code class="w3-codespan">long</code>, 
                    <code class="w3-codespan">float</code>, <code class="w3-codespan">double</code>, <code class="w3-codespan">boolean</code> and <code class="w3-codespan">char</code></li>
                <li>Non-primitive data types - such as <code class="w3-codespan"><a href="java_strings.asp">String</a></code>, <a href="java_arrays.asp">Arrays</a> and  <a href="java_classes.asp">Classes</a> (you will learn more about these in a later chapter)</li>
            </ul>

            <hr>

            <h2>Primitive Data Types</h2>
            <p>A primitive data type specifies the size and type of variable values, and it has no 
                additional methods.</p>
            <p>There are eight primitive data types in Java:</p>

            <div class="w3-responsive">
                <table class="ws-table-all notranslate">
                    <tbody><tr>
                            <th style="width:20%">Data Type</th>
                            <th style="width:17%">Size</th>
                            <th style="width:63%">Description</th>
                        </tr>
                        <tr>
                            <td><code class="w3-codespan">byte</code></td>
                            <td>1 byte</td>
                            <td>Stores whole numbers from -128 to 127</td>
                        </tr>
                        <tr>
                            <td><code class="w3-codespan">short</code></td>
                            <td>2 bytes</td>
                            <td>Stores whole numbers from -32,768 to 32,767</td>
                        </tr>
                        <tr>
                            <td><code class="w3-codespan">int</code></td>
                            <td>4 bytes</td>
                            <td>Stores whole numbers from -2,147,483,648 to 2,147,483,647</td>
                        </tr>
                        <tr>
                            <td><code class="w3-codespan">long</code></td>
                            <td>8 bytes</td>
                            <td>Stores whole numbers from -9,223,372,036,854,775,808 to 
                                9,223,372,036,854,775,807</td>
                        </tr>
                        <tr>
                            <td><code class="w3-codespan">float</code></td>
                            <td>4 bytes</td>
                            <td>Stores fractional numbers. Sufficient for 
                                storing 6 to 7 decimal digits</td>
                        </tr>
                        <tr>
                            <td><code class="w3-codespan">double</code></td>
                            <td>8 bytes</td>
                            <td>Stores fractional numbers. Sufficient for 
                                storing 15 decimal digits</td>
                        </tr>
                        <tr>
                            <td><code class="w3-codespan">boolean</code></td>
                            <td>1 bit</td>
                            <td>Stores true or false values</td>
                        </tr>
                        <tr>
                            <td><code class="w3-codespan">char</code></td>
                            <td>2 bytes</td>
                            <td>Stores a single character/letter or ASCII values</td>
                        </tr>

                    </tbody>
                </table>
            </div>
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
