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
                <c:if test="${empty listaProdotti}"> 
                    <c:redirect url="storage"/>
                </c:if>           
                
                <c:if test="${not empty listaProdotti}">
                   
                <c:forEach items="${listaProdotti}" var="prodotto">
                    <article>
                        <h3><bold>${prodotto.getTitolo()}</bold></h3>
                        <img src="${prodotto.getImgCopertina()}" alt="copertina del libro" width="100" height="160" />
                        <p>
                            questo prodotto è della seguente tipologia: <br>
                            ${prodotto.getTipologia}
                        </p>
                        <p>${prodotto.getDescrizione()}<br><!--  -->
                            scritto da: ${prodotto.getAutore()} <br><!-- comment -->                       
                        </p>
                        <p>
                            di prezzo <b>${prodotto.getPrezzo}</b>
                        </p>
                        <p>publicato da: <i>${prodotto.getUsername()}</i></p>            
                        
                    </article>
                      
                </c:forEach>
                </c:if>
            </section>
            <jsp:include page="aside.jsp"/>
            <jsp:include page="footer.jsp"/>
    </body>
</html>


