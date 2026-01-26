<%-- 
    Document   : login.jsp
    Created on : Jan 19, 2026, 10:29:50 AM
    Author     : Dang Khoa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action ="MainController" method="post">
            <input type="hidden" name="action" value="login"/>
            Username: <input required type="text" name="txtUsername"/><br/>
            Password: <input required type="password" name="txtPassword"/><br/>
            <input type="submit" value="Login"/>
        </form>
        <c:if test="not empty message">
            ${message}
        </c:if> 
    </body>
</html>
