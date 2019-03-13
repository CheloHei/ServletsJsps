<%-- 
    Document   : desplegarVistas
    Created on : 07/03/2019, 04:37:46 PM
    Author     : Chelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP desplegar</title>
    </head>
    <body>
        <h1>Despliegue de variables</h1>
        Variable en alcance request
        ${mensaje}
        <br><br>
        
        variable en alcance session:
        <br>
        Rectangulo:
        Base: ${rectangulo.base}
        altura: ${rectangulo.altura}
        area: ${rectangulo.area}
        <br><br>
    </body>
</html>
