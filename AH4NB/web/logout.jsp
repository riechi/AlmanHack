<%-- 
    Document   : logout
    Created on : 5 ott 2023, 16:02:30
    Author     : juse
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>logout</title>
    </head>
    <body>
        <body>
         
            <%
                session.invalidate(); 
                response.sendRedirect("index.jsp");
                %>
 </body>
    </body>
</html>
