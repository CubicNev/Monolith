
package FunciónMonolith;

import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet(name = "CambioExamen", urlPatterns = {"/CambioExamen"})
public class CambioExamen extends HttpServlet{
    
    
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
            Examen ex=new Examen();
            HttpSession sesion = request.getSession();
            String identificador=request.getParameter("Identificador");
            String nombre=request.getParameter("Titulo");
            String entrega=request.getParameter("FormaEntrega");
            String descripcion=request.getParameter("Descripcion");
            String Fecha=request.getParameter("FechaEntrega");
            ex.setTitulo(nombre);
            ex.setFormadeEntregar(entrega);
            ex.setFechaLimite(java.sql.Date.valueOf(Fecha));
            ex.setUsuario(sesion.getAttribute("usuario").toString());
            ex.setDescripcion(descripcion);
             db.CambiarExamen(ex,identificador);
            response.sendRedirect("Examen.jsp");
            
        } catch (Exception ex) {
              out.print(ex.toString() +"Clase Cambio error");
        }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
