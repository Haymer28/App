<%-- 
    Document   : perfil
    Created on : 3/05/2022, 09:35:50 PM
    Author     : SAMSUNG-PC
--%>

<%@page import="modelo.Usuario"%>
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
                        <a class="nav-link" href="index.jsp">Inicio<span class="sr-only">(current)</span></a>
                    </li>

                </ul>

            </div>
        </nav>


        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-3 sidebar-col">
                </div>
                <div class="col-sm-9 main-col">
                    <form action="ControladorUsu?menu=Usuario" method="POST"> 
                        <div class="form-group d-flex">

                            <div class="col-sm-3">

                                <label>Nombre</label>
                                <input type="text" value="${Usuario.getNombre()}" name="nombres" class="form-control placeholder bg-dark text-white">
                            </div>
                            <div class="col-sm-3">
                                <label>Celular</label>
                                <input type="text" value="${Usuario.getCelular()}" name="celular" class="form-control placeholder bg-dark text-white">
                            </div>
                            <div class="col-sm-3">
                                <label>Correo</label>
                                <input type="text" value="${Usuario.getEmail()}" name="correo" class="form-control placeholder bg-dark text-white">
                            </div>
                            <div class="col-sm-3">
                                <label>Password</label>
                                <input type="text" value="${Usuario.getPass()}" name="password" class="form-control placeholder bg-dark text-white">
                            </div>


                        </div>
                        <button type="submit" name="accion" value="modificar"  class="btn btn-dark">
                            <i class="fas fa-edit"></i> Modificar
                        </button>
                    </form>
                    <br>
                    <br>
                    <h2>INFO. DE USUARIO</h2>

                    <table class="table table-bordered table table-dark">

                        <tr>
                           
                            <th>Nombres</th>
                            <th>Contacto</th>
                            <th>Correo</th>
                            <th>Rol</th>
                            <th></th>
                        </tr>
                        <%
                            Usuario usu = new Usuario();

                        %>
                        <tr>
                            
                            <td>${Usuario.getNombre()}</td>
                            <td>${Usuario.getCelular()}</td>
                            <td>${Usuario.getEmail()}</td>
                            <td>${Usuario.getRol()}</td>

                            <td><center><a class="btn btn-warning" href="ControladorUsu?menu=Usuario&accion=carga&id=${Usuario.getId()}">Actualizar</a></center></td>
                        </tr>
                    </table>

                </div>
            </div>    
        </div>


        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>

    </body>
</html>
