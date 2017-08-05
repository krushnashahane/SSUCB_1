<%-- 
    Document   : DBConnect
    Created on : Jul 6, 2017, 5:22:10 PM
    Author     : KRISHNA
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
   <%!
Connection conn;
  

%>



<%

try{

Class.forName("com.mysql.jdbc.Driver");
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ssucb","root","root");
if(conn!=null){

out.println("connection has Successfull...");




System.out.println(application.getContextPath());

}


}catch(Exception e){

out.println(e);
}





%>
    </body>
</html>
