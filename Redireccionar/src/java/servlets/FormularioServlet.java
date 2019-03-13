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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Chelo
 */
@WebServlet(name = "FormularioServlet", urlPatterns = {"/FormularioServlet"})
public class FormularioServlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String usuarioCorrecto = "Marce";
            String passCorrecto = "123";

            String fUsuario = request.getParameter("usuario");
            String fPass = request.getParameter("password");

            if (fUsuario.equals(usuarioCorrecto) && fPass.equals(passCorrecto)) {
                out.println("<h1>");
                out.println("Datos correctos");
                out.println("<br>Usuario: " + fUsuario);
                out.println("<br>Password: " + fPass);
                out.println("<h1>");

            } else{
                //respondemos al navegador con un codigo de estado no Autorizado
                response.sendError(response.SC_UNAUTHORIZED,"Las credenciales son incorrectas");
            }
            out.close();

        }
    }

}
