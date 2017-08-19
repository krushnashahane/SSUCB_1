<%-- 
    Document   : Addcity
    Created on : Aug 9, 2017, 5:00:02 PM
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
        <jsp:useBean id="ct" class="ssucb.pojo.CityPojo"></jsp:useBean>
        <jsp:setProperty property="*" name="ct"></jsp:setProperty>
        <jsp:useBean id="CityDao" class="ssucb.dao.CityDao"></jsp:useBean>
    
    <%
    
    
    
    try{
    
    boolean b=CityDao.AddCity(ct);
    if(b){
    %>
    <script>
        
        alert("city Added");
        window.location.href="City.jsp";
    </script>
        
        
        
        <%
    
    
    
    }
    
    
    
    }catch(Exception e){
   
    System.out.println(e);
    }
    
    
    %>
    
    
    </body>
</html>
