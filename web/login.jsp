
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CHECK DATABASE</title>
    </head>
    <body>
        <% 
            String user=request.getParameter("username");
            String pass=request.getParameter("password");
            String url="jdbc:mysql://localhost:3306/userdetail";
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn =DriverManager.getConnection(url,"root","");
            String query="select * from test1";
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery(query);
            while(rs.next())
            {
      String username=rs.getString("username");
      String passs=rs.getString("password");
      String pro=rs.getString("address");
      int b=rs.getInt("pincode");
     
      int aa=rs.getInt("recoveryno");
      int bb=aa-101;
      StringBuffer s=new StringBuffer(passs);
      String newpass = s.substring(0, s.length()-1);
      if(username.equals(user))
      {
          if(pass.equals(newpass))
          {
         /*out.println("login successfull");
         out.println("<html>");
		out.println("<head><title></title></head>");
		out.println("<body>");
                out.println("<ul>");
		
                out.println("<li><p>");
                out.println(username);
                out.println("</p></li>");
                out.println("<li><a class='active' href='home.html'>Home</a></li>");
               
                out.println("<li><a href=''>ads</a></li>");
                out.println("<li><a href=''>buy/sell</a></li>");
                out.println("<li><a href=''>About</a></li>");
                out.println("</ul>");

                out.println("<div>");

                out.println("</div>");

                out.println("</body></html>");*/
              String s1=String.valueOf(aa);
              String s2=String.valueOf(b);
              String fname=rs.getString("fname");
              String lname=rs.getString("lname");
              session.setAttribute("unamee",fname);
              session.setAttribute("lname2",lname);
              session.setAttribute("age",s1);
              session.setAttribute("proo",pro);
              session.setAttribute("salary",s2);
              session.setAttribute("usernamee",username);
              response.sendRedirect("home.jsp");
              
          }
          
      }
            }
            /*
            out.println("<script type=\"text/javascript\">");
            out.println("alert('wrong username or password');");
            out.println("</script>");
            RequestDispatcher rd=request.getRequestDispatcher("temp.html");
            rd.include(request, response);*/
        %>
    </body>
</html>
