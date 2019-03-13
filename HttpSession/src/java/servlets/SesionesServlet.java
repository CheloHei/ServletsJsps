/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

/**
 *
 * @author Chelo
 */
@WebServlet(name = "SesionesServlet", urlPatterns = {"/SesionesServlet"})
public class SesionesServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        //Solicitamos a request get session  nos regresa la sesion creada
        HttpSession sesion = request.getSession();
        String titulo = null;
        //pedimos el atributo y vemos si existe
        Integer contadorVisitas = (Integer) sesion.getAttribute("contadorVisitas");
        //si es nula quiere decir que es la primera vez
        if (contadorVisitas == null) {
            contadorVisitas = new Integer(1);
            titulo = "bienvenido por primera vez";
        } else {
            titulo = "bienvenido nuevamente";
            contadorVisitas += 1;
        }
        //en cualquier caso agregamos el valor del contador a la sesion
        //se almacena en un tipo hashmap en el cual
        //tenemos nombre  de la llave y valor
        sesion.setAttribute("contadorVisitas", contadorVisitas);
        PrintWriter out = response.getWriter();
        //Por default el objeto sesion dura 30 minutos
        out.println("<h1>Tiiulo " + titulo + "</h1>");
        out.println("<br>");
        out.println("No. accesos al recurso: " + contadorVisitas);
        out.println("<br>");
        out.println("Id de la sesion: " + sesion.getId());

        
    }


}
