package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class if_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\" src=\"jquery-1.4.2.min.js\"></script>\n");
      out.write("\n");
      out.write("<style type=\"text/css\">\n");
      out.write("\tp{\n");
      out.write("\t\tpadding:8px;\n");
      out.write("\t\tmargin:16px;\n");
      out.write("\t\tborder:1px solid blue;\n");
      out.write("\t\twidth:250px;\n");
      out.write("\t\theight:50px;\n");
      out.write("\t\tbackground-color:#999999;\n");
      out.write("\t\tcolor:white;\n");
      out.write("\t}\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<h1>jQuery show() and hide() example</h1>\n");
      out.write("\n");
      out.write("<p>Hello, this show() and hide() example</p>\n");
      out.write("\n");
      out.write("<button id=show>show()</button>\n");
      out.write("<button id=hide>hide()</button>\n");
      out.write("<button id=reset>Reset</button>\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("$(\"#show\").click(function () {\n");
      out.write("   $(\"p\").show('fast');\n");
      out.write("});\n");
      out.write("\n");
      out.write("$(\"#hide\").click(function () {\n");
      out.write("   $(\"p\").hide(1000);\n");
      out.write("});\n");
      out.write("\n");
      out.write("$(\"#reset\").click(function(){\n");
      out.write("\tlocation.reload();\n");
      out.write("});\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
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
