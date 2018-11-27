

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.lang.*"%>
<%@page import="java.sql.*"%>
<!--        
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>user and pass</title>
       <style>
        table{
            border: 2px solid black;
            border-collapse: collapse;
        }
        </style>
    </head>
    <body>
        
                <table align="center">
            <form method="post" action="userandpass.jsp">
                <tr>
                    <th>enter the username</th>
                    <td><input type="text" name="username">
                        </td>
                </tr>
                <tr>
                    <th>set the password</th>
                    <td><input type="password" name="password"></td>
                </tr>   
    <tr>
                    <th colspan="2">
                        <input type="submit" value="submit">
                    </th>
                </tr>
            </form>
        </table>
        
            String Name=request.getParameter("name");
            String Age=request.getParameter("age");
            String Proff=request.getParameter("proff");
            String Salary=request.getParameter("sal");
            
             session.setAttribute("Name", Name);
            session.setAttribute("Age", Age);
             session.setAttribute("Proff", Proff);
            session.setAttribute("Salary", Salary);
            
    
    </body>
</html>
-->
<html>


<head>

	

	<!-- Style --> <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />

	<!-- Web-Fonts -->
		<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900" 	type="text/css" media="all">
		<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Raleway:400,500,600,700,800" 		type="text/css" media="all">
	<!-- //Web-Fonts -->

</head>

<body>
<%
        String FName=request.getParameter("FirstName");
            String LName=request.getParameter("LastName");
            String pincode=request.getParameter("area");
            String address=request.getParameter("address");
            %>
	<div class="container">
		
		<h2>MORE INFO</h2>

		<div class="contact">
			<form action="userandpass.jsp" >
                            <%out.println("<input type='text' value='"+FName+"'>");%>
				<%out.println("<input type='text' value='"+LName+"'>");%>
				<input type="text" Name="Email" placeholder="EMAIL" required="">
                                <input type="text" Name="mobileno" placeholder="CONTACT NO" required="">
				<input type="password" Name="Password" placeholder="PASSWORD" required="">
                                <input type="password" Name="PhoneNumber" placeholder="RECOVERY NO " required="">
				<div class="send-button">
					<input type="submit" value="NEXT">
				</div>
			</form>
		</div>

	</div>

    
    <%
             session.setAttribute("FName", FName);
            session.setAttribute("LName", LName);
             session.setAttribute("Pincode", pincode);
            session.setAttribute("addres", address);
        %>
    
    
  

</body>
<!-- //Body -->

</html>