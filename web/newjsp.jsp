

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.lang.*"%>
<%@page import="java.sql.*"%>
        
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
        <%
            String Name=request.getParameter("name");
            String Age=request.getParameter("age");
            String Proff=request.getParameter("proff");
            String Salary=request.getParameter("sal");
            
             session.setAttribute("Name", Name);
            session.setAttribute("Age", Age);
             session.setAttribute("Proff", Proff);
            session.setAttribute("Salary", Salary);
            %>
    
    </body>
</html>
