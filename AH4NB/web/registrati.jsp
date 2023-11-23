<%-- 
    Document   : registrati
    Created on : 23 nov 2023, 11:27:25
    Author     : jusem
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>AlmanHack: Registrazione</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="Gruppo BogoSorted">
        <meta name="keywords" content="Hacking,books,deeepweebbe,nonetico,anoNymus">
        <meta name="description" content="lo giuro effebiai questo sito vende materiale illegale wink wink non dovevo scriverlo aiuto.">
        <link rel="stylesheet" type="text/css" href="style.css" media="screen">
    </head>
    <body>
        <c:if test="${not empty username}">
            
                <c:redirect  url="area_personale.jsp"/>
           
        </c:if>
            
            <c:if test="${empty username}">
        <main>
            <jsp:include page="header.jsp"/>
            <jsp:include page="navbar.jsp"/>
            <section class="col-8 col-s-10">
            <h2 >Benvenuti su Almanhack: siete pronti a entrare in questo mondo oscuro?</h2>
            <h3 >Registrati ORA</h3>
            <form  action="newUser" method="POST">
                
                <label for="nome">Nome</label>
                <input type="text" name="nome" id="nome" value="Digita nome">
                <label for="cognome">cognome</label>
                <input type="text" name="cognome" id="cognome" value="Digita cognome"> <br>
                
                <label for="username">Username</label>
                <input type="text" name="username" id="username" value="Digita username">
                
                <label for="password">Password</label>
                <input type="password" name="password" id="password" value="Digita password"><br>              
       
                <input type="submit" value="NON SEI ANCORA REGISTRATO?">
            </form>
            </section>
            <jsp:include page="aside.jsp"/>
            <jsp:include page="footer.jsp"/>
        </c:if>
    </body>
</html>
