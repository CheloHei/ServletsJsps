<%-- 
    Document   : procesarFormulario
    Created on : 19/02/2019, 11:46:10 AM
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
        <h1>Procesamiento formulario</h1>
        Usuario <%= request.getParameter("usuario") %>
        <br>
        Password <%= request.getParameter("password") %>
        <br>
        <a href="index.html">Volver</a>
    </body>
</html>
