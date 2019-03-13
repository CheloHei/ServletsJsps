/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

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
@WebServlet(name = "Servlet", urlPatterns = {"/Servlet"})
public class Servlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String titulo = null, mensaje = null;
            String tipoNav = request.getHeader("User-Agent");
            if (tipoNav != null && tipoNav.contains("Trident")) {
                titulo = "navegando en explorer";
                mensaje ="no me gusta explorer";
            } else if (tipoNav != null && tipoNav.contains("Firefox")) {
                titulo = "navegando en mozilla";
                mensaje = "mas o menos  firefox";
            } else if (tipoNav != null && tipoNav.contains("Chrome")) {
                titulo = "navegando en cromo";
                mensaje = "prefiero chrome";
            }
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>"+titulo+"</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Tipo navegador</h1>");
            out.println(mensaje);
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
}
