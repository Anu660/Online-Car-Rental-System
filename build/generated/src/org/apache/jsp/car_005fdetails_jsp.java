package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class car_005fdetails_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/Admin_header.jsp");
  }

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
      out.write("        <title>CAR Details</title>\n");
      out.write("       \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Car Rental</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"bootstrap.min.css\">\n");
      out.write("        <style>\n");
      out.write("            body\n");
      out.write("            {\n");
      out.write("                background-color: hsl(27deg 95% 90% / 99%) !important;\n");
      out.write("            }\n");
      out.write("             h3\n");
      out.write("           {\n");
      out.write("               text-align: center;\n");
      out.write("           }\n");
      out.write("            .container\n");
      out.write("           {\n");
      out.write("               background-color: white;\n");
      out.write("               margin-top: 30px;\n");
      out.write("               padding: 30px;\n");
      out.write("               margin-bottom: 20px;\n");
      out.write("           }\n");
      out.write("           .thead-dark\n");
      out.write("           {\n");
      out.write("           background-color: black;color:white\n");
      out.write("           }\n");
      out.write("           \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <script src=\"validation.js\"></script>\n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-dark bg-primary\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("   <a class=\"navbar-brand\" href=\"\"><img src=\"https://img.icons8.com/external-itim2101-lineal-color-itim2101/50/000000/external-car-automotive-itim2101-lineal-color-itim2101-1.png\"/> Car Rental</a>\n");
      out.write("    <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarColor01\" aria-controls=\"navbarColor01\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("      <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("    </button>\n");
      out.write("    \n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"navbarColor01\">\n");
      out.write("      <ul class=\"navbar-nav me-auto\">\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link active\" href=\"#\">Home\n");
      out.write("            <span class=\"visually-hidden\">(current)</span>\n");
      out.write("          </a>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link\" href=\"add_compiler.jsp\">Complier</a>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link\" href=\"add_languages.jsp\">Language</a>\n");
      out.write("        </li>\n");
      out.write("        \n");
      out.write("        <li class=\"nav-item dropdown\">\n");
      out.write("          <a class=\"nav-link dropdown-toggle\" data-bs-toggle=\"dropdown\" href=\"#\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">List</a>\n");
      out.write("          <div class=\"dropdown-menu\">\n");
      out.write("              <a class=\"dropdown-item\" href=\"qustions_list.jsp\">Question list</a>\n");
      out.write("              <a class=\"dropdown-item\" href=\"answer_ list.jsp\">Answer list</a>\n");
      out.write("              <a class=\"dropdown-item\" href=\"registerd_userlist.jsp\">User list</a>\n");
      out.write("            <div class=\"dropdown-divider\"></div>\n");
      out.write("            <a class=\"dropdown-item\" href=\"feedback_list.jsp\">Feedback list</a>\n");
      out.write("          </div>\n");
      out.write("        </li>\n");
      out.write("      </ul>\n");
      out.write("        <form class=\"d-flex\" action=\"\" method=\"post\">\n");
      out.write("\n");
      out.write("            <button class=\"btn btn-danger my-2 my-sm-0\" type=\"submit\" name=\"btn\">Logout</button>\n");
      out.write("      </form>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.6.0.min.js\" ></script>\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js\"  crossorigin=\"anonymous\"></script>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        <form action=\"\" method=\"post\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-sm-3\"></div>\n");
      out.write("             <div class=\"col-sm-6\">\n");
      out.write("                 <div class=\"container-fluid\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <h3>Car Details</h3>\n");
      out.write("            <br>\n");
      out.write("        <div class=\"row\">\n");
      out.write("        <div class=\"col-sm-2\"></div>\n");
      out.write("        <div class=\"col-sm-8\">\n");
      out.write("            <label>Car Name</label>\n");
      out.write("            <input type=\"text\" class=\"form-control\" name=\"user\" placeholder=\"Username\" required=\"\">\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-sm-2\"></div>\n");
      out.write("        </div>\n");
      out.write("            <br>\n");
      out.write("        <div class=\"row\">\n");
      out.write("        <div class=\"col-sm-2\"></div>\n");
      out.write("        <div class=\"col-sm-8\">\n");
      out.write("            <label>Model</label>\n");
      out.write("            <input type=\"password\" class=\"form-control\" name=\"oldpassword\" placeholder=\"Password\" required=\"\">\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-sm-2\"></div>\n");
      out.write("        </div>\n");
      out.write("            <br>\n");
      out.write("        <div class=\"row\">\n");
      out.write("        <div class=\"col-sm-2\"></div>\n");
      out.write("        <div class=\"col-sm-8\">\n");
      out.write("            <label>Fuel</label>\n");
      out.write("            <input type=\"password\" class=\"form-control\" name=\"newpassword\" placeholder=\"Password\" required=\"\">\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-sm-2\"></div>\n");
      out.write("        </div>\n");
      out.write("            <br>\n");
      out.write("        \n");
      out.write("            <div class=\"row\">\n");
      out.write("        <div class=\"col-sm-2\"></div>\n");
      out.write("        <div class=\"col-sm-8\">\n");
      out.write("            <label>Mileage</label>\n");
      out.write("            <input type=\"password\" class=\"form-control\" name=\"newpassword\" placeholder=\"Password\" required=\"\">\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-sm-2\"></div>\n");
      out.write("        </div>\n");
      out.write("            <br>\n");
      out.write("        <div class=\"row\">\n");
      out.write("        <div class=\"col-sm-2\"></div>\n");
      out.write("        <div class=\"col-sm-8\">\n");
      out.write("            \n");
      out.write("            <input type=\"submit\" class=\"btn btn-info btn-block col-12\" name=\"btn\" value=\"Login\">\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-sm-2\"></div>\n");
      out.write("        </div>\n");
      out.write("                \n");
      out.write("        </div>\n");
      out.write("                 </div>\n");
      out.write("            <div class=\"col-sm-3\"></div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        </form>\n");
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
