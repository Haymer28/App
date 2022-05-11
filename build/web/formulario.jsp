<%-- 
    Document   : formulario
    Created on : 27/04/2022, 03:15:39 PM
    Author     : User1
--%>
<%@page import="modelo.Producto"%>
<%@page import="java.util.ListIterator"%>
<%@page import="java.util.List"%>
<%@page import="modelo.ProductoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="img/icono.png">
        <title>Online Pets</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    </head>
    <body>
        <%@include file="Detalles/nav-bar.jsp"%>
    <center>
        <br>
        <div>
            <form action="Controlador" method="POST">
                <input type="submit" name="accion" value="Nuevo" class="btn btn-primary">
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
                            <input type="submit" name="accion" value="Editar" class="btn btn-dark">
                            <input type="submit" name="accion" value="Eliminar" class="btn btn-danger">
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
