/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import negocio.Usuario;

/**
 *
 * @author Administrador
 */
public class ServletUsuario extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            if (request.getParameter("eliminar") != null) {
                out.println("Usted desea eliminar");
                int id = Integer.parseInt(request.getParameter("eliminar"));
                out.println("Eliminar ID:" + id);

                Usuario user = new Usuario();
                user.setUsuario_id(id);
                user.delete();
                response.sendRedirect("index.jsp");

            } else if (request.getParameter("guardar") != null) {
                String nombre = request.getParameter("nombre");
                String apepat = request.getParameter("apepat");
                String telefono = request.getParameter("telefono");
                Usuario user = new Usuario();
                user.setNombre(nombre);
                user.setApepat(apepat);
                user.setTelefono(telefono);
                user.save();
                response.sendRedirect("index.jsp");

            } else if (request.getParameter("editar") != null) {
                
                
                int usuario_id = Integer.parseInt(request.getParameter("usuario_id"));

                String nombre = request.getParameter("nombre");
                String apepat = request.getParameter("apepat");
                String telefono = request.getParameter("telefono");
                Usuario user = new Usuario();
                user.setNombre(nombre);
                user.setApepat(apepat);
                user.setTelefono(telefono);
                user.setUsuario_id(usuario_id);
                user.update();
                response.sendRedirect("index.jsp");

            }
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
