<%-- 
    Document   : recoverpassword
    Created on : Nov 21, 2018, 9:19:06 PM
    Author     : ABHISHEK KAREER
--%>
<%@page import="java.lang.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%
            String user=request.getParameter("usernamee");
            String rno=request.getParameter("recoverno");
            String pass=request.getParameter("Passwordd");
            int b=Integer.parseInt(rno);
            int a=b+101;
            StringBuffer s=new StringBuffer(pass);
            int len=s.length();
            s.insert(len,"!");
             try
           {   
            String url="jdbc:mysql://localhost:3306/userdetail";
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn =DriverManager.getConnection(url,"root","");
            String query="UPDATE test1 SET password ='"+s+"' WHERE username='"+user+"' AND age='"+a+"'";
            Statement st=conn.createStatement();
            int q=st.executeUpdate(query);
            if(q>0)
            {
                
                RequestDispatcher rd=request.getRequestDispatcher("indexlogin.html");
                out.println("<script type=\"text/javascript\">");
            out.println("alert('password reset!!');");
            out.println("</script>");
                rd.forward(request,response);
            }
            else
            {
                RequestDispatcher rd=request.getRequestDispatcher("indexlogin.html");
                out.println("<script type=\"text/javascript\">");
            out.println("alert('username not found!!');");
            out.println("</script>");
                rd.forward(request,response);
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
