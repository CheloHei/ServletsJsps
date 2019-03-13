<%-- 
    Document   : index
    Created on : 19/02/2019, 10:59:15 AM
    Author     : Chelo
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Pagina </title>
    </head>
    <body>
        <h1>Hello World! con JSPs</h1>
        <!--impresion  de cadenas con tecnologias distintas-->
        <ul>
            <li>Hola mundo con HTML</li>
            
            <li><% out.print("Hola mundo con Scriplets");%></li>
            <li>${"Hola mundo con Expression Language (EL)"}</li>
            <li><c:out value="Hola Mundo con JSTL"/></li>
        </ul>
        <!--algunos valores del lado del servidor-->
        <ul>
            <!--Llamando con expressions-->
            <li>Hola: <%= new java.util.Date()%></li>
            <li>Nombre del contexto de aplicacion
            <%= request.getContextPath()%></li>
            <li>Valor del parametro x:<%= request.getParameter("x")%></li>
            <li></li>
        </ul>
        
    </body>
</html>
