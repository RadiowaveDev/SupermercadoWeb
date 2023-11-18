<%-- 
    Document   : EmpleadoEditar
    Created on : 04/05/2021, 11:51:50 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Empleado Editar</title>
        <link rel="stylesheet" href="css/estiloProfesor.css">
    </head>
    <body>
        <div>
            <h1>Editar Empleado</h1>
            <% Object[]f=(Object[])session.getAttribute("fila"); %>
            <table>
                <tr>
                    <td>Codigo</td>
                    <td><input typr="text" name="cod" value="<%=f[0]%>"/></td>
                </tr>
                <tr>
                    <td>Nombre</td>
                    <td><input typr="text" name="nom" value="<%=f[1]%>"/></td>
                </tr>
                <tr>
                    <td>Tipo</td>
                    <td><input typr="text" name="tipo" value="<%=f[2]%>"/></td>
                </tr>

            </table>
        </div>
    </body>
</html>
