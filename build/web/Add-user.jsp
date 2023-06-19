<%-- 
    Document   : Issue-book
    Created on : 29 Dec, 2022, 10:56:10 AM
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
        <link href="Design/Adduser.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%
            String name,gender,mobile,email,course,id;
            id = request.getParameter("uid");
            name = request.getParameter("name");
            gender = request.getParameter("gen");
            mobile = request.getParameter("mob");
            email = request.getParameter("email");
            course = request.getParameter("course");
            
            try{  
//step1 load the driver class 
                Class.forName("com.mysql.jdbc.Driver");  
  
//step2 create  the connection object  
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");  
                
                
//step3 create the statement object  
                Statement stmt=con.createStatement();  
//  
////step4 execute query   
                String sql = "Insert into user1 values('"+id+"','"+name+"','"+gender+"','"+mobile+"','"+email+"','"+course+"')";
                    stmt.executeUpdate(sql);
                   

                out.println("Record insert successfully"); 

                con.close();  
  
               }catch(Exception e){ 
                    System.out.println(e);
                 }
            response.sendRedirect("User.jsp");
        %>
        
    </body>
</html>


