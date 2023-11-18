package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class PedidoGui_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Registrar Pedido</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/estiloProfesor.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div>\n");
      out.write("            <h1>Registro de Pedido</h1>\n");
      out.write("            <table>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Numero</td>\n");
      out.write("                    <td><input type=\"text\" size=\"10\" value=\"\"/></td>\n");
      out.write("                    <td>Fecha</td>\n");
      out.write("                    <td><input type=\"text\" size=\"10\" value=\"\"/></td>\n");
      out.write("                    <td>Empleado</td>\n");
      out.write("                    <td><input type=\"text\" size=\"10\" value=\"\"/></td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("            <h1>Cesta</h1>\n");
      out.write("            <table>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Codigo</td>\n");
      out.write("                    <td>Nombre</td>\n");
      out.write("                    <td>Precio</td>\n");
      out.write("                    <td>Cantidad</td>\n");
      out.write("                    <td>Importe</td>\n");
      out.write("                    <td></td>\n");
      out.write("                 <tr>\n");
      out.write("                    <td><input type=\"text\" size=\"5\" value=\"\"/></td>\n");
      out.write("                    <td><input type=\"text\" size=\"5\" value=\"\"/></td>\n");
      out.write("                    <td><input type=\"text\" size=\"5\" value=\"\"/></td>\n");
      out.write("                    <td><input type=\"text\" size=\"5\" value=\"\"/></td>\n");
      out.write("                    <td><input type=\"text\" size=\"5\" value=\"\"/></td>\n");
      out.write("                    <td><input type=\"submit\" name=\"acc\" value=\"Quitar\"/></td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("            <table>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"submit\" name=\"acc\" value=\"Nuevo\"/>\n");
      out.write("                        <input type=\"submit\" name=\"acc\" value=\"Listar\"/>\n");
      out.write("                        <input type=\"submit\" name=\"acc\" value=\"Grabar\"/>\n");
      out.write("                    </td>\n");
      out.write("                    <td>Total ==><input type=\"submit\" name=\"acc\" value=\"\"/></td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
