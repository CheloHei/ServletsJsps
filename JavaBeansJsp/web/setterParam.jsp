<%-- 
    Document   : setterParam
    Created on : 24/02/2019, 10:44:35 AM
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
        <h1>jsp que modifica un javabean por parametros</h1>
        
        <!--declaramos javabean a utlizar-->
        <jsp:useBean id="rectangulo " class="beans.Rectangulo" scope="session"/>
        Modificacion de los atributos
        <br>
        <br>
        
        <jsp:setProperty  name="rectangulo" property="
                          base" param="baseParam"/>
        Nuevo valor base: <%= request.getParameter("baseParam")%>
        <jsp:setProperty  name="rectangulo" property="
                          base" param="alturaParam"/>
        Nuevo valor base: <%= request.getParameter("alturaParam")%>
        <br>
    </body>
</html>
