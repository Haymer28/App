/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.RegistroDAO;
import modelo.Usuario;

/**
 *
 * @author SAMSUNG-PC
 */
public class ControladorRegistro extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    Usuario usu = new Usuario();
    String[] errores = new String [4];
    RegistroDAO dao = new RegistroDAO();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String opcion = request.getParameter("accion");
        PrintWriter salida = response.getWriter();
        
        if (opcion.equals("Registrar")){
            if (request.getParameter("nombres").toString().length()>0 && 
                request.getParameter("celular").toString().length()>0 &&
                request.getParameter("email").toString().length()>0 && 
                request.getParameter("pass").toString().length()>0)
                
            {
            
            String nom = request.getParameter("nombres");
            String cel = request.getParameter("celular");
            String email = request.getParameter("email");
            String pass = request.getParameter("pass");
            
            usu.setNombre(nom);
            usu.setCelular(cel);
            usu.setEmail(email);
            usu.setPass(pass);
            
            dao.insertar(usu);
            
            response.sendRedirect("valido.jsp");
            
            }else{
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
