<%-- 
    Document   : lesson6
    Created on : Feb 1, 2023, 2:53:11 PM
    Author     : mylov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css_lesson/mystyle.css"/>  
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

            <h2>Java Variables</h2>

            <!-- Now that you know how to print text and number values, you should know how to store them, and to use them when you need to.-->
            <!-- Now that you know how to print text and number values, you should know how to store and use them whenever needed. -->
            <p>Variables are containers for storing data values. </p>
            <p>In Java, there are different <strong>types</strong> of variables, for example:</p>
            <ul>
                <li><code class="w3-codespan">String</code> - stores text, such as "Hello". String values are 
                    surrounded by double quotes</li>
                <li><code class="w3-codespan">int</code> - stores integers (whole numbers), without decimals, such as 123 or -123</li>
                <li><code class="w3-codespan">float</code> - stores floating point numbers, with decimals, such as 19.99 or -19.99</li>
                <li><code class="w3-codespan">char</code> - stores single characters, such as 
                    'a' or 'B'. Char values are surrounded by single quotes</li>
                <li><code class="w3-codespan">boolean</code> - stores values with two states: 
                    true or false</li>
            </ul>
            <hr>
            <h2>Declaring (Creating) Variables</h2>
            <p>To create a variable, you must specify the type and assign it a value:</p>
            <div class="w3-example">
                <h3>Syntax</h3>
                <pre class=" w3-white language-java" style="font-style: italic"><code class=" language-java">type variableName <span class="token operator">=</span> value<span class="token punctuation">;</span>
</code></pre>
            </div>
            <p>Where <em>type</em> is one of Java's types (such as <code class="w3-codespan">int</code> or <code class="w3-codespan">String</code>), and 
                <em>variableName</em> is the name of the variable (such as <strong>x</strong> or
                <strong>name</strong>). The <b>equal sign</b> is used to assign values to the variable.</p>
            <p>To create a variable that should store text, look at the following example:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <p>Create a variable called <strong>name</strong> of type <code class="w3-codespan">String</code> and assign it the value "<strong>John</strong>":</p>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token class-name">String</span> name <span class="token operator">=</span> <span class="token string">"John"</span><span class="token punctuation">;</span>
<span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>name<span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>
 
            </div>

            <p>To create a variable that should store a number, look at the following example:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <p>Create a variable called <strong>myNum</strong> of type <code class="w3-codespan">int</code> and assign it the value <strong>15</strong>:</p>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-int">int</span> myNum <span class="token operator">=</span> <span class="token number">15</span><span class="token punctuation">;</span>
<span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>myNum<span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>

            </div>

            <p>You can also declare a variable without assigning the value, and assign the value later:</p>

            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-int">int</span> myNum<span class="token punctuation">;</span>
myNum <span class="token operator">=</span> <span class="token number">15</span><span class="token punctuation">;</span>
<span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>myNum<span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>

            </div>

            <p>Note that if you assign a new value to an existing variable, it will overwrite the previous value:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <p>Change the value of <code class="w3-codespan">myNum</code> from <code class="w3-codespan">15</code> to <code class="w3-codespan">20</code>:</p>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-int">int</span> myNum <span class="token operator">=</span> <span class="token number">15</span><span class="token punctuation">;</span>
myNum <span class="token operator">=</span> <span class="token number">20</span><span class="token punctuation">;</span>  <span class="token comment">// myNum is now 20</span>
<span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span>myNum<span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>
    
            </div>
            <hr>

            <h2>Final Variables</h2>
            <p>If you don't want others (or yourself) to overwrite existing values, use the <code class="w3-codespan">final</code> keyword (this will declare the variable as "final" or "constant", which means unchangeable and read-only):</p>
            <div class="w3-example w3-pale-red">
                <h3>Example</h3>
                <pre class=" w3-white w3-border-red language-java"><code class=" language-java"><span class="token keyword keyword-final">final</span> <span class="token keyword keyword-int">int</span> myNum <span class="token operator">=</span> <span class="token number">15</span><span class="token punctuation">;</span>
myNum <span class="token operator">=</span> <span class="token number">20</span><span class="token punctuation">;</span>  <span class="token comment">// will generate an error: cannot assign a value to a final variable</span>
</code></pre>
    
            </div>

            <hr>

            <h2>Other Types</h2>
            <p>A demonstration of how to declare variables of other types:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <pre class=" w3-white language-java"><code class=" language-java"><span class="token keyword keyword-int">int</span> myNum <span class="token operator">=</span> <span class="token number">5</span><span class="token punctuation">;</span>
<span class="token keyword keyword-float">float</span> myFloatNum <span class="token operator">=</span> <span class="token number">5.99f</span><span class="token punctuation">;</span>
<span class="token keyword keyword-char">char</span> myLetter <span class="token operator">=</span> <span class="token string">'D'</span><span class="token punctuation">;</span>
<span class="token keyword keyword-boolean">boolean</span> myBool <span class="token operator">=</span> <span class="token boolean">true</span><span class="token punctuation">;</span>
<span class="token class-name">String</span> myText <span class="token operator">=</span> <span class="token string">"Hello"</span><span class="token punctuation">;</span>
</code></pre>
            </div>
            <div class="w3-note w3-panel">
                <p>You will learn more about <a href="java_data_types.asp">data types</a> in the next section.</p>
            </div>


        </div>
    </body>
</html>
