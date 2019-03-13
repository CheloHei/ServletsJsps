<%-- 
    Document   : alcanceVariable
    Created on : 08/03/2019, 10:37:27 AM
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
        <h1>Alcance de Variables</h1>
        <br>
        Variable request:
        Base: ${rectanguloRequest.base}
        Altura: ${rectanguloRequest.altura}
        Area: ${rectanguloRequest.area}
        <br>
        Variable Session:
        Base: ${rectanguloSession.base}
        Altura: ${rectanguloSession.altura}
        Area: ${rectanguloSession.area}
        <br><br>
        Variable Application:
        Base: ${rectanguloApplication.base}
        Altura: ${rectanguloApplication.altura}
        Area: ${rectanguloApplication.area}
    </body>
</html>
