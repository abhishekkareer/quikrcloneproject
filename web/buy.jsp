<%-- 
    Document   : buy
    Created on : Nov 27, 2018, 11:57:29 AM
    Author     : ABHISHEK KAREER
--%>
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
            String catagory1=(String)session.getAttribute("category1");
            String brand1=(String)session.getAttribute("brand1");
            int yop1=(Integer)session.getAttribute("yop1");
            String url="jdbc:mysql://localhost:3306/userdetail";
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn =DriverManager.getConnection(url,"root","");
            String query="select * from storepost";
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery(query);
            while(rs.next())
            {
      String category2=rs.getString("category");
      String brand2=rs.getString("brand");
      String model=rs.getString("model");
      String email=rs.getString("email");
      String phoneno=rs.getString("phoneno");
      String area=rs.getString("area");
      int yop2=rs.getInt("yop");
     
      int sellingprice=rs.getInt("sellingprice");
      if(catagory1.equals(category2))
      {
          
                      response.sendRedirect("delete.jsp");
              
          
      }
            }
        %>
    </body>
</html>
