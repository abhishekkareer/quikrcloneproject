<%-- 
    Document   : delete
    Created on : Nov 28, 2018, 10:21:08 AM
    Author     : ABHISHEK KAREER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>delete jsp</title>
    </head>
    <body>
        <%
            try
            {
            String catagory1=(String)session.getAttribute("catagory3");
            String brand1=(String)session.getAttribute("brand3");
            String url="jdbc:mysql://localhost:3306/userdetail";
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn =DriverManager.getConnection(url,"root","");
            String query2="delete from storepost where category='"+catagory1+"' and brand='"+brand1+"' ";
            Statement st2=conn.createStatement();
            int q=st2.executeUpdate(query2);
            if(q>0)
            {
 RequestDispatcher rd=request.getRequestDispatcher("TEST.jsp");
                rd.forward(request,response);
            }
            else
            {
                out.println("not deleted");
            }
            }
            catch(Exception e)
{
e.printStackTrace();
}
            %>
    </body>
</html>
