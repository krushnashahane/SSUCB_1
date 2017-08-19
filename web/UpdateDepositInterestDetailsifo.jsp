<%-- 
    Document   : UpdateDepositInterestDetailsifo
    Created on : Aug 19, 2017, 2:31:22 PM
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
        <jsp:useBean id="d" class="ssucb.pojo.DepositInterest"></jsp:useBean>
    
        <jsp:setProperty property="*" name="d"></jsp:setProperty>
   
        <jsp:useBean id="DepositInterestDao" class="ssucb.dao.DepositInterestDao"></jsp:useBean>
  
    
    <%
    try{
    boolean b=DepositInterestDao.UpdateDepositInterest(d);
    if(b){
    %>
    <script>
        
        alert("Updated Successfully..");
        window.location.href="DepositInterestDetails.jsp";
    </script>
        
        
        <%
    
    }
    
    }catch(Exception e)
    {System.out.println(""+e);}    
    
    
    %>
    
    
    
    
    </body>
</html>
