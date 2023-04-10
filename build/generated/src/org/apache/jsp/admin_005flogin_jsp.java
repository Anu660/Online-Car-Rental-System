package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_005flogin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/mainpage.jsp");
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
      out.write("        <title>Admin Login</title>\n");
      out.write("         <link rel=\"icon\" href=\"https://img.icons8.com/external-itim2101-lineal-color-itim2101/50/000000/external-car-automotive-itim2101-lineal-color-itim2101-1.png\">\n");
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
      out.write("         <link rel=\"icon\" href=\"https://img.icons8.com/external-itim2101-lineal-color-itim2101/50/000000/external-car-automotive-itim2101-lineal-color-itim2101-1.png\">\n");
      out.write("        <style>\n");
      out.write("            body\n");
      out.write("            {\n");
      out.write("                background-color: whitesmoke;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("           .container\n");
      out.write("           {\n");
      out.write("               background-color: white;\n");
      out.write("               margin-top: 20px;\n");
      out.write("               padding: 30px;\n");
      out.write("               margin-bottom: 20px;\n");
      out.write("           }\n");
      out.write("           \n");
      out.write("           h3\n");
      out.write("           {\n");
      out.write("               text-align: center;\n");
      out.write("           }\n");
      out.write("        \n");
      out.write("            \n");
      out.write("           \n");
      out.write("            \n");
      out.write("          \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <script src=\"validation.js\"></script>\n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-dark bg-primary\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("      <a class=\"navbar-brand\" href=\"index.html\"><img src=\"https://img.icons8.com/external-itim2101-lineal-color-itim2101/50/000000/external-car-automotive-itim2101-lineal-color-itim2101-1.png\"/> Vehicle Rental</a>\n");
      out.write("    <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarColor01\" aria-controls=\"navbarColor01\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("      <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("    </button>\n");
      out.write("    \n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"navbarColor01\">\n");
      out.write("      <ul class=\"navbar-nav me-auto\">\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link active\" href=\"index.html\">Home\n");
      out.write("            <span class=\"visually-hidden\">(current)</span>\n");
      out.write("          </a>\n");
      out.write("        </li>\n");
      out.write("        \n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link\" href=\"about.jsp\">About</a>\n");
      out.write("        </li>\n");
      out.write("        \n");
      out.write("      </ul>\n");
      out.write("      <form class=\"d-flex\">\n");
      out.write("          <a href=\"admin_login.jsp\" class=\"btn btn-info my-2 my-sm-0\">Login</a>\n");
      out.write("          <a href=\"adminregister.jsp\" class=\"btn btn-warning my-2 my-sm-0\">Register</a>\n");
      out.write("      </form>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("       \n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.6.0.min.js\" ></script>\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js\"  crossorigin=\"anonymous\"></script>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-sm-3\"></div>\n");
      out.write("             <div class=\"col-sm-6\">\n");
      out.write("                 <div class=\"container-fluid\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <h3>Admin Login</h3>\n");
      out.write("            <br>\n");
      out.write("        <div class=\"row\">\n");
      out.write("        <div class=\"col-sm-2\"></div>\n");
      out.write("        <div class=\"col-sm-8\">\n");
      out.write("            <label>Username</label>\n");
      out.write("            <input type=\"text\" class=\"form-control\" name=\"user\" id=\"email\" placeholder=\"Username\" required=\"\">\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-sm-2\"></div>\n");
      out.write("        </div>\n");
      out.write("            <br>\n");
      out.write("        <div class=\"row\">\n");
      out.write("        <div class=\"col-sm-2\"></div>\n");
      out.write("        <div class=\"col-sm-8\">\n");
      out.write("            <label>Password</label>\n");
      out.write("            <input type=\"password\" class=\"form-control\" name=\"password\" id=\"password\" placeholder=\"Password\" required=\"\">\n");
      out.write("            <div class=\"row\"><div class=\"col-sm-7\"></div><div class=\"col-sm-5\"><a href=\"forgot_password.jsp\" style=\"color:blue\">Forgot password</a></div></div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-sm-2\"></div>\n");
      out.write("        </div>\n");
      out.write("            <br>\n");
      out.write("        \n");
      out.write("        <div class=\"row\">\n");
      out.write("        <div class=\"col-sm-2\"></div>\n");
      out.write("        <div class=\"col-sm-8\">\n");
      out.write("            \n");
      out.write("       \n");
      out.write("              <input type=\"submit\" class=\"btn btn-info btn-block col-12\" name=\"btn\" value=\"Login\" onclick=\"mylogin()\">\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-sm-2\"></div>\n");
      out.write("        </div>\n");
      out.write("                <br>\n");
      out.write("        <div class=\"row\">\n");
      out.write("        <div class=\"col-sm-2\"></div>\n");
      out.write("        <div class=\"col-sm-8\">\n");
      out.write("            \n");
      out.write("            <a href=\"adminregister.jsp\" class=\"btn btn-danger btn-block col-12\">Create a new account</a>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-sm-2\"></div>\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("                 </div>\n");
      out.write("            <div class=\"col-sm-3\"></div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("         <script src=\"https://www.gstatic.com/firebasejs/8.1.1/firebase-app.js\"></script>\t \n");
      out.write("         <script src=\"https://www.gstatic.com/firebasejs/8.1.1/firebase-database.js\"></script>\n");
      out.write("         <script src=\"https://www.gstatic.com/firebasejs/8.1.1/firebase-auth.js\"></script>\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("  // Your web app's Firebase configuration\n");
      out.write("  var firebaseConfig = {\n");
      out.write("     apiKey: \"AIzaSyAb0EyYo_OE3RPgwQnSj0JQ5PJRzM0XNdY\",\n");
      out.write("    authDomain: \"carrental-74e95.firebaseapp.com\",\n");
      out.write("    databaseURL: \"https://carrental-74e95-default-rtdb.firebaseio.com\",\n");
      out.write("    projectId: \"carrental-74e95\",\n");
      out.write("    storageBucket: \"carrental-74e95.appspot.com\",\n");
      out.write("    messagingSenderId: \"1061412243459\",\n");
      out.write("    appId: \"1:1061412243459:web:1bf85252a8ead63222a636\"\n");
      out.write("  };\n");
      out.write("  // Initialize Firebase\n");
      out.write("  firebase.initializeApp(firebaseConfig);\n");
      out.write("  \n");
      out.write("  const auth=firebase.auth();\n");
      out.write("\n");
      out.write(" \n");
      out.write("  \n");
      out.write("        function mylogin()\n");
      out.write("        {\n");
      out.write("            var email=document.getElementById(\"email\").value;\n");
      out.write("            var password=document.getElementById(\"password\").value;\n");
      out.write("\n");
      out.write("            const loginData=auth.signInWithEmailAndPassword(email,password);\n");
      out.write("            loginData.catch(e => alert(e.message));\n");
      out.write("            if(loginData==true)\n");
      out.write("                {\n");
      out.write("                   alert(\"Sign in success\");\n");
      out.write("                }\n");
      out.write("                else\n");
      out.write("                {\n");
      out.write("                   //alert(\"error\");\n");
      out.write("                }\n");
      out.write("\n");
      out.write("\n");
      out.write("        }\n");
      out.write("  \n");
      out.write("        function mylogout()\n");
      out.write("        {\n");
      out.write("         auth.signOut();\n");
      out.write("         alert(\"Sign out user\");\n");
      out.write("        } \n");
      out.write("  \n");
      out.write("  \n");
      out.write("         auth.onAuthStateChanged(function(user){\n");
      out.write("         if(user)\n");
      out.write("         {\n");
      out.write("         var email=user.email;\n");
      out.write("         alert(\"User is active \" +email);\n");
      out.write("          window.location.href=\"add_map.jsp\";\n");
      out.write("         }\n");
      out.write("          else\n");
      out.write("         {\n");
      out.write("             alert(\"User not active\");\n");
      out.write("         }\n");
      out.write("  \n");
      out.write("  });\n");
      out.write("  \t\t\t  \n");
      out.write("</script>\n");
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
