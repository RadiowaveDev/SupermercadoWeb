<%-- 
    Document   : ProveedorMensaje
    Created on : 07/05/2021, 06:22:03 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proveedor Mensaje</title>
        <link rel="stylesheet" href="css/estiloProfesor.css">
    </head>
    <body>
        <div>
        <h1>Mensaje</h1>
        <table>
            <% String msg=(String)session.getAttribute("msg"); %>
            <tr>
                <td>Msg: <%=msg %> </td>
            </tr>
             <tr>
                 <td><a href="Menu.jsp">Volver al Menu</td>
            </tr>    
        </table>
        </div>
    </body>
</html>
