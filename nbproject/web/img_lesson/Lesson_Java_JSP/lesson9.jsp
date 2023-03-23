<%-- 
    Document   : lesson9
    Created on : Feb 1, 2023, 3:07:56 PM
    Author     : mylov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css_lesson/mynewstyle.css"/>  
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
                <jsp:include page="../Menu_JSP/header_menu.jsp"></jsp:include>
        <div class="w3-col l10 m12" id="main">

            <hr>

            <h2>Java Operators</h2>

            <p>Operators are used to perform operations on variables and values.</p>
            <p>In the example below, we use the
                <code class="w3-codespan">+</code> <strong>operator</strong> to add together two values:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-int">int</span> x <span class="token operator">=</span> <span class="token number">100</span> <span class="token operator">+</span> <span class="token number">50</span><span class="token punctuation">;</span>
</code></pre>

            </div>

            <p>Although the <code class="w3-codespan">+</code> operator is often used to add together two values, like in the example above, it can also be used to add together a variable and a value, or a variable and another variable:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-int">int</span> sum1 <span class="token operator">=</span> <span class="token number">100</span> <span class="token operator">+</span> <span class="token number">50</span><span class="token punctuation">;</span>        <span class="token comment">// 150 (100 + 50)</span>
<span class="token keyword keyword-int">int</span> sum2 <span class="token operator">=</span> sum1 <span class="token operator">+</span> <span class="token number">250</span><span class="token punctuation">;</span>      <span class="token comment">// 400 (150 + 250)</span>
<span class="token keyword keyword-int">int</span> sum3 <span class="token operator">=</span> sum2 <span class="token operator">+</span> sum2<span class="token punctuation">;</span>     <span class="token comment">// 800 (400 + 400)</span>
</code></pre>

            </div>

            <p>Java divides the operators into the following groups:</p>
            <ul>
                <li>Arithmetic operators</li>
                <li>Assignment operators</li>
                <li>Comparison operators</li>
                <li>Logical operators</li>
                <li>Bitwise operators</li>
            </ul>
            <hr>

            <h2>Arithmetic Operators</h2>

            <p>Arithmetic operators are used to perform common mathematical operations.</p>
            <div class="w3-responsive">
                <table class="ws-table-all notranslate">
                    <tbody><tr>
                            <th style="width:15%">Operator</th>
                            <th style="width:18%">Name</th>
                            <th style="width:40%">Description</th>
                            <th style="width:17%;">Example</th>
                        </tr>
                        <tr>
                            <td>+</td>
                            <td>Addition</td>
                            <td>Adds together two values</td>
                            <td>x + y</td>
                        </tr>
                        <tr>
                            <td>-</td>
                            <td>Subtraction</td>
                            <td>Subtracts one value from another</td>
                            <td>x - y</td>
                        </tr>
                        <tr>
                            <td>*</td>
                            <td>Multiplication</td>
                            <td>Multiplies two values</td>
                            <td>x * y</td>
                        </tr>
                        <tr>
                            <td>/</td>
                            <td>Division</td>
                            <td>Divides one value by another</td>
                            <td>x / y</td>
                        </tr>
                        <tr>
                            <td>%</td>
                            <td>Modulus</td>
                            <td>Returns the division remainder</td>
                            <td>x % y</td>
                        </tr>
                        <tr>
                            <td>++</td>
                            <td>Increment</td>
                            <td>Increases the value of a variable by 1</td>
                            <td>++x</td>
                        </tr>
                        <tr>
                            <td>--</td>
                            <td>Decrement</td>
                            <td>Decreases the value of a variable by 1</td>
                            <td>--x</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <hr>
            <div id="midcontentadcontainer" style="overflow:auto;text-align:center">
                <!-- MidContent -->
                <!-- <p class="adtext">Advertisement</p> -->

                <div id="adngin-mid_content-0"></div>

            </div>
            <hr>

            <h2>Java Assignment Operators</h2>

            <p>Assignment operators are used to assign values to variables.</p>
            <p>In the example below, we use the <strong>assignment</strong> operator (<code class="w3-codespan">=</code>) 
                to assign the value <strong>10</strong> to a variable called <strong>x</strong>:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-int">int</span> x <span class="token operator">=</span> <span class="token number">10</span><span class="token punctuation">;</span>
</code></pre>

            </div>
            <p>The <strong>addition assignment</strong> operator (<code class="w3-codespan">+=</code>) adds a value to a variable:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-int">int</span> x <span class="token operator">=</span> <span class="token number">10</span><span class="token punctuation">;</span>
