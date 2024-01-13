<%-- 
    Document   : login
    Created on : 26 set 2023, 11:03:29
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
        <main>
           
            <c:if test="${not empty username}">
            
                <c:redirect  url="area_personale.jsp"/>
           
        </c:if>
            
            <c:if test="${empty username}">
            <jsp:include page="header.jsp"/>
            <jsp:include page="navbar.jsp"/>
            <section class="col-9 col-s-12">
            <h2 >Benvenuti su Almanhack: continuate a vostro rischio e pericolo</h2>
            <h3 >Login</h3>
            <form  action="login" method="POST">
                <label for="username">Username</label>
                <input type="text" name="username" id="username" value="Digita username">
                <label for="password">Password</label>
                <input type="password" name="password" id="password" value="Digita password">
                <input type="submit" value="Logga">
            </form>
            
            <h3>Non sei ancora registrato? <a href="registrati.jsp"> registrati ora! </a></h3>
             </section>
            <jsp:include page="aside.jsp"/>
            <jsp:include page="footer.jsp"/>
        </c:if>
        
        
            
    </body>
</html>