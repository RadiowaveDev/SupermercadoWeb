<%-- 
    Document   : ArticuloGui
    Created on : 22/05/2021, 02:13:10 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Articulos</title>
        <link rel="stylesheet" href="css/registro.css">
    </head>
    <body>
        <div class="register-box">
             <h1>Registrar Articulo</h1>
             <form action="ArticuloControl" method="post">
                 <label>Código</label>
                <input type="text" name="cod" placeholder="Ingrese código del articulo" value=""/>
                
                <label>Nombre</label>
                <input type="text" name="nom" placeholder="Ingrese nombre del articulo" value=""/>
                
                <label>Precio</label>
                <input type="text" name="pre" placeholder="Ingrese precio del articulo" value=""/>
                
                <label>Stock</label>
                <input type="text" name="sto" placeholder="Ingrese stock del articulo" value=""/>
                 
                 <input type="submit" name="acc" value="Grabar"/>
             </form>
        </div>
    </body>
</html>
