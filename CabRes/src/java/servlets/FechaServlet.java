/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
@WebServlet(name = "FechaServlet", urlPatterns = {"/FechaServlet"})
public class FechaServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void DoGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            //con esta respuesta indicamos que la pagina se refresque cada 1 segundo
            response.setHeader("refresh","1");
            
            Date fecha = new Date();
            //formatea fechas = new SimpleDateFormat ("dd 'de' MMMM 'de' yyyy 'a las ' HH:mm:ss");
            SimpleDateFormat formateador = new SimpleDateFormat("'Hora actualizada' HH:mm:ss");
            String fechaConFormato = formateador.format(fecha);
            
            
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet FechaServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Fecha actual" +fechaConFormato+ "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    
}
