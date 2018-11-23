package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.sql.*;

public final class dispimg_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title></title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            
           
            response.setContentType("image/jpg");
             try
           {   
            String url="jdbc:mysql://localhost:3306/userdetail";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con =DriverManager.getConnection(url,"root","");
          
            Blob image = null;

byte[ ] imgData = null ;
Statement stmt = null;
ResultSet rs = null;


stmt = con.createStatement();
rs = stmt.executeQuery("select photo from imptable where name ='abhishek'");
if (rs.next()) {
image = rs.getBlob(1);
imgData = image.getBytes(1,(int)image.length());

} 
else {
out.println("Display Blob Example");
out.println("image not found for given id>");

        }
OutputStream o = response.getOutputStream();
o.write(imgData);
o.flush();
o.close();
           }
           
        
        catch(Exception e)
        {
            out.println("got an exception");
            out.println(e.getMessage());
        }
        
      out.write("\n");
      out.write("       \n");
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
