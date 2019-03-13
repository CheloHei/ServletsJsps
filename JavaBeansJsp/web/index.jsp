<%-- 
    Document   : index
    Created on : 24/02/2019, 10:43:57 AM
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
        <h1>Ejemplo de JavaBeans</h1>
        <!--jsp para modificar valores-->
        <a href="setterJsp.jsp">Modificar valores del JavaBean</a>
        <br>
        <!--jsp para leer valores del JavaBean-->
        <br><br>
        <!--jsp  para recuperar parametros-->
        <!--formulario1-->
        <br>
        <form name="form1" action="setterParamJsp.jsp">
            Base: <input type="text" name="baseParam">
            Altura: <input type="text" name="alturaParam">
            <input type="submit" value="Enviar">
        </form>
        <br>
        <form action="setterAllParamsJsp.jsp">
            Base: <input type="text" name="base">
            Altura: <input type="text" name="altura">
            <input type="sumbit" value="Enviar">
        </form>
    </body>
</html>
