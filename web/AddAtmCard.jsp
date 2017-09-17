<%-- 
    Document   : AddAtmCard
    Created on : Sep 9, 2017, 4:15:09 PM
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
        <jsp:useBean id="a" class="ssucb.pojo.Atmcard"></jsp:useBean>
        <jsp:setProperty property="*" name="a"></jsp:setProperty>
            
        <jsp:useBean id="ATM" class="ssucb.dao.AtmCardDao"></jsp:useBean>
   
    <%
    try{
    boolean b=ATM.AddATMCard(a);
    if(b){
    %>
    <script>
        alert("Added Success");
        window.location.href="index.jsp";
        
    </script>
        
        
        <%
    }
            
    
    
    
    }catch(Exception e){
    
    System.out.println(""+e);
    }
    
    %>
    </body>
</html>
