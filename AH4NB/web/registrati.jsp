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
        <link rel="stylesheet" type="text/css" href="style/style.css" media="screen">
        <link rel="stylesheet" type="text/css" href="style/asideStyle.css" media="screen">
        <link rel="stylesheet" type="text/css" href="style/headerStyle.css" media="screen">
        <link rel="stylesheet" type="text/css" href="style/navbarStyle.css" media="screen">
    </head>
    <body>
        <c:if test="${not empty username}">
            
                <c:redirect  url="area_personale.jsp"/>
           
        </c:if>
            
            <c:if test="${empty username}">
        <main>
            <jsp:include page="header.jsp"/>
            <jsp:include page="navbar.jsp"/>
            <section class="col-9 col-s-12">
            <h2 >Benvenuti su Almanhack: siete pronti a entrare in questo mondo oscuro?</h2>
            <h3 >Registrati ORA</h3>
            <form  action="newUser" method="POST">
                
                <label for="nome">Nome</label>
                <input type="text" name="nome" id="nome">
                <label for="cognome">Cognome</label>
                <input type="text" name="cognome" id="cognome"> <br>
                
                <label for="username">Username</label>
                <input type="text" name="username" id="username">
                
                <label for="password">Password</label>
                <input type="password" name="password" id="password"><br>              
       
                <input type="submit" value="REGISTRATI">
            </form>
            </section>
            <jsp:include page="aside.jsp"/>
            <jsp:include page="footer.jsp"/>
        </c:if>
    </body>
</html>
