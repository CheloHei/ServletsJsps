<%-- 
    Document   : index
    Created on : 21/02/2019, 03:00:29 PM
    Author     : Chelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="recursos/funciones.js" type="text/javascript"></script>
        <link href="recursos/estilos.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
        <h1>Inclusion estatica</h1>
        <!--Esto es por cada menu-->
        <br>
        <!--menu principal-->
        <span class="noticias"  align="left">
            <a href="javascript:desplegar('noticias');">
                <img src="http://icursos.net/cursos/ServletsJSPs/Leccion14/noticias.gif" alt="" border="0">
            </a>

        </span>
        
        <span id="noticias" class="ocultar_menu">
            <!--submenu-->
            <ul>
                <li><%@include file="pages/noticia1.html" %></li>
                <li><%@include file="pages/noticia2.html" %></li>
            </ul>
        </span>
        <br>
        <!--menu principal-->
        <span class="videos" align="left">
            <a href="javascript:desplegar('videos');">
                <img src="http://icursos.net/cursos/ServletsJSPs/Leccion14/videos.gif" alt="" border="">
            </a>
        </span>
        <span id="videos" class="ocultar_menu">
            <!--submenu-->
            <ul>
                <li><%@include file="pages/video.html" %></li>
            </ul>
        </span>


    </body>
</html>
