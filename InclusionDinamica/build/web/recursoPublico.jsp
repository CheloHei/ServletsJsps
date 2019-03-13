<%-- 
    Document   : recursoPublico
    Created on : 21/02/2019, 03:32:50 PM
    Author     : Chelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Contenido dinamico desde un jsp</h1>
        <br>
        
        Nombre de la aplicacion: <%= request.getContextPath() %>
    </body>
</html>
