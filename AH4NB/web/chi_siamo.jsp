<%-- 
    Document   : chi_siamo
    Created on : 26 set 2023, 11:03:01
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
        <link rel="stylesheet" type="text/css" href="style/style.css" media="screen">
        <link rel="stylesheet" type="text/css" href="style/theTeam.css" media="screen">
    </head>
    <body>
        <main>
            <jsp:include page="header.jsp"/>
            <jsp:include page="navbar.jsp"/>
            <section class="col-9 col-s-12">
            
            <h2>Il Team BogoSort:</h2>
            
            <div class="team">             
                
                <span class="imagine"><img class="col-6" src="img/dalek.jpg" width="200" height="200" alt="la foto del gestore del sito senza cattive intenzioni"/></span>   
               <span class="bio">
                   <h3>Giuseppe Mocci</h3>
                   <p>
                       Studente da troppo tempo, è  stato messo in un cabinetto di ferro per costringerlo a continuare gli studi
                   </p>
                    
               </span>      
            </div>
            
            <div class="team">             
                
                  <img class="col-6" src="img/oldSage.jpg" width="200" height="auto" alt="la foto del gestore del sito senza cattive intenzioni"/>   
               <span class="bio"> 
                   <h3>Richiecchi</h3>
                   <p>non mi ricordo il suo cognome, è andato a vagabondare in terre lontane da troppo tempo.<br><!--  -->
                       Un giorno tornerà tra di noi con saggezze infinite.<br><br>
                   <i>la foto rappresenta la ricostruzione artificiale di come apparirebbe oggi</i>
                   </p>
               </span>      
            </div>
              
            </section> 
            <jsp:include page="aside.jsp"/>
            <jsp:include page="footer.jsp"/>
    </body>
</html>