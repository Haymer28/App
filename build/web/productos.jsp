<%-- 
    Document   : productos.jsp
    Created on : 5/05/2022, 08:00:23 AM
    Author     : SAMSUNG-PC
--%>

<%@page import="modelo.Producto"%>
<%@page import="java.util.ListIterator"%>
<%@page import="java.util.List"%>
<%@page import="modelo.ProductoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Productos</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">Online-Pets</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="administrador.jsp">Inicio<span class="sr-only">(current)</span></a>
                    </li>

                </ul>

            </div>
        </nav>
        <div >
        <form action="ControladorAdministrador?menu=Usuario" method="POST">
            <input type="submit" name="accion" value="Nuevo Producto" class="btn btn-primary">
        </form>
        </div>
    <center>
        <br>
        <div>

            <hr>
            <table class="table table-striped table-dark">

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
                    ListIterator list = lis.listIterator();
                    while (list.hasNext()) {
                        Producto regM = (Producto) list.next();

                %>
                <tr>
                    <td><%= regM.getId()%></td>
                    <td><%= regM.getNom()%></td>
                    <td><img src="ControladorIMG?id=<%= regM.getId()%>" style="width: 150px; height: 150px; margin-top: 20px; padding: 15px;"></td>
                    <td><%= regM.getDes()%></td>
                    <td><%= regM.getPrecio()%></td>
                    <td><%= regM.getStock()%></td>
                    <td>
                        <form action="ControladorAdministrador?menu=Usuario" method="POST">
                            <input type="submit" name="accion" value="Editar" class="btn btn-dark">
                            <a href="ControladorAdministrador?menu=Usuario&accion=remover&id=<%=regM.getId()%>" class="btn btn-danger">Eliminar</a>
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

