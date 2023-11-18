<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
        <link rel="stylesheet" href="css/estiloProfesor.css">
    </head>
    <body>
        <div>
            <h1>Menú principal</h1>
            <% Object[] fila = (Object[])session.getAttribute("fila");%>
            <table>
                <tr>
                    <td colspan="2">¡BIENVENIDO!</td>
                </tr>
                <tr>
                    <td>Código: <%=fila[0] %></td>
                    <td>Nombre de Usuario: <%=fila[1] %></td>
                </tr>
            </table>
            
            <ul id="m">
                <li>Archivos
                    <ul class="sm">
                        <li>Empleado
                            <ul>
                                <li><a href="EmpleadoBuscar.jsp">Buscar</a></li>
                                <li>
                                    <form action="EmpleadoControl">
                                        <input type="submit" name="acc" value="Listar">
                                    </form>
                                </li>
                            </ul>
                        </li>   
                        <li>Cliente
                            <ul>
                                <li><a href="ClienteGui.jsp">Registrar</a></li>
                                <li>
                                    <form action="ClienteControl">
                                        <input type="submit" name="acc" value="Listar">
                                    </form>
                                </li>    
                            </ul>
                        </li>    
                        <li>Proveedor
                            <ul>
                                <li><a href="ProveedorGui.jsp">Registrar</a></li>
                                <li>
                                    <form action="ProveedorControl">
                                        <input type="submit" name="acc" value="Listar">
                                    </form>
                                </li>
                            </ul>
                        </li>
                        <li>Articulo
                            <ul>
                                <li><a href="ArticuloGui.jsp">Registrar</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
                
                <li>Procesos
                    <ul class="sm">
                        <li>Nota Pedido
                            <ul>
                                <li><form action="PedidoControl">
                                    <input type="hidden" name="cod" value='<%=fila[0]%>'/>
                                    <input type="submit" name="acc" value="Nuevo"/>
                                    </form></li>
                            </ul>
                        </li>
                        <li>Orden Compra
                            <ul>
                                <li><form action="CompraControl">
                                        <input type="hidden" name="cod" value='<%=fila[0]%>'/>
                                        <input type="submit" name="acc" value="Nuevo"/>
                                    </form></li>
                            </ul>
                        </li>    
                    </ul>
                </li>
                
                <li>Consultas
                    <ul class="sm">
                        <li>Inventarios</li>
                    </ul>
                </li>
                
            </ul>
        </div>
    </body>
</html>
