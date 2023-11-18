<%-- 
    Document   : Portal
    Created on : 06/04/2021, 09:21:21 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/estilos.css">
        <title>Supermercado El Olivense</title>
    </head>
     <body>
        <header>
            <div class="wrapper">
            <div class="logo">El Olivense</div>
            <nav class="barra">
                <a href="Portal.jsp">Portada</a>
                <a href="EmpleadoGui.jsp">Registro de Empleado</a>
                <a href="Acceso.jsp">Acceso al sistema</a>
            </nav>
            </div>
        </header>
        <div class="categorias">
        <nav class>
            <a href="#bebidas">Bebidas</a>
            <a href="#carnes">Carne de res y porcina</a>
            <a href="#verduras">Frutas y  verduras</a>
            <a href="#desayunos">Desayunos</a>
            <a href="#cuidado">Cuidado personal</a>
        </nav>
        </div>
        <main>
            <section id="banner">
                <img src="img/banner.jpg">
                <div class="contenedor">
                    <h2>Buscamos los mejores productos por usted</h2>
                    <h3>¿Necesita algo en particular?</h3>
                </div>
            </section>
            
            <div class="cinta">
                 <a id="bebidas"/>
                 <h2>Sección de bebidas</h2>
                <p>Gaseosas, cervezas y bebidas rehidratantes</p>
            </div>
            <table>
                <tr>
                    <td><img src="img/coca cola.jpg"></td>
                    <td><img src="img/inka cola.jpg"></td>
                    <td><img src="img/pepsi.jpg"></td>
                    <td></td>
                </tr>
                <tr>
                    <td><h4>Coca Cola 1.5 litros<br> s/.6.8</h4></td>
                    <td><h4>Inka Cola 1.5 litros<br> s/.6.6</h4></td>
                    <td><h4>Pepsi 1.5 litros<br> s/.6.0</h4></td>
                    <td></td>
                </tr>
                <tr>
                    <td><img src="img/pilsen.jpg"></td>
                    <td><img src="img/cusquena.jpg"></td>
                    <td><img src="img/cristal.jpg"></td>
                </tr>
                <tr>
                    <td><h4>Pilsen Callao 330ml 6pack<br>s/21.60</h4></td>
                    <td><h4>Cusqueña 330ml 6pack<br>s/21.90</h4></td>
                    <td><h4>Cristal 330ml 6pack <br>s/17.50</h4></td>
                </tr>
            </table>
            
            <div class="cinta">
                <a id="carnes"/>
                <h2>Sección de Carne de res y porcina</h2>
               <p>Cortes de carne</p>
           </div>
           <table> 
                <tr>
                    <td><img src="img/carne molida.jpg"></td>
                    <td><img src="img/guiso tierno.jpg"></td>
                    <td><img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.MUm-oRBo5y033nnq5c0NogAAAA%26pid%3DApi&f=1"></td>
                </tr>
                <tr>
                    <td>Carne molida de res 0.7kg<br>s/12.59</td>
                    <td>Guiso tierno de res 0.7kg<br>s/21.35</td>
                    <td>Filete de pechuga pollo 0.9kg<br>s/20.50</td>
                </tr>
                <tr>
                    <td><img src="img/chuleta parrillera.jpg"></td>
                    <td><img src="img/panceta.jpg"></td>
                    <td><img src="img/bife lomo.jpg"></td>
                </tr>
                <tr>
                    <td>Chuleta parrillera de lomo 0.8kg<br>s/11.92</td>
                    <td>Panceta de cerdo sin piel 1.6kg<br>s/31.84</td>
                    <td>Bife lomo de cerdo 0.9kg<br>s/17.21</td>
                </tr>
           </table>

           <div class="cinta">
               <a id="verduras"/>
            <h2>Sección de frutas y verduras</h2>
            <p>Frutas de temporada y verduras del campo</p>
           </div>

           <table> 
            <tr>
                <td><img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fplazavea.vteximg.com.br%2Farquivos%2Fids%2F498786-450-450%2F20201266.jpg%3Fv%3D637405689074370000&f=1&nofb=1"></td>
                <td><img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.mV3wgqJiWHIK1pHWRp8gEAHaHa%26pid%3DApi&f=1"></td>
                <td><img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.yRKJryAXEHtA5QdR_HURygHaHa%26pid%3DApi&f=1"></td>
            </tr>
            <tr>
                <td>Papa amarilla 0.5kg<br>s/2.50</td>
                <td>Tomate italiano 0.5kg<br>s/2.89</td>
                <td>Limón ácido malla 500gr<br>s/1.80</td>
            </tr>
            <tr>
                <td><img src="https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fplazavea.vteximg.com.br%2Farquivos%2Fids%2F177256-300-200%2F772631.jpg&f=1&nofb=1"></td>
                <td><img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fplazavea.vteximg.com.br%2Farquivos%2Fids%2F214694-450-450%2F48640.jpg%3Fv%3D636905890317400000&f=1&nofb=1"></td>
                <td><img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.-cvTV-LOhsm3Gn-tdru7-wHaHa%26pid%3DApi&f=1"></td>
            </tr>
            <tr>
                <td>Plátano de seda 1kg<br>s/2.89 </td>
                <td>Naranja para jugo 1kg<br>s/1.99</td>
                <td>Piña Golden 2.5kg<br>s/13.73</td>
            </tr>
        </table>

        <div class="cinta">
            <a id="desayunos"/>
            <h2>Sección de Desayunos</h2>
            <p>Panadería, leche y cereales</p>
        </div>

        <table> 
            <tr>
                <td><img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fvivanda.vteximg.com.br%2Farquivos%2Fids%2F166326-1000-1000%2F20091711.jpg%3Fv%3D636137827542200000&f=1&nofb=1"></td>
                <td><img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.dEmF2ltB8M1FBwZ7V-TUwwHaHa%26pid%3DApi&f=1"></td>
                <td><img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fvivanda.vteximg.com.br%2Farquivos%2Fids%2F174743-1000-1000%2F20047663.jpg%3Fv%3D636632138966570000&f=1&nofb=1"></td>
            </tr>
            <tr>
                <td>Avena Quaker bolsa 1kg<br>s/10.90</td>
                <td>Cereal integral Nestlé caja 570gr<br>s/12.50</td>
                <td>Queso fresco Bonlé 200gr<br>s/5.40</td>
            </tr>
            <tr>
                <td><img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.DNTPqIw4o7e08-dzoVMjwQHaHa%26pid%3DApi&f=1"></td>
                <td><img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.KEIDtnk8bji8tKETmAvWtgHaHa%26pid%3DApi&f=1"></td>
                <td><img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.oWStJDLUYfhaoq-r5ubPjwHaHa%26pid%3DApi&f=1"></td>
            </tr>
            <tr>
                <td>Jamón Braedt paquete 200gr<br>s/5.40 </td>
                <td>Salchicha San Fernando paquete 250gr<br>s/3.40</td>
                <td>Mantequilla Gloria barra 200gr<br>s/8.10</td>
            </tr>
        </table>        
        
        <div class="cinta">
            <a id="cuidado"/>
            <h2>Sección de Cuidado personal</h2>
            <p>Jabones, pasta dental, desodorantes, shampoo</p>
        </div>
        <table>
            <tr>
                <td><img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwongfood.vteximg.com.br%2Farquivos%2Fids%2F354812-750-750%2F760288004-1.jpg%3Fv%3D637237089007030000&f=1&nofb=1"></td>
                <td><img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwongfood.vteximg.com.br%2Farquivos%2Fids%2F160026-750-750%2FJabon-en-Barra-Heno-de-Pravia-Original-Pack-3-Unid-150-g-405306.jpg%3Fv%3D636104929465330000&f=1&nofb=1"></td>
                <td><img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.ItluiT39wXqRJXGX3HfRxwHaHa%26pid%3DApi&f=1"></td>
            </tr>
            <tr>
                <td>Jabón de glicerina 90gr 3uni<br>s/7.90</td>
                <td>Jabón Heno de Pravia 150gr 3uni<br>s/13.70</td>
                <td>Pasta dental Colgate<br>3uni s/14.50</td>
            </tr>
            <tr>
                <td><img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.QfYdaDAAVurZNflqjKuK5AHaHa%26pid%3DApi&f=1"></td>
                <td><img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fn2.sdlcdn.com%2Fimgs%2Fe%2Fx%2F1%2FHead-Shoulders-Smooth-Silky-Shampoo-SDL714037446-1-65ff4.jpg&f=1&nofb=1"></td>
                <td><img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fjumbocolombiafood.vteximg.com.br%2Farquivos%2Fids%2F3460570-750-750%2F7702006205245.jpg%3Fv%3D637054669395200000&f=1&nofb=1"></td>
            </tr>
            <tr>
                <td>Desodorante aerosol Old Spice<br>s/10.90</td>
                <td>Shampoo Head & Shoulders 375ml<br>s/15.90</td>
                <td>Shampoo Savital anticaspa<br>s/11.50</td>
            </tr>
        </table>

        </main>
        <footer>
           <div class="creditos">
            Angel Gonzales Espinoza UTP Abril 2021
            </div>
        </footer>
    </body>
</html>
