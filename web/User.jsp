<%-- 
    Document   : User
    Created on : 29 Dec, 2022, 10:57:15 AM
    Author     : Saksham
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="Design/book.css" rel="stylesheet" type="text/css"/>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/jquery.min.js" type="text/javascript"></script>
    </head>
    <body>
        <h1>User List</h1>
        <%
//                int isbn,edition,quantity;
//                String name,author,publication;
                
                 try{  
//step1 load the driver class 
                Class.forName("com.mysql.jdbc.Driver");  
  
//step2 create  the connection object  
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");  
  
//step3 create the statement object  
                Statement stmt=con.createStatement();  
                ResultSet rs = stmt.executeQuery("select * from user1");
                %>
<!--step4 execute query  -->
<table border="2" class="table table-hover">
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Gender</td>
        <td>Mobile</td>
        <td>E-mail</td>
        <td>Course</td>
                
    </tr>

                <%
                    while (rs.next()) {                         
                %>
                <tr>
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(4)%></td>
                    <td><%=rs.getString(5)%></td>
                    <td><%=rs.getString(6)%></td>
                    
                    
                </tr>
<!--                         out.print(rs.getInt(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getInt(4)+" "+rs.getString(5)+" "+rs.getInt(6)); -->
<%      }
               
                con.close();  
  
               }catch(Exception e){ 
                    out.println(e);
                 }
                 %>
        </table>
    </body>
</html>
