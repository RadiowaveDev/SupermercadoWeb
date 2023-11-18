<%-- 
    Document   : EmpleadoBuscar
    Created on : 04/05/2021, 07:33:02 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buscar Empleado</title>
        <link rel="stylesheet" href="css/estiloProfesor.css">
    </head>
    <body>
        <div>
            <h1>Buscar Empleado</h1>
            <form action="EmpleadoControl" method="post">
                <table>
                    <tr>
                        <td>Código</td>
                        <td><input type="text" name="cod" size="20"></td>
                        <td><input type="submit" name="acc" value="Buscar"/></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
