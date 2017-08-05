<%-- 
    Document   : UpdateAdminLoginPassword
    Created on : Jul 20, 2017, 1:12:42 PM
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
        <jsp:setProperty property="*" name="a"></jsp:setProperty>
        <jsp:useBean id="AdminLoginDao" class="ssucb.dao.AdminLoginDao"></jsp:useBean>
    
    <%
    try{
    
    boolean b=AdminLoginDao.UpdatePassword(a);
    if(b){
    %>
    <script>
        alert("Password has been Updated Successfully..");
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
