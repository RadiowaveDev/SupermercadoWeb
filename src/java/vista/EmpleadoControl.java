package vista;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import servicio.EmpleadoServicioImp;


@WebServlet(name = "EmpleadoControl", urlPatterns = {"/EmpleadoControl"})

public class EmpleadoControl extends HttpServlet {
    
    private EmpleadoServicioImp empSer;

    public EmpleadoControl() {
        empSer = new EmpleadoServicioImp();
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
        String acc = request.getParameter("acc");
        
        if(acc.equals("Grabar")){
            String cod = request.getParameter("cod");
            String nom = request.getParameter("nom");
            String tipo = request.getParameter("tipo");
            String user = request.getParameter("user");
            String pass = request.getParameter("pass");
            String msg = empSer.grabar(cod, nom, tipo, user, pass);

            request.getSession().setAttribute("msg", msg);
            response.sendRedirect("Mensaje.jsp");
        }
        if(acc.equals("Iniciar Sesion")){
            String user = request.getParameter("user");
            String pass = request.getParameter("pass");
            Object[]fila = empSer.validar(user, pass);
            
            if(fila!=null){
                request.getSession().setAttribute("fila", fila);
                response.sendRedirect("Menu.jsp");
            }else{
                request.getSession().setAttribute("msg", "Acceso no permitido");
                response.sendRedirect("Mensaje.jsp");
            } 
        }
        
        if(acc.equals("Buscar")){
             String cod = request.getParameter("cod");
             Object[]fila = empSer.buscar(cod);
             
            if(fila!=null){
                request.getSession().setAttribute("fila", fila);
                response.sendRedirect("EmpleadoEditar.jsp");
            }else{
                request.getSession().setAttribute("msg", "Empleado no encontrado");
                response.sendRedirect("EmpleadoMensaje.jsp");
            }
        }
        
        if(acc.equals("Listar")){
            List lis= empSer.listar();
            request.getSession().setAttribute("lis", lis);
            response.sendRedirect("EmpleadoListar.jsp");
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
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
