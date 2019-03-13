<%-- 
    Document   : index
    Created on : 25/02/2019, 12:21:18 PM
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
        <h1>Ejemplo EL</h1>
        <a href="variablesImplicitas.jsp?usuario=juan">Objetos implicitso</a>
        <br><br>
        
        <!--entramos al jsp que accede al javabean-->
        formulario html:
        <form action="accesoJavaBeans.jsp" name="form1">
            Base: <input type="text" name="base">
            <br>
            Altura: <input type="text" name="altura">
            <input type="submit" value="Enviar">
        </form>
    </body>
</html>
