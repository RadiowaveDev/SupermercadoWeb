<%-- 
    Document   : CompraGui
    Created on : 18/05/2021, 12:34:35 PM
    Author     : LENOVO
--%>
<%@page import="vista.CompraPresentador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Compra</title>
        <link rel="stylesheet" href="css/estiloProfesor.css">
    </head>
    <body>
        <div>
        <h1>Orden de Compra</h1>
        <%CompraPresentador comPre=(CompraPresentador)session.getAttribute("comPre");%>
            <table>
                <% Object[]f1=comPre.getFila(); %>
                <tr>
                    <td>Numero</td>
                    <td><input type="text" size="5" value='<%=f1[0]%>'/></td>
                    <td>Fecha</td>
                    <td><input type="text" size="8" value='<%=f1[1]%>'/></td>
                    <td>Empleado</td>
                    <td><input type="text" size="5" value='<%=f1[3]%>'></td>
                </tr>
            </table>
                    
            <table>
                <%Object[]f3=comPre.getFila2();%>
                <tr>
                <form action="CompraControl" method="post">
                    <td>Ingrese código</td><td><input type="text" name="codPro" size="8" value='<%=f3[0]%>'/></td>
                    <td><input type="submit" name="acc" value="Buscar"/></td>
                    <td>Proveedor</td><td><input type="text" name="nom" size="15" value='<%=f3[1]%>'/></td>
                </form>    
                </tr>    
            </table>
            <h1>Detalles de la Cesta</h1>        
            <table>
                <tr>
                    <td>Codigo</td>
                    <td>Nombre</td>
                    <td>Precio</td>
                    <td>Cantidad</td>
                    <td>Importe</td>
                    <td></td>
                </tr>
                <%for(int i=0;i<comPre.getLis().size();i++){ %>
                <% Object[]f2=(Object[])comPre.getLis().get(i); %>
                 <tr>
                     <td><input type="text" size="5" value='<%=f2[0]%>'/></td>
                    <td><input type="text" size="10" value='<%=f2[1]%>'/></td>
                    <td><input type="text" size="5" value='<%=f2[2]%>'/></td>
                    <td><input type="text" size="5" value='<%=f2[3]%>'/></td>
                    <td><input type="text" size="5" value='<%=f2[4]%>'/></td>
                    <td><input type="submit" name="acc" value="Quitar"/></td>
                </tr>
                <% } %>
            </table>
            
            <table>
                <tr>
                    <td>
                        <form action="CompraControl" method="post">
                            <input type="hidden" name="codPro" value='<%=f3[0]%>'>    
                            <input type="submit" name="acc" value="Nuevo"/>
                            <input type="submit" name="acc" value="Listar"/>
                            <input type="submit" name="acc" value="Grabar"/>
                        </form>
                    </td>
                    <td>Total ==><input type="text" size="15" name="acc" value=""/></td>
                </tr>
            </table>
            <%=comPre.getMsg()%>
        </div>            
    </body>
</html>
