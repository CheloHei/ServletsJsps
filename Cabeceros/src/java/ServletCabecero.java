/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Chelo
 */
@WebServlet(urlPatterns = {"/ServletCabecero"})
public class ServletCabecero extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        try {
            String metodoHTTP = request.getMethod();
            String uri = request.getRequestURI();

            out.println("<html>");
            out.println("<head>");
            out.println("<title>Headers HTTP</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Header http</h1>");
            out.println("meotodo  htttp: " + metodoHTTP);
            out.println("<br>");
            out.println("URI solicitado" + uri);
            out.println("<br>");
            //procesamos algunos cabeceros  de la peticion
            out.println("<br>");
            out.println("Host" + request.getHeader("Host"));
            out.println("<br>");
            out.println("Navegador:" + request.getHeader("User-Agent"));
//Procesamos  todos los cabeceros
//estos pueden varian segun el navegador
            out.println("<br>");
            out.println("<br>");
            Enumeration cab = request.getHeaderNames();
            while (cab.hasMoreElements()) {
                String nombreCab = (String) cab.nextElement();
                out.println("<b>" + nombreCab);
                out.println(request.getHeader(nombreCab));
                out.println("<br>");

            }
            out.println("</body>");
            out.println("</html>");

        }finally{
            out.close();
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
}
