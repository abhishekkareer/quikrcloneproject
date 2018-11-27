<%-- 
    Document   : search
    Created on : Nov 27, 2018, 9:28:02 AM
    Author     : ABHISHEK KAREER
--%>


<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>search database</title>
        <style>
div {
    width: 320px;
    padding: 10px;
    border: 5px solid gray;
    margin: 0;
}
* {
  box-sizing: border-box;
}
.ad-container {
  width: 100%;
}
.ad {
  border: 1px solid black;
  width: 32.2%; /*Adjust as necessary*/
  margin: .3%;
  float: left;
  /*Add min-height or max-height as necessary*/
}

.ad-container:after {
  display: table;
  content: "";
  clear: both;
}
#customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#customers td, #customers th {
    border: 1px solid #ddd;
    padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
}
.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 16px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}
.buttonn {
    background-color: white;
    color: black;
    border: 2px solid #e7e7e7;
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
            String search=request.getParameter("search");
            String url="jdbc:mysql://localhost:3306/userdetail";
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn =DriverManager.getConnection(url,"root","");
            String query="select * from storepost";
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery(query);
            while(rs.next())
            {
                String search2=rs.getString("category");
                if(search.equals(search2))
                {
                    String brand=rs.getString("brand");
                    String model=rs.getString("model");
                    int yop=rs.getInt("yop");
                    int sellingprice=rs.getInt("sellingprice");
                    String area=rs.getString("area");
                    String email=rs.getString("email");
                    String phoneno=rs.getString("phoneno");
                    out.println("<html>");
		out.println("<head><title></title></head>");
		out.println("<body>");
                out.println("<center>");
		out.println("<div class='ad-container'>");
                out.println("<div class='ad'>");
                out.println("<table id='customer'>");
                out.println("<tr>");
                out.println("<th colspan='2'>ad content</th>");
                out.println("</tr>");
                out.println("<tr>");
                out.println("<td>");
                out.println("CATAGORY:-");
                out.println("</td>");
                out.println("<td>");
                out.println(search2);
                out.println("</td>");
                out.println("</tr>");
                out.println("<tr>");
                out.println("<td>");
                out.println("BRAND:-");
                out.println("</td>");
                out.println("<td>");
                out.println(brand);
                out.println("</td>");
                out.println("</tr>");
                out.println("<tr>");
                out.println("<td>");
                out.println("MODEL:-");
                out.println("</td>");
                out.println("<td>");
                out.println(model);
                out.println("</td>");
                out.println("</tr>");
                out.println("<tr>");
                out.println("<td>");
                out.println("EMAIL:-");
                out.println("</td>");
                out.println("<td>");
                out.println(email);
                out.println("</td>");
                out.println("</tr>");
                out.println("<tr>");
                out.println("<td>");
                out.println("CONTACT NO:-");
                out.println("</td>");
                out.println("<td>");
                out.println(phoneno);
                out.println("</td>");
                out.println("</tr>");
                out.println("<tr>");
                out.println("<td>");
                out.println("AREA:-");
                out.println("</td>");
                out.println("<td>");
                out.println(area);
                out.println("</td>");
                out.println("</tr>");
                out.println("<tr>");
                out.println("<td>");
                out.println("YOP:-");
                out.println("</td>");
                out.println("<td>");
                out.println(yop);
                out.println("</td>");
                out.println("</tr>");
                out.println("<tr>");
                out.println("<td>");
                out.println("SELLING PRICE:-");
                out.println("</td>");
                out.println("<td>");
                out.println(sellingprice);
                out.println("</td>");
                out.println("</tr>");
                out.println("<tr>");
                out.println("<td colspan='2'>");
                out.println("<button onclick='funn()' class='button buttonn'>IMAGE</button>");
                out.println("</td>");
                out.println("<td>");
                out.println("<button onclick='buy()' class='button buttonn'>BUY</button>");
                out.println("</td>");
                out.println("</tr>");
                out.println("</table>");
                out.println("</div>");
                out.println("</div>");
                out.println("</center>");
                out.println("</body></html>");
                }
              
          }
          

        %>
    </body>
</html>
