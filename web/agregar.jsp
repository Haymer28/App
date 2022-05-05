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
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <div>
            <h3>Agregar un Producto</h3>
        </div>
        <hr>
        <br>
        <form action="ControladorAdministrador?menu=Usuario" method="POST" enctype="multipart/form-data">
            <label>Nombre Producto:</label>
            <input type="text" name="Nombres">
            <label>Foto:</label>
            <input type="file" name="Foto">
            
            <label>Descripcion:</label>
            <input type="text" name="Descripcion">
            
            <label>Precio:</label>
            <input type="text" name="Precio">
            
            <label>Stock:</label>
            <input type="text" name="Stock">
            
            <input type="submit" name="accion" value="Guardar">
            
            
        </form>
    </center>
    </body>
</html>
