
package FunciónMonolith;

import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;


@WebServlet(name = "IngresoActividad", urlPatterns = {"/IngresoActividad"})
public class IngresoActividad extends HttpServlet {
    
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Ingreso</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Ingreso at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        DataBase db = null;
        try {
            db = new DataBase();
        } catch (ClassNotFoundException ex) {
           
        } catch (InstantiationException ex) {
            out.print(ex.toString());
        } catch (IllegalAccessException ex) {
                        out.print(ex.toString());
        } catch (SQLException ex) {
                      out.print(ex.toString());
        }

        try {
            Actividad act=new Actividad();
            HttpSession sesion = request.getSession();
            String nombre=request.getParameter("Titulo");
            String entrega=request.getParameter("FormaEntrega");
            String descripcion=request.getParameter("Descripcion");
            act.setTitulo(nombre);
            act.setFormadeEntregar(entrega);
            act.setFechaLimite(java.sql.Date.valueOf("2018-11-05"));
            act.setUsuario(sesion.getAttribute("usuario").toString());
            act.setDescripcion(descripcion);
             db.IngresarActividad(act);
            
            
        } catch (Exception ex) {
              out.print(ex.toString());
        }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}

