<%-- 
    Document   : newproduct
    Created on : 26 set 2023, 11:07:46
    Author     : jusem
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
    <c:if test="${empty username}">
                <c:redirect  url="login.jsp"/>           
        </c:if> 
                
        <c:if test="${not empty username}">
            
        <main>
            <jsp:include page="header.jsp"/>
            <jsp:include page="navbar.jsp"/>
           
             <section class="col-8 col-s-10">
                <h2>inserir dati</h2>
            <form class="col-8" action="NewProduct" method="POST">
                <label for="titolo">Titolo</label>
                <input type="text"  name="titolo" id="titolo" value="inserire titolo">
                <br>
            
                <label for="autore">Autore</label>
                <input type="text"  name="autore" id="autore" value="inserire autore">
                <br>
                
                <label for="prezzo">Prezzo</label>
                <input type="number"  name="prezzo" id="prezzo" value="0.0">
                <br>
                
                <label for="immagine_copertina">Immagine copertina</label>
                <input type="url"  name="immagine_copertina" id="immagine_copertina"  value="inserire URL immagine">
                <br>
                
                <label for="descrizione">Descrizione</label>
                <textarea id="descrizione" name="descrizione" rows="10" cols="100">inserire descrizione</textarea>
                <br>
                
                <input type="radio"  name="categoria" id="hackingEtico" value="Hacking Etico">
                <label for="hackingEtico">HAcking etnico</label><br>
                
                
                <input type="radio"  name="categoria" id="HackingPocoEtico" value="Hacking Poco Etico">
                <label for="HackingPocoEtico">Hacking Poco Etico</label><br>
                
                 <input type="radio"  name="categoria" id="hackingMoltoPocoEtico" value="Hacking Molto Poco Etico">
                 <label for="hackingMoltoPocoEtico">hacking molto porco etico</label><br>
               
                
                <input type="radio"  name="categoria" id="libriCucina" value="LoHAckerCHeBOnta">
                <label for="libriCucina">libriCucina</label><br>
                
                
                <input type="radio" name="categoria" value="">Altro <input type="text" name="other_reason" /><br>
                
                <input type="submit" value="invio ultra"/>
            </form>
            </section>
            <jsp:include page="aside.jsp"/>
            <jsp:include page="footer.jsp"/>
        </c:if>
    </body>
            
</html>

