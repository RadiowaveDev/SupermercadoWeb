<%-- 
    Document   : ArticuloLista
    Created on : 11/05/2021, 09:08:27 PM
    Author     : LENOVO
--%>

<%@page import="vista.PedidoPresentador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Articulos</title>
        <link rel="stylesheet" href="css/estiloProfesor.css">
    </head>
    <body>
        <div>
            <h1>Lista de Articulos</h1>
            <% PedidoPresentador pedPre=(PedidoPresentador)session.getAttribute("pedPre"); %>
            <table>
                <tr>
                    <td>Codigo</td>
                    <td>Nombre</td>
                    <td>Precio</td>
                    <td>Cantidad</td>
                    <td></td>
                </tr>
                <%for(int i=1;i<pedPre.getLis().size();i++){%>
                <%Object f[]=(Object[])pedPre.getLis().get(i);%>
                 <tr>
                    <form action="PedidoControl" method="post">
                        <td><input type="text" name="cod" size="5" value='<%=f[0]%>'/></td>
                        <td><input type="text" name="nom" size="10" value='<%=f[1]%>'/></td>
                        <td><input type="text" name="pre" size="5" value='<%=f[2]%>'/></td>
                        <td><input type="text" name="can" size="5" value=""/></td>
                        <td><input type="submit" name="acc" value="Agregar"/></td>
                    </form>    
                </tr>
                <%}%>
            </table>
        </div>
    </body>
</html>
