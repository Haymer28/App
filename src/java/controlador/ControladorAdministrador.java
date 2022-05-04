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
 * @author User1
 */
public class ControladorAdministrador extends HttpServlet {

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
    RegistroDAO dao = new RegistroDAO();
    int idUsr;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String op = request.getParameter("menu");
        String opc = request.getParameter("accion");
        
        if (op.equals("Ppal")) {
            request.getRequestDispatcher("administrador.jsp").forward(request, response);

        }
        if (op.equals("Usuario")) {
            switch (opc) {

                case "mostrar":
                    request.getRequestDispatcher("administrador.jsp").forward(request, response);
                    break;

                case "insertar":

                    String nom = request.getParameter("Nombres");
                    String cont = request.getParameter("Celular");
                    String email = request.getParameter("Correo");
                    String pass = request.getParameter("Password");

                    usu.setNombre(nom);
                    usu.setCelular(cont);
                    usu.setEmail(email);
                    usu.setPass(pass);

                    dao.insertar(usu);

                    request.getRequestDispatcher("usuario.jsp").forward(request, response);
                    break;
                default:
                    throw new AssertionError();

                case "eliminar":
                    idUsr = Integer.parseInt(request.getParameter("id"));

                    dao.eliminar(idUsr);
                    request.getRequestDispatcher("usuarios.jsp").forward(request, response);
                    break;

                case "carga":
                    idUsr = Integer.parseInt(request.getParameter("id"));
                    Usuario miBeans = dao.cargar(idUsr);
                    request.setAttribute("usuario", miBeans);
                    request.getRequestDispatcher("usuarios.jsp").forward(request, response);
                    break;
                    
                case "modificar":
                    String nom2 = request.getParameter("Nombres");
                    String cont2 = request.getParameter("Celular");
                    String email2 = request.getParameter("Correo");
                    String pass2 = request.getParameter("Password");
                    usu.setNombre(nom2);
                    usu.setCelular(cont2);
                    usu.setEmail(email2);
                    usu.setPass(pass2);

                    usu.setId(idUsr);
                    dao.modificar(usu);

                    request.getRequestDispatcher("usuario.jsp").forward(request, response);
                    break;
        
                    
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
