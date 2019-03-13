<%-- 
    Document   : index
    Created on : 21/02/2019, 03:32:23 PM
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
        <h1>Hello World!</h1>
        <jsp:include page="WEB-INF/recursoPrivado.jsp">
            <jsp:param name="colorFondo" value="blue"/>
        </jsp:include>
        <br>
        <jsp:include page="recursoPublico.jsp"/>
        
    </body>
</html>
