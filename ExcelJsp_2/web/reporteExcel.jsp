<%-- 
    Document   : reporteExcel
    Created on : 20/02/2019, 03:51:24 PM
    Author     : Chelo
--%>

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<%@page errorPage="/WEB-INF/manejoErrores.jsp" %>
<%@page import="utilerias.Conversiones, java.util.Date" %>
<%@page contentType="application/vnd.ms-excel" %>
<%
    String nombreArchivo = "reporte.xls";
    response.setHeader("Content-Disposition","inline; filename=" + nombreArchivo);
    
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Reporte de excel</h1>
        <table border="1">
            <tr>
                <th>Curso</th>
                <th>Descripcion</th>
                <th>Fecha Inicio</th>
            </tr>
            <tr>
                <td>1.  Fundamentos de Java</td>
                <td>Aprenderemos la sintaxis basica de Java</td>
                <td><%= Conversiones.format("500")%></td>
            </tr>
            <tr>
                <td>Programacion con Java</td>
                <td>Practica con orientacion a objetos</td>
                <td><%= Conversiones.format(new Date())%></td>
            </tr>    
        </table>
    </body>
</html>
