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
            try
            {
            String catagory1=request.getParameter("catagory1");
            String brand1=request.getParameter("brand1");
            //String email1=request.getParameter("email1");
            //out.println(email1+"  "+brand1+"  "+catagory1);
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
          if(brand1.equals(brand2))
          {
            String url2="jdbc:mysql://localhost:3306/userdetail";
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn2 =DriverManager.getConnection(url,"root","");
            String query2="insert into test values('"+catagory1+"',"+yop2+",'"+brand2+"',"+sellingprice+")";
            Statement st2=conn.createStatement();
            int q=st2.executeUpdate(query2);
            if(q>0)
            {
                RequestDispatcher rd=request.getRequestDispatcher("delete.jsp");
                rd.forward(request,response);
            session.setAttribute("catagory3", category2);
            session.setAttribute("brand3", brand2);
            session.setAttribute("yop3", yop2);
            session.setAttribute("sellingprice3", sellingprice);
            }
          }
      }
            }
            }
            catch(Exception e)
        {
            out.println("got an exception");
            out.println(e.getMessage());
        }
        %>
    </body>
</html>
