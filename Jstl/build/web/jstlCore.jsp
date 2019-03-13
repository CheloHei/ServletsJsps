<%-- 
    Document   : jstlCore
    Created on : 25/02/2019, 04:10:48 PM
    Author     : Chelo
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>jstl core</h1>
        <!--manipulacion de variables-->
        <c:set var="nombre" value="ernesto"/>
        Nombre:  <c:out value="${nombre}"/>

        <br>
        <c:out value="<h1>Hola</h1>" escapeXml="true" />
        <br><br>

        <!--codigo condicionado-->
        <c:set var="bandera" value="true"/>
        <c:if test="${bandera}">
            La bandera es true
        </c:if>
        <br>
        <!--condicionamiento igual a switch-->
        <c:if test="${param.opcion !=null}">
            <c:choose>
                <c:when test="${param.opcion==1}">
                    <br>
                    Opcion 1 seleccionada
                    <br>
                </c:when>
                <c:when test="${param.opcion==2}">
                    <br>
                    Opcion 2 seleccionada
                    <br>
                </c:when>
                <c:otherwise>
                    <br>
                    OPCION Desconocida: ${param.opcion}
                    <br>
                </c:otherwise>
            </c:choose>
        </c:if>

        <!-- iteracion de arreglo -->
        <%
            //uso de scriplet
            //creamos arreglo con scriplet (no es una buena practica)
            String[] nombres = {"Marcelo", "Marta", "Pedro", "Carlos"};
            //compartimos el arreglo nombres
            //en el alcance de scope request
            request.setAttribute("nombres", nombres);
        %>
        <br>
        Lista de names en Arreglo:
        <br>
        <ul>
            <c:forEach varStatus="st" var="person" items="${nombres}">
                <li>${st.count} - Nombre:${person}</li>
                </c:forEach> 
        </ul>

    </body>
</html>
