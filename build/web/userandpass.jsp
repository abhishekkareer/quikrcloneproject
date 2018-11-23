

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.lang.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>insert page in test3</title>
    </head>
    <body>
        <%
            String email=request.getParameter("Email");
            String Phoneno=request.getParameter("PhoneNumber");
            String pass=request.getParameter("Password");
            String fname=(String)session.getAttribute("FName");
            String lname=(String)session.getAttribute("LName");
            String pin=(String)session.getAttribute("Pincode");
            String address=(String)session.getAttribute("addres");
            StringBuffer s=new StringBuffer(pass);
            int len=s.length();
            s.insert(len,"!");
            //String newpass = s.substring(0, s.length()-1);
            long a=Integer.parseInt(Phoneno);
            a=a+101;
            //out.println(a);
            int b=Integer.parseInt(pin);
             try
           {   
            String url="jdbc:mysql://localhost:3306/userdetail";
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn =DriverManager.getConnection(url,"root","");
            String query="insert into test1 values('"+fname+"',"+a+",'"+address+"',"+b+",'"+email+"','"+s+"')";
            //out.println(query);
            Statement st=conn.createStatement();
            int q=st.executeUpdate(query);
            if(q>0)
            {
                RequestDispatcher rd=request.getRequestDispatcher("indexlogin.html");
                out.println("<script type=\"text/javascript\">");
            out.println("alert('successfully registered');");
            out.println("</script>");
                rd.forward(request,response);
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
