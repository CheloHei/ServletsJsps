<%-- 
    Document   : setter
    Created on : 24/02/2019, 11:01:55 AM
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
        <h1>jsp que modifica javaBean</h1>
        <!--declaramos el javabean a utilizar-->
        <!--el alcance es session-->
        <jsp:useBean id="rectangulo" class="beans.Rectangulo" scope="session"/>
        
        Modificamos los atributos:
        <br><br>
        <%
            //Valores en codigo duro
            int baseValor = 5;
            int alturaValor = 10;
            %>
            <jsp:setProperty name="rectangulo" property="base" value="<&=baseValor%>"/>
            
       Nuevo valor base: <%=baseValor%>
       <br>
       <jsp:setProperty name="rectangulo" property="altura" value="<%=alturaValor%>"/>
       Nuevo valor altura: <%=alturaValor%>
       
    </body>
</html>
