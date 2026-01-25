<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : a.jsp
    Created on : Jan 19, 2026, 10:14:48 AM
    Author     : Dang Khoa
--%>

<%@page import="model.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            UserDTO u = (UserDTO) session.getAttribute("user");
            if (u != null) {
        %>  
        <h1>Welcome to the rice field mother facker, <%=u.getFullName()%></h1>
        <a href="MainController?action=logout&">Logout</a>
        <h2>bang dieu khien</h2><!-- comment -->
        Tinh nang 1<br/> 
        <% } else {
                response.sendRedirect("login.jsp");
            }
        %>s
    </body>
</html>
