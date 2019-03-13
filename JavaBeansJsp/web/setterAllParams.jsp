<%-- 
    Document   : setterAllParams
    Created on : 24/02/2019, 10:45:02 AM
    Author     : Chelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title></head>
    <body>
        <h1>Jsp que modifica a javabean por parametros</h1>
            <!--modificamos todas las propiedades cuyo parametro coincida con el nombre de la propiedad-->
            <jsp:setProperty name="rectangulo" property="*"/>
            Se modificaron los atributos:
            <br>
            Nuevo valor base: <%= request.getParameter("base")%>
            <br>
            Nuevo valor altura <%= request.getParameter("altura")%>
    </body>
</html>
