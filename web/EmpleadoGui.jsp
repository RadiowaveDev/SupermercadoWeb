<%-- 
    Document   : EmpleadoGui
    Created on : 13/04/2021, 07:19:22 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Empleado</title>
        <link rel="stylesheet" href="css/registro.css">
        </head>
    <body>
        <div class="register-box">
            <img src="img/empleado.jpg" alt="empleado" class="avatar">
            <h1>Registrar empleado</h1>
            <form action="EmpleadoControl" method="post">
                
                <label>Código</label>
                <input type="text" name="cod" placeholder="Ingrese código del empleado" value=""/>
                
                <label>Nombre</label>
                <input type="text" name="nom" placeholder="Ingrese nombre del empleado" value=""/>
                
                <label>Tipo</label>
                <input type="text" name="tipo" placeholder="Ingrese tipo de empleado" value=""/>
                
                <label>Usuario</label>
                <input type="text" name="user" placeholder="Ingrese nombre de usuario" value=""/>
                
                <label>Contraseña</label>
                <input type="password" name="pass" placeholder="Ingrese contraseña" value=""/>
                
                <input type="submit" name="acc" value="Grabar"/>
            </form>
        </div>
    </body>
</html>
