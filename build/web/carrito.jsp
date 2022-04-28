<%-- 
    Document   : carrito
    Created on : 27/04/2022, 02:08:31 PM
    Author     : User1
--%>

<%@page import="java.util.ListIterator"%>
<%@page import="modelo.Producto"%>
<%@page import="java.util.List"%>
<%@page import="modelo.ProductoDAO"%>
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
        <%@include file="Detalles/nav-bar.jsp"%>
    <center>
        <div class="container mt-4">
            <div class="row">
                <%
                        List lis = new ProductoDAO().Listar();
                        ListIterator list =lis.listIterator();
                        while (list.hasNext()){
                            Producto regM = (Producto) list.next();
                        
                        %>
                    <div class="col-sm-4">
                    <div class="card">
                        <div class="card-header">
                            <h4><%= regM.getNom()%></h4>
                        </div>
                        <div class="card-body">
                            
                            <img src="ControladorIMG?id=<%= regM.getId() %>" style ="width:200px; height:200px;"><br>
                            <br>
                            <i><%= regM.getPrecio()%></i>
                        </div>
                        <div class="card-footer text-center">
                            <br>
                            <label><%= regM.getDes()%></label>
                            <div>
                                <br>
                                <a href="" class="btn btn-outline-success">Agregar Producto</a>
                                <a href="" class="btn btn-danger">Comprar</a>
                            </div>
                        </div>
                    </div> 
                </div>
              <%
                        }
                    %>
                
            </div>
        </div>
    </center>
    </body>
</html>
