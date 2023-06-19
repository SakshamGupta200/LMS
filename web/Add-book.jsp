<%-- 
    Document   : Add-book
    Created on : 29 Dec, 2022, 10:54:10 AM
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
        <link href="Design/Addbook.css" rel="stylesheet" type="text/css"/>
    </head>    
    <body>
        <%
               int qnt;
               String isbn,edition,title,author,publication;
               
               edition = request.getParameter("edition");
               qnt = Integer.parseInt(request.getParameter("quantity"));
               
               isbn = request.getParameter("isbn");
               title = request.getParameter("title");
               author = request.getParameter("author");
               publication = request.getParameter("publication");
               
               try{  
//step1 load the driver class 
                Class.forName("com.mysql.jdbc.Driver");  
  
//step2 create  the connection object  
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");  
  
//step3 create the statement object  
                Statement stmt=con.createStatement();  
//  
////step4 execute query   
                String sql = "Insert into book values('"+isbn+"','"+title+"','"+author+"','"+edition+"','"+publication+"','"+qnt+"')";
                    stmt.executeUpdate(sql);

                out.println("Record insert successfully"); 

                con.close(); 
                
  
               }catch(Exception e){ 
                    System.out.println(e);
                 }
        %>
    </body>
</html>
