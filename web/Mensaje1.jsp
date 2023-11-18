<%-- 
    Document   : Mensaje1
    Created on : 25/05/2021, 07:29:59 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Supermercado El Olivense</title>
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
