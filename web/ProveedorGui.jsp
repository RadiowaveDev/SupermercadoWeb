<%-- 
    Document   : ProveedorGui
    Created on : 17/04/2021, 12:35:48 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Proveedores</title>
        <link rel="stylesheet" href="css/login.css">
    </head>
    <body>
        <div class="login-box">
            <img src="img/proveedor.jpg" alt="empleado" class="avatar">
            <h1>Registrar Proveedor</h1>
            <form action="ProveedorControl" method="post">
                
                <!--Nombre de proveedor-->
                <label>Código</label>
                <input type="text" name="cod" placeholder="Ingrese código de proveedor" value=""/>
                
                <!--Nombre de proveedor-->
                <label>Nombre</label>
                <input type="text" name="nom" placeholder="Ingrese nombre del proveedor" value=""/>

                <!--Direccion del proveedor-->
                <label>Dirección</label>
                <input type="text" name="dir" placeholder="Ingrese dirección del proveedor" value=""/>

                <input type="submit" name="acc" value="Grabar"/>
            </form>
        </div>
    </body>
</html>
