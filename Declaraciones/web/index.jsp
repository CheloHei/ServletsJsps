<%-- 
    Document   : index
    Created on : 20/02/2019, 11:41:40 AM
    Author     : Chelo
--%>
<%--Agregamos la declaracion--%>
<%!
    //declaramos atributos o metodos
    private String usuario = "Alberto";

    public String getUsuario() {
        return this.usuario;
    }
    private int contadorVisitas = 1;
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP declaraciones</title>
    </head>
    <body>
        <h1>Utilizando declaraciones!</h1>
        Usuario por medio del atributo <%= this.usuario%>
        <br>
        Usuario por medio del metodo <%= this.getUsuario()%>
        
        Contador de usuario <%= this.contadorVisitas++%>
    </body>
</html>
