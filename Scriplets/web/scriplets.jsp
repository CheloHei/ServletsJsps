<%-- 
    Document   : scriplets
    Created on : 20/02/2019, 11:12:06 AM
    Author     : Chelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP con Scriplets</title>
    </head>
    <body>
        <h1>JSp con Scriplets</h1>
        <br>
        <%
            out.println("saludos desde un scriplet");
        %>
        <br>
        <%
            String nombreAplicacion = request.getContextPath();
            out.println("nombreAplicacion:" + nombreAplicacion);
        %>
        <%
            if (session != null && session.isNew()) {
        %>
        la sesion Si es nueva
        <%
        } else if (session != null) {
        %>
        la sesion No es nueva
        <%
        }
        %>
    </body>
</html>
