<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Acceso</title>
        <link rel="stylesheet" href="css/login.css">
    </head>
    <body>
        <div class="login-box">
            <img src="img/empleado.jpg" alt="empleado" class="avatar">
            <h1>Acceso al Sistema</h1>
            <form action="EmpleadoControl" method="post">
                <!--Nombre de usuario-->
                <label>Usuario</label>
                <input type="text" name="user" placeholder="Ingrese su nombre de usuario" value=""/>

                <!--Contraseña-->
                <label>Contraseña</label>
                <input type="password" name="pass" placeholder="Ingrese su contraseña" value=""/>

                <input type="submit" name="acc" value="Iniciar Sesion"/>
                <a href="EmpleadoGui.jsp">¿Aún no está registrado?</a>
            </form>
        </div>
    </body>
</html>
