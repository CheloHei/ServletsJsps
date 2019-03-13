<%-- 
    Document   : variablesImplicitas
    Created on : 25/02/2019, 12:22:15 PM
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
        <h1>El y variables implicitas</h1>
        <ul>
            <li>Nombre aplicacion:${pageContext.request.contextPath}</li>
            <li>Navegador cliente:${header["User-Agent"]}</li>
            <li>Id sesion: ${cookie.JSESSIONID.value}</li>
            <li>Web Server: ${pageContext.servletContext.serverInfo}</li>
            <li>Valor  parametro: ${param.usuario}</li>
        </ul>
        
        <br><br>
        <a href="index.jsp">Volver</a>
    </body>
</html>
