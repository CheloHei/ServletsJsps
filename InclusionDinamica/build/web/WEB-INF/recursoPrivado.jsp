<%-- 
    Document   : recursoPrivado
    Created on : 21/02/2019, 03:33:17 PM
    Author     : Chelo
--%>
<%  String colorFondo = request.getParameter("colorFondo");
if(colorFondo == null || colorFondo.trim().equals("")){
    colorFondo = "white";
}
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor = "<%=colorFondo%>"
        <h1>Despliegue desde jsp privado</h1>
    </body>
</html>
