<%-- 
    Document   : ClienteGui
    Created on : 17/04/2021, 12:35:18 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Clientes</title>
        <link rel="stylesheet" href="css/login.css">
    </head>
    <body>
        <div class="login-box">
            <img src="img/cliente.jpg" alt="empleado" class="avatar">
            <h1>Registrar Cliente</h1>
            <form action="ClienteControl" method="post">
                
                <!--Nombre de cliente-->
                <label>Código</label>
                <input type="text" name="cod" placeholder="Ingrese código de cliente" value=""/>
                
                <!--Nombre de cliente-->
                <label>Nombre</label>
                <input type="text" name="nom" placeholder="Ingrese nombre del cliente" value=""/>

                <!--Direccion del proveedor-->
                <label>Dirección</label>
                <input type="text" name="dir" placeholder="Ingrese dirección del cliente" value=""/>

                <input type="submit" name="acc" value="Grabar"/>
            </form>
        </div>
    </body>
</html>