x <span class="token operator">+=</span> <span class="token number">5</span><span class="token punctuation">;</span>
</code></pre>

            </div>
            <p>A list of all assignment operators:</p>
            <table class="ws-table-all notranslate">
                <tbody><tr>
                        <th style="width:30%">Operator</th>
                        <th style="width:30%">Example</th>
                        <th style="width:30%">Same As</th>
                    </tr>
                    <tr>
                        <td>=</td>
                        <td>x = 5</td>
                        <td>x = 5</td>
                    </tr>
                    <tr>
                        <td>+=</td>
                        <td>x += 3</td>
                        <td>x = x + 3</td>
                    </tr>
                    <tr>
                        <td>-=</td>
                        <td>x -= 3</td>
                        <td>x = x - 3</td>
                    </tr>
                    <tr>
                        <td>*=</td>
                        <td>x *= 3</td>
                        <td>x = x * 3</td>
                    </tr>
                    <tr>
                        <td>/=</td>
                        <td>x /= 3</td>
                        <td>x = x / 3</td>
                    </tr>
                    <tr>
                        <td>%=</td>
                        <td>x %= 3</td>
                        <td>x = x % 3</td>
                    </tr>
                    <tr>
                        <td>&amp;=</td>
                        <td>x &amp;= 3</td>
                        <td>x = x &amp; 3</td>
                    </tr>
                    <tr>
                        <td>|=</td>
                        <td>x |= 3</td>
                        <td>x = x | 3</td>
                    </tr>
                    <tr>
                        <td>^=</td>
                        <td>x ^= 3</td>
                        <td>x = x ^ 3</td>
                    </tr>
                    <tr>
                        <td>&gt;&gt;=</td>
                        <td>x &gt;&gt;= 3</td>
                        <td>x = x &gt;&gt; 3</td>
                    </tr>
                    <tr>
                        <td>&lt;&lt;=</td>
                        <td>x &lt;&lt;= 3</td>
                        <td>x = x &lt;&lt; 3</td>
                    </tr>
                </tbody></table>

            <hr>

            <h2>Java Comparison Operators</h2>

            <p>Comparison operators are used to compare two values (or variables). This is important in programming, because it helps us to find answers and make decisions.</p>

            <p>The return value of a comparison is either <code class="w3-codespan">true</code> or <code class="w3-codespan">false</code>. These values are known as 
                <em>Boolean values</em>, and you will learn more about them in the <a href="java_booleans.asp">Booleans</a> and <a href="java_conditions.asp">If..Else</a> chapter.</p>

            <p>In the following example, we use the <strong>greater than</strong> operator (<code class="w3-codespan">&gt;</code>) to find out if 5 is greater than 3:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-int">int</span> x <span class="token operator">=</span> <span class="token number">5</span><span class="token punctuation">;</span>
<span class="token keyword keyword-int">int</span> y <span class="token operator">=</span> <span class="token number">3</span><span class="token punctuation">;</span>
<span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>x <span class="token operator">&gt;</span> y<span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">// returns true, because 5 is higher than 3</span>
</code></pre>

            </div>


            <table class="ws-table-all notranslate">
                <tbody><tr>
                        <th style="width:25%">Operator</th>
                        <th style="width:35%">Name</th>
                        <th style="width:30%">Example</th>
                    </tr>
                    <tr>
                        <td>==</td>
                        <td>Equal to</td>
                        <td>x == y</td>
                    </tr>
                    <tr>
                        <td>!=</td>
                        <td>Not equal</td>
                        <td>x != y</td>
                    </tr>
                    <tr>
                        <td>&gt;</td>
                        <td>Greater than</td>
                        <td>x &gt; y</td>
                    </tr>
                    <tr>
                        <td>&lt;</td>
                        <td>Less than</td>
                        <td>x &lt; y</td>
                    </tr>
                    <tr>
                        <td>&gt;=</td>
                        <td>Greater than or equal to</td>
                        <td>x &gt;= y</td>
                    </tr>
                    <tr>
                        <td>&lt;=</td>
                        <td>Less than or equal to</td>
                        <td>x &lt;= y</td>
                    </tr>
                </tbody></table>
            <hr>

            <h2>Java Logical Operators</h2>

            <p>You can also test for <code class="w3-codespan">true</code> or <code class="w3-codespan">false</code> 
                values with logical operators.</p>
            <p>Logical operators are used to determine the logic between variables or 
                values:</p>
            <div class="w3-responsive" style="margin-top:-16px;margin-bottom:-16px">

                <table class="ws-table-all notranslate">
                    <tbody><tr>
                            <th style="width:15%">Operator</th>
                            <th style="width:20%">Name</th>
                            <th style="width:35%">Description</th>
                            <th style="width:20%">Example</th>

                        </tr>
                        <tr>
                            <td>&amp;&amp;&nbsp;</td>
                            <td>Logical and</td>
                            <td>Returns true if both statements are true</td>
                            <td>x &lt; 5 &amp;&amp;&nbsp; x &lt; 10</td>

                        </tr>
                        <tr>
                            <td>||&nbsp;</td>
                            <td>Logical or</td>
                            <td>Returns true if one of the statements is true</td>
                            <td>x &lt; 5 || x &lt; 4</td>
                        </tr>
                        <tr>
                            <td>!</td>
                            <td>Logical not</td>
                            <td>Reverse the result, returns false if the result is true</td>
                            <td>!(x &lt; 5 &amp;&amp; x &lt; 10)</td>
                        </tr>
                    </tbody></table>
            </div>

        </div>
    </body>
</html>
