

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.lang.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>insert page in test1</title>
    </head>
    <body>
        <%
            String uname=request.getParameter("username");
            String pass=request.getParameter("password");
            String name=(String)session.getAttribute("Name");
            String aa=(String)session.getAttribute("Age");
            String Proff=(String)session.getAttribute("Proff");
            String  bb=(String)session.getAttribute("Salary");
            int a=Integer.parseInt(aa);
            int b=Integer.parseInt(bb);
             try
           {   
            String url="jdbc:mysql://localhost:3306/userdetail";
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn =DriverManager.getConnection(url,"root","");
            String query="insert into test1 values('"+name+"',"+a+",'"+Proff+"',"+b+",'"+uname+"','"+pass+"')";
            out.println(query);
            Statement st=conn.createStatement();
            int q=st.executeUpdate(query);
            if(q>0)
            {
                out.println("row insert");
            }
            else
            {
               out.println("not insert");
            }
            st.close();
            
        }
        
        catch(Exception e)
        {
            out.println("got an exception");
            out.println(e.getMessage());
        }
        %>
    </body>
</html>
