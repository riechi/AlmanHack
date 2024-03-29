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
        <link rel="stylesheet" type="text/css" href="style/style.css" media="screen">
        <link rel="stylesheet" type="text/css" href="style/asideStyle.css" media="screen">
        <link rel="stylesheet" type="text/css" href="style/headerStyle.css" media="screen">
        <link rel="stylesheet" type="text/css" href="style/navbarStyle.css" media="screen">
        <link rel="stylesheet" type="text/css" href="style/storageStyle.css" media="screen">

    </head>
    <body>
            <c:if test="${empty username}">
                <c:redirect  url="login.jsp"/>
            </c:if>
        
        <c:if test="${not empty username}">
            <jsp:include page="header.jsp"/>
            <jsp:include page="navbar.jsp"/>
            <!-- caricamento lista db -->
            <c:if test="${empty listaProdotti}"> 
                    <c:redirect url="storage"/>
            </c:if>
            <main>
                
            <section class="col-9 col-s-12">
                <h2> Il Nostro catalogo</h2>
                      
                
                
                <c:if test="${not empty listaProdotti}">
                   
                <c:forEach items="${listaProdotti}" var="prodotto">
                    <article class="col-12 col-s-12">
                        <div class="galleryProduct">
                            <a target="_blank" href="${prodotto.getImgCopertina()}">
                        
                        <img src="${prodotto.getImgCopertina()}" alt="copertina del libro" width="100" height="160" />
                            </a>
                        <span class="descProduct">
                        <p>
                            <h2><bold>${prodotto.getTitolo()}</bold></h2>
                        </p>
                        <p>
                            Categoria: <b>${prodotto.getTipologia()}</b>
                        </p>
                        <p>
                            ${prodotto.getDescrizione()}
                        </p>
                            Scritto da: <b>${prodotto.getAutore()}</b>                      
                        </p>
                        <p>
                            Prezzo: <b>${prodotto.getPrezzo()}</b>
                        </p>
                        <p> Pubblicato da: <i>${prodotto.getUsername()}</i></p>            
                        </span>
                        </div>
                    </article>
                      
                </c:forEach>
                </c:if>
            </section>
        </main>
        <jsp:include page="aside.jsp"/>
        <jsp:include page="footer.jsp"/>
        </c:if>
    </body>
</html>


