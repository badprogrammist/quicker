<%--
  Created by IntelliJ IDEA.
  User: ildar
  Date: 08.11.14
  Time: 14:34
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Login</title>
</head>

<body>

<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>
<g:form action="authenticate">
    <g:textField name="username" value="${userInstance?.username}"/>
    <g:field type="password" name="password" value="${userInstance?.password}"/>
    <g:submitButton name="login" class="save" value="Login"/>
</g:form>
</div>
</body>
</html>