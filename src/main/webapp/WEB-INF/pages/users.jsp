<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>searchjob</title>
    <link rel="stylesheet" href="/static/css/style.css"/>
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
<header>
    <div class="container">
        <img src="/static/img/logo1.png" alt="searchjob" class="logo">
        <a href="/users_list"><button class="button">users</button></a>
    </div>
    <div>
        <a href="/">Back to main menu</a>
    </div>
</header>
<br>
<br>

<h1 class="text">
    Registration form
</h1>
<spring:form modelAttribute="userAdd" method="post" action="/users_add_result">
    <div class="reginputline">
        <p>Login</p>
        <spring:input id="reglogininput" class="reginputfield" title="Login" path="login"
                      onkeyup="javascript: checkLogin(); return false;" />
        <div class="reghint">Use only letters and numbers, 4 symbols at least</div>
    </div>
        <p>Password</p>
        <spring:input id="regpasswordinput" class="reginputfield" title="Password" path="password"
                      onkeyup="javascript: checkPassword(); return false;" />
    </div>
    <div class="reghint">Use only letters and number, 4 symbols at least</div>
    <div class="buttonblock">
        <spring:button id="regbutton" class="button" disabled="false">Register</spring:button>
    </div>
</spring:form>

<script type="text/javascript" src="/static/js/reg_valid_check.js"></script>

</body>
</html>
