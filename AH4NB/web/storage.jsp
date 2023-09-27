<%-- 
    Document   : storage
    Created on : 26 set 2023, 11:08:08
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
            <jsp:include page="header.jsp"/>
            <jsp:include page="navbar.jsp"/>
            <section class="col-8 col-s-10">
                <h3>Il Nostro catalogo</h3>
                <c:forEach begin="0" end="5" var="i">
                    <li>elemento ${i} </li>
                      
                </c:forEach>
            </section>
            <jsp:include page="aside.jsp"/>
            <jsp:include page="footer.jsp"/>
    </body>
</html>


