<%-- 
    Document   : fRegistro
    Created on : 1/05/2022, 12:44:32 AM
    Author     : SAMSUNG-PC
--%>

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
        <%@include file="Usuario/nav-bar.jsp" %>
        <br>
        <br>    
        <div class="container registro">
            <h1>Formulario de registro</h1>
            <br>
            <form action="ControladorRegistro?accion=Registrar" method="POST">
                <div class="row">
                    <div class="col-sm-6">
                        <label class=""><strong>Nombre</strong></label><br>
                        <br>
                        <input class="form-control placeholder bg-white text-dark border border-dark" type="text" placeholder="Ingrese su Nombre" name="nombres"><br>
                        <br>
                    </div>
                    <div class="col-sm-6">
                        <label><strong>Celular</strong></label><br>
                        <br>
                        <input  class="form-control placeholder bg-white text-dark border border-dark"type="text" placeholder="Ingrese su Contacto" name="celular"><br>
                        <br>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <label><strong>Correo</strong></label><br>
                        <br>
                        <input class="form-control placeholder bg-white text-dark border border-dark" type="text" placeholder="Ingrese su Correo" name="email"><br>
                        <br>
                    </div>
                    <div class="col-sm-6">
                        <label><strong>Password</strong></label><br>
                        <br>
                        <input  class="form-control placeholder bg-white text-dark border border-dark" type="password" placeholder="Ingrese su Contraseña" name="pass"><br>
                        <br>
                    </div>
                </div>
                <br>
                
              <button type="submit" id="btn" name="accion" value="Registrar" class="btn btn-danger ">Enviar</button>&nbsp;
                

            </form>
        </div>
    </body>
</html>
