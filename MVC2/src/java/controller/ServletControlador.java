/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import model.Rectangulo;

/**
 *
 * @author Chelo
 */
@WebServlet(urlPatterns = {"/ServletControlador"})
public class ServletControlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods. ows IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion");

        Rectangulo recRequest = new Rectangulo(1, 2);
        Rectangulo recSession = new Rectangulo(3, 6);
        Rectangulo recApplication = new Rectangulo(10, 6);
        //agregar variables en algun alcance 

        if ("agregaVariables".equals(accion)) {
            //alcance request
            request.setAttribute("rectanguloRequest", recRequest);
            
            
            //alcance session
            HttpSession session = request.getSession();
            session.setAttribute("rectanguloSession", recSession);
            
            
            //alcance application
            ServletContext application = this.getServletContext();
            application.setAttribute("rectanguloApplication", recApplication);
            
            

            request.setAttribute("mensaje", "Las variables fueron asignadas");
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");

            //redireccionar a jsp
            //RequestDispatcher rd = request.getRequestDispatcher("vistas/desplegarVistas.jsp");
            //se propagan los objetos request y response
            //para que puedan ser utilizados por el jsp seleccionado
            rd.forward(request, response);
            //hasta aqui se deja porque el flujo luego
            //de redireccionar continua con el jsp
        } else if ("listarVariables".equals(accion)) {
//Unicamente redireccionamos, ya no agregamos variables
//y se despliegan solamente las que sigan disponibles
//segun el alcance de cada variable
            request.getRequestDispatcher("/WEB-INF/alcanceVariable.jsp").forward(request, response);
        } else {
            //redireccionamos al inicio
            //agregamos un mensaje
            request.setAttribute("mensaje", "Accion desconocida");
//            Esta linea no envio info al JSP
//            sino es una peticion al navegador web
//            response.sendRedirect("index,jsp")
request.getRequestDispatcher("index.jsp").forward(request, response);

        }

    }

}
