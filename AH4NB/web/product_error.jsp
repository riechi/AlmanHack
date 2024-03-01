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
        <link rel="stylesheet" type="text/css" href="style/style.css" media="screen">
        <link rel="stylesheet" type="text/css" href="style/asideStyle.css" media="screen">
        <link rel="stylesheet" type="text/css" href="style/headerStyle.css" media="screen">
        <link rel="stylesheet" type="text/css" href="style/navbarStyle.css" media="screen">
    </head>
    <body>
   <%-- <c:if test="${empty username}">
            <c:redirect  url="login.jsp"/>
        </c:if> --%>
            <jsp:include page="header.jsp"/>
            <jsp:include page="navbar.jsp"/>
            <section class="col-9 col-s-12">
                <p>
                    <b>Dati prodotto inseriti non validi.</b>                   
                </p>
                
            </section>
            <jsp:include page="aside.jsp"/>
            <jsp:include page="footer.jsp"/>
              
    </body>
</html>

