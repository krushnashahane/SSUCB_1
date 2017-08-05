<%-- 
    Document   : AddDepositInterest
    Created on : Jul 19, 2017, 3:31:02 PM
    Author     : Naresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <jsp:useBean id="d" class="ssucb.pojo.DepositInterest"></jsp:useBean>
        <jsp:setProperty property="*" name="d"></jsp:setProperty>
        <jsp:useBean id="DbDao" class="ssucb.dao.DepositInterestDao"></jsp:useBean>
        
        
        <%
        
        try{
        
       boolean b=DbDao.AddDeposit(d);
       if(b){
       %>
       <script>
           
           alert("Deposit Interest has been Added..");
           window.location.href="DepositInterestDetails.jsp";
           
       </script>
        
        
        
        <%
       
       
       
       }
        
        
        
        }catch(Exception e){
        
        System.out.println(e);
        }
        
        
        
        
        
        
        %>
        
        
        
    </body>
</html>
