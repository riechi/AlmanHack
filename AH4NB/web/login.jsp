<%-- 
    Document   : login
    Created on : 26 set 2023, 11:03:29
    Author     : jusem
--%>

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
            <h2 >Benvenuti su Almanhack: continuate a vostro rischio e pericolo</h2>
            <h3 >Login</h3>
            <form  action="login" method="POST">
                <label for="username">Username</label>
                <input type="text" name="username" id="username" value="Diggita username">
                <label for="password">Password</label>
                <input type="password" name="password" id="password" value="Diggita password">
                <input type="submit" value="Logga">
            </form>
             </section>
            <jsp:include page="aside.jsp"/>
            <jsp:include page="footer.jsp"/>
    </body>
</html>