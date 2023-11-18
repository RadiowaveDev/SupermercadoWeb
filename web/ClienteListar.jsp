<%-- 
    Document   : ClienteListar
    Created on : 07/05/2021, 07:02:22 PM
    Author     : LENOVO
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cliente Listar</title>
        <link rel="stylesheet" href="css/estiloProfesor.css">
    </head>
    <body>
        <div>
            <h1>Lista de clientes</h1>
            <%List lis=(List)session.getAttribute("lis"); %>
            <table>
                    <tr>
                        <td>Código</td>
                        <td>Nombre</td>
                        <td>Dirección</td>
                    </tr>
                    <%for(int i=1;i<lis.size();i++){%>
                    <%Object[]f=(Object[])lis.get(i);%>
                    <tr>
                        <td><input type="text" name="cod" size="10" value="<%=f[0]%>"></td>
                        <td><input type="text" name="nom" size="10" value="<%=f[1]%>"></td>
                        <td><input type="text" name="dir" size="10" value="<%=f[2]%>"></td>
                    </tr>
                    <% } %>
                    <tr>
                        <td colspan="5"><a href="Menu.jsp">Volver al Menu</a></td>
                    </tr>
            </table>        
        </div>
    </body>
</html>
