
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CHECK DATABASE</title>
        
<style>
div {
    width: 320px;
    padding: 10px;
    border: 5px solid gray;
    margin: 0;
}
</style>
<script>
function funn() {
    window.open("dispimg.jsp");
}
</script>
    </head>
    <body>
        <% 
            try
            {
            String url="jdbc:mysql://localhost:3306/userdetail";
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn =DriverManager.getConnection(url,"root","");
            String query="select * from storePost";
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery(query);
            String url1="jdbc:mysql://localhost:3306/userdetail";
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn1 =DriverManager.getConnection(url1,"root","");
            String query1="select * from test";
            ResultSet rs1=st.executeQuery(query1);
            while(rs.next())
            {
            String category=rs.getString("category");
            String brand=rs.getString("brand");
            String model=rs.getString("model");
            String email=rs.getString("email");
            String phoneno=rs.getString("phoneno");
            String area=rs.getString("area");
            int yop=rs.getInt("yop");
            int sellingprice=rs.getInt("sellingprice");
            while(rs1.next())
            {
                
            }
            String query2="insert into test database values('"+fname+"',"+a+",'"+address+"',"+b+",'"+email+"','"+s+"')";
            Statement st1=conn.createStatement();
            int q=st1.executeUpdate(query);
            if(q>0)
            {
           
            }
      
          }
            }
          catch(Exception e)
{
e.printStackTrace();
}
            
        %>
            
    </body>
</html>
