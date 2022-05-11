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
                        <a class="nav-link" href="index.jsp">Inicio<span class="sr-only">(current)</span></a>
                    </li>


            </div>
        </nav>
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
