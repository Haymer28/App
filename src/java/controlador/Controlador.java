/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import modelo.Carrito;
import modelo.Producto;
import modelo.ProductoDAO;

/**
 *
 * @author User1
 */
@WebServlet(name = "Controlador", urlPatterns = {"/Controlador"})
public class Controlador extends HttpServlet {
    ProductoDAO dao = new ProductoDAO();
    List<Producto> p = new ArrayList<>();
    Producto pro = new Producto();
    
    List<Carrito> listaCarrito = new ArrayList<>();
    int item;
    int idp;
    double totalPagar=0.0;
    int cantidad=1;


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
        String accion=request.getParameter("accion");
            p= dao.Listar();
            switch (accion){
                case "AgregarCarrito":
                    idp = Integer.parseInt(request.getParameter("id"));
                    pro = dao.listarId(idp);
                    item=item+1;
                    Carrito car = new Carrito();
                    car.setItem(item);
                    car.setIdProducto(pro.getId());
                    car.setNombres(pro.getNom());
                    car.setDescripcion(pro.getDes());
                    car.setPrecioCompra(pro.getPrecio());
                    car.setCantidad(cantidad);
                    car.setSubtotal(cantidad * pro.getPrecio());
                    listaCarrito.add(car);
                    request.setAttribute("contador", listaCarrito.size());
                    request.getRequestDispatcher("Controlador?accion=carrito").forward(request, response);
                    break;
                case "Carrito":
                    totalPagar=0.0;
                    request.setAttribute("carrito", listaCarrito);
                    for (int i=0; i < listaCarrito.size(); i++){
                        totalPagar = totalPagar+listaCarrito.get(i).getSubtotal();
                    }
                    request.setAttribute("totalPagar", totalPagar);
                    request.getRequestDispatcher("contenido.jsp").forward(request, response);
                    break;
                case "Nuevo":
                request.getRequestDispatcher("agregar.jsp").forward(request, response);
                break;
                /**
                 case "remover":
                    idp = Integer.parseInt(request.getParameter("id"));

                    dao.eliminar(idp);
                    request.getRequestDispatcher("contenido.jsp").forward(request, response);
                    break;
                */
                default:
                    
                    request.getRequestDispatcher("carrito.jsp").forward(request, response);
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
        
        /**String accion=request.getParameter("accion");
        switch(accion){
            case "Listar":
                List<Producto>lista=dao.Listar();
                request.getSession().setAttribute("lista",lista);
                request.getRequestDispatcher("formulario.jsp").forward(request, response);
                break;
            case "Nuevo":
                request.getRequestDispatcher("agregar.jsp").forward(request, response);
                break;
            case "Guardar":
                String nom=request.getParameter("Nombres");
                Part part=request.getPart("Foto");
                InputStream inputStream=part.getInputStream();
                String des=request.getParameter("Descripcion");
                Double cos=Double.parseDouble(request.getParameter("Precio"));
                int stock= Integer.parseInt(request.getParameter("Stock"));
                
                pro.setNom(nom);
                pro.setFoto(inputStream);
                pro.setDes(des);
                pro.setPrecio(cos);
                pro.setStock(stock);
                dao.agregar(pro);
                
                request.getRequestDispatcher("formulario.jsp").forward(request, response);
                break;
            default:
                request.getRequestDispatcher("Controlador?accion=Listar").forward(request, response);
                break;


    }
       */
    }
    
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
