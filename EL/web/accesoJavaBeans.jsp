<%-- 
    Document   : accesoJavaBeans
    Created on : 25/02/2019, 12:21:46 PM
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
        <h1>Acceso javabeans</h1>
        <jsp:useBean id="rectangulo" class="beans.Rectangulo"/>
        <!--asignamos los valores del form-->
        <jsp:setProperty  name="rectangulo" property="*"/>
        <br>
        Valor base: ${rectangulo.base}
        <br>
        Valor altura ${rectangulo.altura}
        <br>
        Valor area: ${rectangulo.area}
        <br>
        Calculo de area: ${rectangulo.base * rectangulo.altura}
        <br>
        <a href="index.jsp">Vovler</a>
    </body>
</html>
