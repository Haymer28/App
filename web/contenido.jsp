<%-- 
    Document   : contenido
    Created on : 28/04/2022, 06:15:08 PM
    Author     : User1
--%>





<%@page import="java.util.List"%>
<%@page import="modelo.Producto"%>
<%@page import="modelo.ProductoDAO"%>
<%@page import="java.util.ListIterator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        <a class="nav-link" href="Usuario/index.jsp">Inicio<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="./Controlador?accion=Carro">Seguir Comprando</a>
      </li>
    </ul>
      <ul class="navbar-nav">   
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-expanded="false">
          Màs opciones
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="Usuario/perfil.jsp">Mi perfil</a>
            <a class="dropdown-item" href="">Cerrar Sesiòn</a>
        </div>
        </a>
      </li>
      </ul>
  </div>
</nav>
        
        <div class="container mt-4">
            <h2>Carrito</h2>
            <br>
            <div class="row">
                <div class="col-sm-8">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>ITEM</th>
                                <th>NOMBRES</th>
                                <th>DESCRIPCI&Oacute;N</th>
                                <th>PRECIO</th>
                                <th>CANTIDAD</th>
                                <th>SUBTOTAL</th>
                                <th>ACCI&Oacute;N</th>
                            </tr>
                        </thead>
                         
                             <%
                        List lis = new ProductoDAO().Listar();
                        ListIterator list =lis.listIterator();
                        while (list.hasNext()){
                            Producto regM = (Producto) list.next();
                        
                        %>
                        <tbody>
                            
                            <tr>
                                <td><%= regM.getId()%></td>
                                <td><%= regM.getNom()%></td>
                                <td><%= regM.getDes()%></td>
                                <td><%= regM.getPrecio()%></td>
                                <td><%= regM.getStock()%></td>
                                <td></td>
                            </tr>
                            
                        </tbody>
                        <%
                            }
                        %>
                    </table>
                </div>
                            
                        
                <div class="col-sm-4">
                    <div class="card">
                        <div class="card-header">
                            <h3>Generar Comprar</h3>
                        </div>
                        <div class="card-body">
                            <label>Subtotal:</label>
                            <input type="text" readonly="" class="form-control">
                            <label>Descuento:</label>
                            <input type="text" readonly="" class="form-control">
                            <label>Total a pagar:</label>
                            <input type="text" readonly="" class="form-control">
                        </div>
                        <div class="card-footer">
                            <a href="#" class="btn btn-info btn-block">Realizar Pago</a>
                            <a href="#" class="btn btn-info btn-block">Generar Compra</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        
        
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
    </body>
</html>
