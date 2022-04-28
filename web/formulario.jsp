<%-- 
    Document   : formulario
    Created on : 27/04/2022, 03:15:39 PM
    Author     : User1
--%>
<%@page import="modelo.Producto"%>
<%@page import="java.util.ListIterator"%>
<%@page import="java.util.List"%>
<%@page import="modelo.ProductoDAO"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FORM</title>
    </head>
    <body>
    <center>
        <div>
            <form action="Controlador" method="POST">
                <input type="submit" name="accion" value="Listar">
                <input type="submit" name="accion" value="Nuevo">
            </form>
            <hr>
            <table border=1>
                
                    <tr>
                        <th>ID PRODUCTO</th>
                        <th>NOMBRES</th>
                        <th>FOTO</th>
                        <th>DESCRIPCION</th>
                        <th>PRECIO</th>
                        <th>STOCK</th>
                        <th>ACCIONES</th>
                    </tr>
              
                
                    <%
                        List lis = new ProductoDAO().Listar();
                        ListIterator list =lis.listIterator();
                        while (list.hasNext()){
                            Producto regM = (Producto) list.next();
                        
                        %>
                     <tr>
                        <td><%= regM.getId() %></td>
                        <td><%= regM.getNom()%></td>
                        <td><img src="ControladorIMG?id=<%= regM.getId() %>" style="width: 150px; height: 150px; margin-top: 20px; padding: 15px;"></td>
                        <td><%= regM.getDes()%></td>
                        <td><%= regM.getPrecio()%></td>
                        <td><%= regM.getStock()%></td>
                        <td>
                        <form action="Controlador" method="POST">
                            <input type="submit" name="accion" value="Editar">
                            <input type="submit" name="accion" value="Eliminar">
                        </form> 
                        </td>
                    </tr>
                    <%
                        }
                    %>
                
            </table>
        </div>
    </center>
    </body>
</html>
