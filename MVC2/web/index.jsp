<%-- 
    Document   : index
    Created on : 07/03/2019, 04:36:55 PM
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
        <h1>MVC 2!</h1>
        <div style="color:red">${mensaje}</div>
        <br>
        <a href="${pageContext.request.contextPath}/ServletControlador">Link al servlet al controlador sin parametros</a>
        <br>
        <a href="${pageContext.request.contextPath}/ServletControlador?accion=agregaVariables">Link al servlet controlador para agregar las variables</a>
        <br><br>
        <a href="${pageContext.request.contextPath}/ServletControlador?accion=listarVariables">Link al servlet controlador para listar las variables</a>
    </body>
</html>
