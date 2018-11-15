
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CHECK DATABASE</title>
        <style>
body {
    margin: 0;
}
div
{
    padding:1px 16px;
    height:1000px;
}
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 25%;
    background-color: #f1f1f1;
    position: fixed;
    height: 100%;
    overflow: auto;
}
ol {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

.divv {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    float: left;
}

li a {
    display: block;
    color: #000;
    padding: 8px 16px;
    text-decoration: none;
}

li a.active {
    background-color: #4CAF50;
    color: white;
}

li a:hover:not(.active) {
    background-color: #555;
    color: white;
}
</style>
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
      if(pass.equals(passs))
      {
          if(username.equals(user))
          {
         out.println("login successfull");
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

                out.println("</body></html>");
          }
          
      }
            }
        %>
    </body>
</html>
