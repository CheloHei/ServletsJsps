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
@WebServlet(name = "ExportarExcelServlet", urlPatterns = {"/ExportarExcelServlet"})
public class ExportarExcelServlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            //se determina el tipo mime que se dara como respuesta
            response.setContentType("application/html;vmd.ms-excel");
            //cabecero que determina el tipo de archivo a devolver 
            //con "nombre",nombre del archivo"
            //si el header con ese nombre ya existe lo reemplaza
            //para hacer uno nuevo utilizar addHeader
            response.setHeader("Content-Disposition","attachment;filename=excelEjemplo.xls");
            
//=============combinacion para no almacenar info en el servidor            
            //para no agregar cache utilizar
            response.setHeader("Pragma","no-cache");
            response.setHeader("Cache-control","no-cache");
            //tiempo que expira este contenido
            //si quiere volver a solicitar debera volver a  realizar la peticion
            response.setDateHeader("Expires",-1);
            
            
            //desplegamos el contenido en un excel
            //simplemente modificamos   el contentType
             out.println("\tValores");
             out.println("\t1");
             out.println("\t2");
             out.println("Total\t=Suma(B2:B3)");
             
             
            
        }
    }

}
