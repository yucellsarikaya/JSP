package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class read_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    <title>JSP Page</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    ");

        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/jsp?autoReconnect=true&useSSL=false";
        String user = "root";
        String pass ="1234";
        Connection con = null;
        try {
        Class.forName(driver);
        } catch (Exception e) {
        System.exit(0);
        }
        try {
        con = DriverManager.getConnection(url, user, pass);
        } catch (Exception e) {
        System.exit(0);
        }
    
      out.write("\n");
      out.write("    ");

        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select * from employees");
    
      out.write("\n");
      out.write("        <table border = \"1\" width = \"100%\">\n");
      out.write("         <tr><th colspan=\"5\">Kayıt Listesi</th></tr>\n");
      out.write("         <tr>\n");
      out.write("            <th>ID</th>\n");
      out.write("            <th>İsim</th>\n");
      out.write("            <th>Soyisim</th>\n");
      out.write("            <th>Yaş</th>\n");
      out.write("            <th>Şehir</th>\n");
      out.write("         </tr>\n");
      out.write("        ");

        while(rs.next()){
            out.print("<tr>");
            out.print("<th>" + rs.getString(1) + "</th>" + "<th>" + rs.getString(2) + "</th>" + "<th>" + rs.getString(3) + "</th>" + "<th>" + rs.getString(4) + "</th>" + "<th>" + rs.getString(5) + "</th>");
            out.print("</tr>");
        }
        
      out.write("\n");
      out.write("        </table>\n");
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
