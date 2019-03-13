<%-- 
    Document   : getterJsp
    Created on : 24/02/2019, 10:53:46 AM
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
        <h1>Leer valores del JavaBeans</h1>
        <!--        Declaramos el javabean a utilizar 
                si ya existe un bean en la sesion  llamado rectangulo,
                regresa el mismo objeto y no crea uno nuevo-->
        <jsp:useBean id="rectangulo" class="beans.Rectangulo" scope="session"/>
        <!--recuperamos valores y desplegamos-->
        <br>
        Valor base: <jsp:getProperty name="rectangulo" property="base"/>
        <br>
        valor altura: <jsp:getProperty name="rectangulo" property="altura"/>
        <br>
        <!--        En este caso no importa que la propiedad no exista
                en el javabean, solo con tener un metodo llamado getArea()es posible simular una propiedad-->

        Valor area: <jsp:getProperty name="rectangulo" property="area"/>
        <br>
        <br>
        <a href="index.jsp">Regresar</a>
    </body>
</html>
