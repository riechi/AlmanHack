<%-- 
    Document   : navbar
    Created on : 26 set 2023, 10:54:03
    Author     : jusem
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>AlmanHack</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="Gruppo BogoSorted">
        <meta name="keywords" content="Hacking,books,deeepweebbe,nonetico,anoNymus">
        <meta name="description" content="lo giuro effebiai questo sito vende materiale illegale wink wink non dovevo scriverlo aiuto.">
        <link rel="stylesheet" type="text/css" href="style.css" media="screen">
    </head>
    <body>
       <nav class="col-12">
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="chi_siamo.jsp">Chi semo</a></li>
                <li><a href="storage.jsp">Prodotti</a></li>
                <li><a href="newproduct.jsp">Link segreto dove publicare i toui libri di Lohakcer</a></li>
                <c:if test="${empty username}">
                    <li><a href="login.jsp">login</a></li>
                </c:if>
                <c:if test="${not empty username}">
                    <li>  <a href="area_personale.jsp">area personale</a> </li>
                </c:if>
                
                    <c:if test="${empty username}">
                    <li><a href="registrate.jsp">Registrati</a></li>
                </c:if>
                    
                    <c:if test="${not empty username}">
                    <li><a href="logout.jsp">logout</a></li>
                </c:if>
                
            </ul>
        </nav>
    </body>
</html>
