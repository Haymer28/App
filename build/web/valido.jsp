<%-- 
    Document   : valido
    Created on : 1/05/2022, 12:51:22 AM
    Author     : SAMSUNG-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
        <script type="text/javascript">
                $(document).ready(function(){
                    $('#mostrar').click(function(){
                        $('#contenedor', '#contenedorForm').fadeIn(1000);
                    });
                    $('#contenedor').click(function(){
                        $('#contenedor', '#contenedorForm').fadeOut(1000);
                    });
                });
        </script>
    </head>
    <body>
        
        <button id="mostrar">Mostrar formulario</button>
        <div id="contenedor" style="display: none;">
            <div id="contenedorForm" style="display: none;">
                <label>NOmbre</label>
                <input type="text" >
                <label>Apellido</label>
                <input type="text" >
            </div>
        </div>
    </body>
</html>
