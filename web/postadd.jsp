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
            
            String catagory=request.getParameter("category");
            String brand=request.getParameter("brand");
            String modelno=request.getParameter("modelno");
            String email=request.getParameter("email");
            String mobilenumber=request.getParameter("mobilenumber");
            String year1=request.getParameter("year");
            String price1=request.getParameter("price");
            String city=request.getParameter("city");
            String photo=request.getParameter("photo");
            int year2=Integer.parseInt(year1);
            int price2=Integer.parseInt(price1);
             try
           {   
            String url="jdbc:mysql://localhost:3306/userdetail";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con =DriverManager.getConnection(url,"root","");
           PreparedStatement ps=con.prepareStatement("insert into storepost values(?,?,?,?,?,?,?,?,?)"); 
           ps.setString(1,catagory);
           ps.setString(2,brand);
           ps.setString(3,modelno);
           ps.setString(4,email);
           ps.setString(5,mobilenumber);
           ps.setInt(6,year2);
           ps.setInt(7,price2);
           ps.setString(8,city);
           FileInputStream fin=new FileInputStream(photo);  
            ps.setBinaryStream(9,fin,fin.available());  
            int q=ps.executeUpdate(); 
            if(q>0)
            {
                RequestDispatcher rd=request.getRequestDispatcher("TEST.jsp");
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
