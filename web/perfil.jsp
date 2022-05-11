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
        <link rel="icon" href="img/icono.png">
        <title>Online Pets</title>
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
                        <a class="nav-link" href="indice.jsp">Inicio<span class="sr-only">(current)</span></a>
                    </li>

                </ul>
                <ul class="navbar-nav">   
                    <li class="nav-item">
                        <a class="btn btn-danger" href="index.jsp">
                            Cerrar Sesión
                        </a>
                    </li>  
                </ul>
            </div>
        </nav>

        <div class="container-fluid" style="text-align:center;">
            <br>
            <h2 STYLE="text-align: CENTER;">INFORMACI&Oacute;N PERSONAL</h2>
            <br>
            <table class="table table-bordered table table-dark table-hover">
                <tr>
                    <th>Nombres</th>
                    <th>Contacto</th>
                    <th>Correo</th>
                    <th>Password</th>
                    <th></th>
                </tr>

                <tr>
                    <td>${Usuario.getNombre()}</td>
                    <td>${Usuario.getCelular()}</td>
                    <td>${Usuario.getEmail()}</td>
                    <td>${Usuario.getPass()}</td>
                    <td>
                        <button id="mostrar" href="ControladorUsuario?menu=Usuario&accion=carga&id=${Usuario.getId()}" class="btn btn-warning" >
                           Actualizar
                        </button>
                    </td>
                </tr>
            </table>
        </div>

        <div id="contenedor" class="container-fluid" style="display:none;">
            <div  class="border border-dark shadow-lg p-3 mb-5 bg-white  rounded " style="margin-top:30px; ">
                <form action="ControladorUsuario?menu=Usuario" method="POST"> 
                    <div class="form-group d-flex">
                        <div class="col-sm-3">
                            <label>Nombre</label><br>
                            <br>
                            <input type="text" value="${Usuario.getNombre()}" name="nombres" class="form-control placeholder bg-white border-dark ">
                            <br>
                        </div>
                        <div class="col-sm-3">
                            <label>Celular</label><br>
                            <br>
                            <input type="text" value="${Usuario.getCelular()}" name="celular" class="form-control placeholder bg-white border-dark ">
                            <br>
                        </div>
                        <div class="col-sm-3">
                            <label>Correo</label><br>
                            <br>
                            <input type="text" value="${Usuario.getEmail()}" name="correo" class="form-control placeholder bg-white border-dark ">
                            <br>
                        </div>
                        <div class="col-sm-3">
                            <label>Password</label><br>
                            <br>
                            <input type="text" value="${Usuario.getPass()}" name="password" class="form-control placeholder bg-white border-dark  ">
                            <br>
                        </div>
                    </div>
                    <center>
                        <button type="submit" name="accion" value="modificar"  class="btn btn-success">
                            <i class="fas fa-edit"></i> Modificar
                        </button>
                    </center>
                </form>
            </div>
        </div>


        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
        <script src="Javascript/formulario.js" type="text/javascript"></script>

    </body>
</html>
