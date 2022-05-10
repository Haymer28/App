<%-- 
    Document   : perfil
    Created on : 3/05/2022, 09:35:50 PM
    Author     : SAMSUNG-PC
--%>

<%@page import="java.util.ListIterator"%>
<%@page import="java.util.List"%>
<%@page import="modelo.RegistroDAO"%>
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
                        <a class="nav-link" href="administrador.jsp">Inicio<span class="sr-only">(current)</span></a>
                    </li>
                </ul>
            </div>
        </nav>

        <button id="mostrar" href="#" class="btn btn-primary" style="margin-left: 30px; margin-top:30px; margin-bottom: 20px;">Añadir Usuario</button>
        
        <div id="contenedor" style="display: none; " class="border border-dark shadow-lg p-3 mb-5 bg-white rounded bg-dark" >
            <br>
            <form action="ControladorAdministrador?menu=Usuario" method="POST"> 
                <div class="form-group d-flex ">

                    <div class="col-sm-3">

                        <label>Nombre</label>
                        <input type="text" value="${usuario.getNombre()}" name="nombres" class="form-control placeholder bg-white border border-dark">
                    </div>
                    <div class="col-sm-3">
                        <label>Celular</label>
                        <input type="text" value="${usuario.getCelular()}" name="celular" class="form-control placeholder bg-white border border-dark">
                    </div>
                    <div class="col-sm-3">
                        <label>Correo</label>
                        <input type="text" value="${usuario.getEmail()}" name="correo" class="form-control placeholder bg-white border border-dark">
                    </div>
                    <div class="col-sm-3" style="margin-bottom: 25px;">
                        <label>Password</label>
                        <input type="text" value="${usuario.getPass()}" name="password" class="form-control placeholder bg-white border border-dark">
                    </div>


                </div>
                    <center>
                <button type="submit" name="accion" value="insertar"  class="btn btn-success" style="margin-bottom: 35px;">
                    <i class="fas fa-edit"></i> Insertar
                </button>
                 <button type="submit" name="accion" value="modificar"  class="btn btn-dark" style="margin-bottom: 35px; ">
                    <i class="fas fa-edit"></i> Modificar
                </button>
                    </center>
            </form>
        </div>

        <br>





        <div class="container-fluid">
            
            <h2 STYLE="text-align: CENTER;">INFORMACI&Oacute;N DE LOS USUARIOS</h2>
            <br><br>
            
            <table class="table table-bordered table table-dark table-hover">

                <tr>
                    <th style="text-align: center;">ID</th>
                    <th style="text-align: center;">Nombres</th>
                    <th style="text-align: center;">Contacto</th>
                    <th style="text-align: center;">Correo</th>
                    <th style="text-align: center;">Password</th>
                    <th style="text-align: center;">Rol</th>
                    <th style="text-align: center;">Acciones</th>
                </tr>
                <%
                    List lis = new RegistroDAO().Listar();
                    ListIterator list = lis.listIterator();
                    while (list.hasNext()) {
                        Usuario regM = (Usuario) list.next();

                %>
                <tr>
                    <td style="text-align: center;"><%= regM.getId()%></td>
                    <td style="text-align: center;"><%= regM.getNombre()%></td>
                    <td style="text-align: center;"><%= regM.getCelular()%></td>
                    <td style="text-align: center;"><%= regM.getEmail()%></td>
                    <td style="text-align: center;"><%= regM.getPass()%></td>
                    <td style="text-align: center;"><%= regM.getRol()%></td>
                    <td>
                <center>
                    <a class="btn btn-warning" id="actualizar"  href="ControladorAdministrador?menu=Usuario&accion=carga&id=<%=regM.getId()%>">Actualizar</a>
                </center>
                <br>
                <center>
                    <a href="ControladorAdministrador?menu=Usuario&accion=eliminar&id=<%=regM.getId()%>" class="btn btn-danger">Eliminar</a>
                </center>
                </td>
                </tr>
                <%
                    }
                %>
            </table>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
        <script src="Javascript/formulario.js" type="text/javascript"></script>

    </body>
</html>
