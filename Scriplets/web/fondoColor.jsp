<%-- 
    Document   : fondoColor
    Created on : 20/02/2019, 11:11:22 AM
    Author     : Chelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String fondo = request.getParameter("colorFondo");
    //si no se envia nada poner color por default
    if(fondo == null || fondo.trim().equals("")){
        fondo = "white";
    }
    %>
    
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP colores</title>
    </head>
    <body bgcolor="<%= fondo%>">
        <h1>Color de fondo aplicado <%= fondo%></h1>
    </body>
</html>
