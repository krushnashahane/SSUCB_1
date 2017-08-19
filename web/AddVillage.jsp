<%-- 
    Document   : AddVillage
    Created on : Aug 9, 2017, 5:09:12 PM
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
        <jsp:useBean id="village" class="ssucb.pojo.Village"></jsp:useBean>
        <jsp:setProperty property="*" name="village"></jsp:setProperty>
        <jsp:useBean id="VillageDao" class="ssucb.dao.VillageDao"></jsp:useBean>
    <%
    
    
    try{
    
    boolean b=VillageDao.AddVillgae(village);
    if(b){
    %>
    <script>
        alert("village Added");
        window.location.href="Village.jsp";
        
        
    </script>
        
        
        <%
    
    
    
    }
    
    
    
    }catch(Exception e){
    
    
    System.out.println(e);}
    
    
    %>
    </body>
</html>
