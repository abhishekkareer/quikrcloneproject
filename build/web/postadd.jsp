<%-- 
    Document   : postadd
    Created on : Nov 19, 2018, 10:46:32 AM
    Author     : ABHISHEK KAREER
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.io.FileInputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            String name=request.getParameter("name");
            String pass=request.getParameter("photo");
            String Price=request.getParameter("price");
            String Cat=request.getParameter("cat");
            int a=Integer.parseInt(Price);
            out.println(pass +" "+Cat);
             try
           {   
            String url="jdbc:mysql://localhost:3306/userdetail";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con =DriverManager.getConnection(url,"root","");
           PreparedStatement ps=con.prepareStatement("insert into imptable values(?,?)"); 
           ps.setString(1,name); 
           FileInputStream fin=new FileInputStream(pass);  
            ps.setBinaryStream(2,fin,fin.available());  
            int q=ps.executeUpdate(); 
            if(q>0)
            {
                RequestDispatcher rd=request.getRequestDispatcher("dispimg.jsp");
                
                rd.forward(request,response);
                
            }
            else
            {
               out.println("not insert");
            }
            ps.close();
        }
        
        catch(Exception e)
        {
            out.println("got an exception");
            out.println(e.getMessage());
        }
        %>
    </body>
</html>
