package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("     <style>\n");
      out.write(".button2 {\n");
      out.write("  padding: 5px 35px;\n");
      out.write("  font-size: 18px;\n");
      out.write("  font-family:  initial;\n");
      out.write("  font-style:  italic;\n");
      out.write("  text-align: center;\n");
      out.write("  cursor: pointer;\n");
      out.write("  outline: black;\n");
      out.write("  color: #fff;\n");
      out.write("  background-color:blue;\n");
      out.write("  border: none;\n");
      out.write("  border-radius: 0px;\n");
      out.write("  box-shadow: 2 9px ;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".button2:hover {background-color:#CD9575}\n");
      out.write("\n");
      out.write(".button2:active {\n");
      out.write("  background-color: #848482;\n");
      out.write("  box-shadow: 0 5px #848482;\n");
      out.write("  transform: translateY(4px);\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("\n");
      out.write("    \n");
      out.write("</head>\n");
      out.write("<body bgcolor=\"#F2F3F4\">\n");
      out.write("<div class=\"container_12\">\n");
      out.write("    <div class=\"grid_12\">\n");
      out.write("        <h1 align=\"center\"><font size=\"18\" color=\"black\"><b>Health Prediction System</b></font></h1>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("    \n");
      out.write("       \n");
      out.write("       <sql:setDataSource var=\"demo\"\n");
      out.write("                           driver=\"com.mysql.jdbc.Driver\" \n");
      out.write("                           url=\"jdbc:mysql://localhost:3306/health\" \n");
      out.write("                           user=\"root\" password=\"\"/>\n");
      out.write("      \n");
      out.write("\n");
      out.write("          \n");
      out.write("\n");
      out.write("        \n");
      out.write("       \n");
      out.write("       \n");
      out.write("           \n");
      out.write("               \n");
      out.write("        \n");
      out.write("    <div align=\"center\"style=\" border-bottom-color: black; background-color:#24A0ED; width :100%  \"> \n");
      out.write("            <table>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <form action=\"index.html\">  \n");
      out.write("         <button class=\"button2\" onsubmit=\" validate()\" onclick =\" check(this.form) \" ><b> Home </b>\n");
      out.write("</button>  \n");
      out.write("                </form>\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <form action=\"Addoctor.html\">\n");
      out.write("                           <button class=\"button2\" onsubmit=\" validate()\" onclick =\" check(this.form) \" >\n");
      out.write("                                <b>Add Doctor</b>\n");
      out.write("</button>    \n");
      out.write("                        </form>\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <form action=\"admission.html\">\n");
      out.write("                            <button class=\"button2\" onsubmit=\" validate()\" onclick =\" check(this.form) \" >\n");
      out.write("    \n");
      out.write("                                 <b>Add Disease</b>\n");
      out.write("</button>   \n");
      out.write("                        </form>\n");
      out.write("                    </td>\n");
      out.write("                    \n");
      out.write("                        <td>\n");
      out.write("                        <form action=\"ViewPatient.jsp\">\n");
      out.write("                    <button class=\"button2\" onsubmit=\" validate()\" onclick =\" check(this.form) \" >\n");
      out.write("                                  <b>View Patient</b>\n");
      out.write("</button>   \n");
      out.write("                </form>\n");
      out.write("                        </td>\n");
      out.write("                         <td>\n");
      out.write("                        <form action=\"student.jsp\">\n");
      out.write("                    <button class=\"button2\" onsubmit=\" validate()\" onclick =\" check(this.form) \" >\n");
      out.write("                                  <b>View Doctor</b>\n");
      out.write("</button>   \n");
      out.write("                </form>\n");
      out.write("                        </td>\n");
      out.write("                         <td>\n");
      out.write("                        <form action=\"student.jsp\">\n");
      out.write("                    <button class=\"button2\" onsubmit=\" validate()\" onclick =\" check(this.form) \" >\n");
      out.write("                                  <b>View Disease</b>\n");
      out.write("</button>   \n");
      out.write("                </form>\n");
      out.write("                        </td>\n");
      out.write("                        <td>\n");
      out.write("                        <form action=\"ViewFeedback.jsp\">\n");
      out.write("                    <button class=\"button2\" onsubmit=\" validate()\" onclick =\" check(this.form) \" >\n");
      out.write("                                  <b> View Feedback </b>\n");
      out.write("</button>   \n");
      out.write("                </form>\n");
      out.write("                        </td>\n");
      out.write("                        <td>\n");
      out.write("                <form action=\"index.html\">\n");
      out.write("                    <button class=\"button2\" onsubmit=\" validate()\" onclick =\" check(this.form) \" >\n");
      out.write("                        <b>Logout</b>\n");
      out.write("</button>   \n");
      out.write("                </form>\n");
      out.write("                        </td>\n");
      out.write("                        \n");
      out.write("      \n");
      out.write("        \n");
      out.write("</body>\n");
      out.write("    \n");
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
