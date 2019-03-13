/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

/**
 *
 * @author Chelo
 */
@WebServlet(urlPatterns = {"/ServletControlador"})
public class ServletControlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     ows IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            Rectangulo rec = new Rectangulo(3,6);
            //agregar variables en algun alcance 
            request.setAttribute("mensaje","Saludos desde controlador");
            HttpSession session = request.getSession();
            session.setAttribute("rectangulo",rec);
            
            //redireccionar a jsp
            RequestDispatcher rd = request.getRequestDispatcher("vistas/desplegarVistas.jsp");
            //se propagan los objetos request y response
            //para que puedan ser utilizados por el jsp seleccionado
            rd.forward(request,response);
            //hasta aqui se deja porque el flujo luego
            //de redireccionar continua con el jsp
            
    }


}
