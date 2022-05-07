/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import modelo.Producto;
import modelo.ProductoDAO;
import modelo.RegistroDAO;
import modelo.Usuario;

/**
 *
 * @author User1
 */
@MultipartConfig
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
    ProductoDAO pro = new ProductoDAO();
    Producto p = new Producto();
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

                    String nom = request.getParameter("nombres");
                    String cont = request.getParameter("celular");
                    String email = request.getParameter("correo");
                    String pass = request.getParameter("password");

                    usu.setNombre(nom);
                    usu.setCelular(cont);
                    usu.setEmail(email);
                    usu.setPass(pass);

                    dao.insertar(usu);

                    request.getRequestDispatcher("usuarios.jsp").forward(request, response);
                    break;
                default:
                    throw new AssertionError();

                case "eliminar":
                    idUsr = Integer.parseInt(request.getParameter("id"));

                    dao.eliminar(idUsr);
                    request.getRequestDispatcher("usuarios.jsp").forward(request, response);
                    break;
                    
                case "remover":
                    idUsr = Integer.parseInt(request.getParameter("id"));

                    pro.eliminar(idUsr);
                    request.getRequestDispatcher("productos.jsp").forward(request, response);
                    break;
                    
                    
                case "carga":
                    idUsr = Integer.parseInt(request.getParameter("id"));
                    Usuario miBeans = dao.cargar(idUsr);
                    request.setAttribute("usuario", miBeans);
                    request.getRequestDispatcher("usuarios.jsp").forward(request, response);
                    break;
                    
                case "modificar":
                    String nom2 = request.getParameter("nombres");
                    String cont2 = request.getParameter("celular");
                    String email2 = request.getParameter("correo");
                    String pass2 = request.getParameter("password");
                    usu.setNombre(nom2);
                    usu.setCelular(cont2);
                    usu.setEmail(email2);
                    usu.setPass(pass2);

                    usu.setId(idUsr);
                    dao.modificar(usu);

                    request.getRequestDispatcher("usuarios.jsp").forward(request, response);
                    break;
                    
                case "Nuevo Producto":
                request.getRequestDispatcher("agregar.jsp").forward(request, response);
                break;
                
                case "Guardar":
                String name = request.getParameter("Nombres");
                Part part=request.getPart("Foto");
                InputStream inputStream = part.getInputStream();
                String des=request.getParameter("Descripcion");
                Double cos=Double.parseDouble(request.getParameter("Precio"));
                int stock= Integer.parseInt(request.getParameter("Stock"));
                
                p.setNom(name);
                p.setFoto(inputStream);
                p.setDes(des);
                p.setPrecio(cos);
                p.setStock(stock);
                
                pro.agregar(p);
                
                request.getRequestDispatcher("productos.jsp").forward(request, response);
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
