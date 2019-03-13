<%-- 
    Document   : index
    Created on : 19/02/2019, 11:45:07 AM
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
        <h1>Expresiones JSP</h1>
        Concatenacion: <%=  "Saludos" + "JSP"%>
        <br>
        Operacion Matematica:  <%= 2+10/2%>
        <br>
        Session id: <%= session.getId()%>
        
        <a href="index.html">Vuelve al inicio</a>
    </body>
</html>
