/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

/**
 *
 * @author Chelo
 */
@WebServlet(name = "CarritoServlet", urlPatterns = {"/CarritoServlet"})
public class CarritoServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        //recuperamos valores enviados por el form
        String articulo = request.getParameter("articulo");
        //creamos o recuperamos la sesion  http
        HttpSession sesion = request.getSession();

        //recuperamos la lista de articulos previos
        //si existen en sesion 
        List<String> articulos = (List<String>) sesion.getAttribute("articulos");

        if (articulos == null) {
            //si no existe inicializamos
            //y agregamos a la sesion
            articulos = new ArrayList<>();
            sesion.setAttribute("articulos", articulos);
        }
        //ya tenemos la lista de articulos lista para trabajar
        //agregamos el nuevo articulo
        //y lo agregamos por paso de referncia a la lista
        //de artiuclos

        if (articulo != null && !articulo.trim().equals("")) {
            //con  add  agregamos elementos a listas
            articulos.add(articulo);
        }

        try (PrintWriter out = response.getWriter()) {
            out.println("<h1>Lista de articulos</h1>");
            out.println("<br>");
            for (String art : articulos) {
                out.println("<li>"+art+"</li>");

            }
            out.println("<br>");
            out.println("<a href='/CarritoCompras'>Regresar</a>");
        }
    }

}
