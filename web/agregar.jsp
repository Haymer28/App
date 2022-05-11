<%-- 
    Document   : agregar
    Created on : 28/04/2022, 12:17:47 AM
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
        </nav>
    <center>
        <br>
        <div>
            <h3>Agregar un Producto</h3>
        </div>
        <br>
        <br>
        <div class="container registro" style="margin-left: 100px;">
            <form action="ControladorAdministrador?menu=Usuario" method="POST" enctype="multipart/form-data">
                <div class="row">
                    <div class="col-sm-6">
                        <label class=""><strong>Nombre</strong></label><br>
                        <br>
                        <input class="form-control placeholder bg-white text-dark border border-dark" type="text" placeholder="Ingrese su Nombre" name="Nombres"><br>
                        <br>
                    </div>
                    <div class="col-sm-6">
                        <label><strong>Foto</strong></label><br>
                        <br>
                        <input type="file" name="Foto"><br>
                        <br>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-6">
                        <label class=""><strong>Descripcion</strong></label><br>
                        <br>
                        <input class="form-control placeholder bg-white text-dark border border-dark" type="text" placeholder="Ingrese la Descripcion" name="Descripcion"><br>
                        <br>
                    </div>
                    <div class="col-sm-6">
                        <label class=""><strong>Precio:</strong></label><br>
                        <br>
                        <input class="form-control placeholder bg-white text-dark border border-dark" type="text" placeholder="Ingrese el Precio" name="Precio"><br>
                        <br>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <label><strong>Stock</strong></label><br>
                        <br>
                        <input class="form-control placeholder bg-white text-dark border border-dark" placeholder="Ingrese el Stock" name="Stock"><br>
                        <br>
                    </div>
                        <div class="col-sm-6">
                            <label></label><br>
                            <br>
                            <input type="submit" name="accion" value="Guardar" class="btn btn-danger">
                            <br>
                        </div>
                    </div>
                
                 </form>
                </div>
    </center>
</body>
</html>
