<%-- 
    Document   : UpdateDepositInterestType
    Created on : Aug 16, 2017, 6:01:03 PM
    Author     : Naresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    </head>
    <body>
        <jsp:useBean id="dt" class="ssucb.pojo.DepositInterestType"></jsp:useBean>
        <jsp:setProperty property="*" name="dt"></jsp:setProperty>
        <jsp:useBean id="Dtdao" class="ssucb.dao.DepositInterestDao"></jsp:useBean>
        <%
        
        try{
        
        boolean b= Dtdao.UpdateDepositInterestType(dt);
        if(b){
        %>
        <script>
            
            alert("Updated Success..");
            window.location.href="DepositInterestTypeDetails.jsp";
        </script>
        
        
        
        <%
        
        
        
        }
        
        
        
        }catch(Exception e){
        
        System.out.println(""+e);
        }
        
        
        %>
    </body>
</html>
