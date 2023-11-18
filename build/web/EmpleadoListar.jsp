<%-- 
    Document   : EmpleadoListar
    Created on : 05/05/2021, 03:47:29 PM
    Author     : LENOVO
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Empleado Listar</title>
        <link rel="stylesheet" href="css/estiloProfesor.css">
    </head>
    <body>
        <div>
            <h1>Lista de Empleados</h1>
            <%List lis=(List)session.getAttribute("lis"); %>
            <table>
                <tr>
                    <td>Código</td>
                    <td>Nombre</td>
                    <td>Tipo</td>
                    <td>Usuario</td>
                    <td>Password</td>
                </tr>
                <%for(int i=1;i<lis.size();i++){%>
                <%Object[]f=(Object[])lis.get(i);%>
                <tr>
                    <td><input type="text" name="cod" size="10" value="<%=f[0]%>"></td>
                    <td><input type="text" name="nom" size="10" value="<%=f[1]%>"></td>
                    <td><input type="text" name="tipo" size="10" value="<%=f[2]%>"></td>
                    <td><input type="text" name="user" size="10" value="<%=f[3]%>"></td>
                    <td><input type="text" name="pass" size="10" value="<%=f[4]%>"></td>
                </tr>
                <% } %>
                <tr>
                    <td colspan="5"><a href="Menu.jsp">Volver al Menu</a></td>
                </tr>
            </table>
        </div>
    </body>
</html>
