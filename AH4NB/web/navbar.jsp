<%-- 
    Document   : navbar
    Created on : 26 set 2023, 10:54:03
    Author     : jusem
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
       <nav class="col-12">
            <ul>
                <li class="col-2 col-s-12"><a href="index.jsp">Home</a></li>
                <li class="col-2 col-s-12"><a href="chi_siamo.jsp">Chi siamo</a></li>
                <li class="col-2 col-s-12"><a href="storage.jsp">Prodotti</a></li>
                
                
                 <c:if test="${empty username}">
                    <li class="col-3 col-s-12"><a href="registrati.jsp">Registrati ora!</a></li>
                </c:if>
                    
                <c:if test="${not empty username}">
                    <li class="col-2 col-s-12"><a href="newproduct.jsp">Inserisci un libro</a></li>
                </c:if>
                
                
             <c:if test="${empty username}">
                    <li class="col-3 col-s-12"><a href="login.jsp">Login</a></li>
                </c:if>
                    
                <c:if test="${not empty username}">
                    <li class="col-2 col-s-12">  <a href="area_personale.jsp">Area personale</a> </li>
                </c:if>
                    
                    <c:if test="${not empty username}">
                    <li class="col-2 col-s-12"><a href="logout.jsp">Logout</a></li>
                </c:if>
                
            </ul>
        </nav>
</html>
