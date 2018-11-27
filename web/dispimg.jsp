<%-- 
    Document   : postadd
    Created on : Nov 19, 2018, 10:46:32 AM
    Author     : ABHISHEK KAREER
--%>

<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <script>
function funn() {
    window.open("test.jsp");
}
</script>
    </head>
    <body>
        <%
            
           
            response.setContentType("image/jpg");
             try
           {   
            String catagory=(String)session.getAttribute("category1");
            String brand=(String)session.getAttribute("brand1");
            String email=(String)session.getAttribute("email1");
            String url="jdbc:mysql://localhost:3306/userdetail";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con =DriverManager.getConnection(url,"root","");
          
            Blob image = null;

            byte[ ] imgData = null ;
            Statement stmt = null;
ResultSet rs = null;


stmt = con.createStatement();
rs = stmt.executeQuery("select photo from storepost where category ='"+catagory+"' and brand='"+brand+"' ");
if (rs.next()) {
image = rs.getBlob(1);
imgData = image.getBytes(1,(int)image.length());
//request.getRequestDispatcher("indexlogin.html").include(request, response);
} 
else {
out.println("Display Blob Example");
out.println("image not found for given id");

        }
OutputStream o = response.getOutputStream();
o.write(imgData);
o.flush();
o.close();

//session.invalidate();
           }
           
        
        catch(Exception e)
        {
            out.println("got an exception");
            out.println(e.getMessage());
        }
        %>
       
    </body>
</html>
