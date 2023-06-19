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
        
    </head>
    <body>
        <%
            int userid = Integer.parseInt(request.getParameter("uid"));
            String bookid,issue,returnbook;
            bookid = request.getParameter("id");
            issue = request.getParameter("date");
            returnbook = request.getParameter("date1");
            
            try{  
//step1 load the driver class 
                Class.forName("com.mysql.jdbc.Driver");  
  
//step2 create  the connection object  
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");  
  
//step3 create the statement object  
                Statement stmt=con.createStatement();  
//  
////step4 execute query   
                String sql = "Insert into return_book values('"+bookid+"','"+userid+"','"+issue+"','"+returnbook+"')";
                    stmt.executeUpdate(sql);

                out.println("Record insert successfully"); 

                con.close();  
  
               }catch(Exception e){ 
                    System.out.println(e);
                 }
        %>
    </body>
</html>
