<%-- 
    Document   : UpdateAdminLoginUsername
    Created on : Jul 20, 2017, 1:26:35 PM
    Author     : Naresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="a" class="ssucb.pojo.AdminLoginPojo"></jsp:useBean>
        <jsp:setProperty name="a" property="*"></jsp:setProperty>
        <jsp:useBean id="AdminLoginDao" class="ssucb.dao.AdminLoginDao"></jsp:useBean>
   
    <%
    try{
    boolean b=AdminLoginDao.UpdateUserName(a);
    if(b){
    %>
    <script>
        alert("Username has been Updated..");
        window.location.href="adminlogin.jsp";
    </script>
        
        
        <%
    
    
    
    
    }
    
    
    
    
    
    
    
    }catch(Exception e){
    
    
    System.out.println(e);
    }
    
    
    
    %>
    
    
    
    
    
    
    
    
    </body>
</html>
