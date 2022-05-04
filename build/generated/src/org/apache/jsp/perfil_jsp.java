package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import modelo.Usuario;

public final class perfil_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>JSP Page</title>\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css\" integrity=\"sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn\" crossorigin=\"anonymous\">\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-dark bg-dark\">\r\n");
      out.write("            <a class=\"navbar-brand\" href=\"#\">Online-Pets</a>\r\n");
      out.write("            <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("                <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("            </button>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n");
      out.write("                <ul class=\"navbar-nav mr-auto\">\r\n");
      out.write("                    <li class=\"nav-item active\">\r\n");
      out.write("                        <a class=\"nav-link\" href=\"indice.jsp\">Inicio<span class=\"sr-only\">(current)</span></a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    \r\n");
      out.write("                </ul>\r\n");
      out.write("             <ul class=\"navbar-nav\">   \r\n");
      out.write("      <li class=\"nav-item\">\r\n");
      out.write("        <a class=\"btn btn-danger\" href=\"index.jsp\">\r\n");
      out.write("          Cerrar Sesión\r\n");
      out.write("        </a>\r\n");
      out.write("      </li>  \r\n");
      out.write("      </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("        </nav>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <div class=\"container-fluid\">\r\n");
      out.write("\r\n");
      out.write("            <br>\r\n");
      out.write("            <br>\r\n");
      out.write("            <h2 STYLE=\"text-align: CENTER;\">INFORMACI&Oacute;N DE USUARIO</h2>\r\n");
      out.write("            <br><br>\r\n");
      out.write("            <table class=\"table table-bordered table table-dark\">\r\n");
      out.write("\r\n");
      out.write("                <tr>\r\n");
      out.write("\r\n");
      out.write("                    <th>Nombres</th>\r\n");
      out.write("                    <th>Contacto</th>\r\n");
      out.write("                    <th>Correo</th>\r\n");
      out.write("                    <th>Password</th>\r\n");
      out.write("                    <th>Rol</th>\r\n");
      out.write("                </tr>\r\n");
      out.write("                ");

                    Usuario usu = new Usuario();

                
      out.write("\r\n");
      out.write("                <tr>\r\n");
      out.write("\r\n");
      out.write("                    <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${Usuario.getNombre()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</td>\r\n");
      out.write("                    <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${Usuario.getCelular()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</td>\r\n");
      out.write("                    <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${Usuario.getEmail()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</td>\r\n");
      out.write("                    <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${Usuario.getPass()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</td>\r\n");
      out.write("                    <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${Usuario.getRol()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</td>\r\n");
      out.write("\r\n");
      out.write("                    <td><center><a class=\"btn btn-warning\" href=\"ControladorUsuario?menu=Usuario&accion=carga&id=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${Usuario.getId()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">Actualizar</a></center></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("            </table>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>    \r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("    <div class=\"col-sm-3 sidebar-col\">\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"col-sm-9 main-col\">\r\n");
      out.write("        <form action=\"ControladorUsuario?menu=Usuario\" method=\"POST\"> \r\n");
      out.write("            <div class=\"form-group d-flex\">\r\n");
      out.write("\r\n");
      out.write("                <div class=\"col-sm-3\">\r\n");
      out.write("\r\n");
      out.write("                    <label>Nombre</label>\r\n");
      out.write("                    <input type=\"text\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${Usuario.getNombre()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" name=\"nombres\" class=\"form-control placeholder bg-dark text-white\">\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"col-sm-3\">\r\n");
      out.write("                    <label>Celular</label>\r\n");
      out.write("                    <input type=\"text\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${Usuario.getCelular()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" name=\"celular\" class=\"form-control placeholder bg-dark text-white\">\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"col-sm-3\">\r\n");
      out.write("                    <label>Correo</label>\r\n");
      out.write("                    <input type=\"text\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${Usuario.getEmail()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" name=\"correo\" class=\"form-control placeholder bg-dark text-white\">\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"col-sm-3\">\r\n");
      out.write("                    <label>Password</label>\r\n");
      out.write("                    <input type=\"text\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${Usuario.getPass()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" name=\"password\" class=\"form-control placeholder bg-dark text-white\">\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("            <button type=\"submit\" name=\"accion\" value=\"modificar\"  class=\"btn btn-dark\">\r\n");
      out.write("                <i class=\"fas fa-edit\"></i> Modificar\r\n");
      out.write("            </button>\r\n");
      out.write("        </form>\r\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js\" integrity=\"sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("\r\n");
      out.write("        </body>\r\n");
      out.write("        </html>\r\n");
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
