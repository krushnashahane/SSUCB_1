<%-- 
    Document   : UpdateLoanInterestTypeDetails
    Created on : Aug 21, 2017, 2:01:25 PM
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
        <jsp:useBean id="lt" class="ssucb.pojo.LoanInterestType"></jsp:useBean>
        <jsp:setProperty property="*" name="lt"></jsp:setProperty>
        <jsp:useBean id="LITDao" class="ssucb.dao.LoanInterestDao"></jsp:useBean>
    <%
    try{
        System.out.println("Int try block   ");
    boolean b=LITDao.UpdateLoanInterestType(lt);
    if(b){
        System.out.println(""+lt.getLitid()+""+lt.getType());
    %>
    <script>
        
        alert("Updated Successfull");
        window.location.href="LoanInterestTypeDetails.jsp";
    </script>
        
        
        
        
        <%
    
    
    
    }
    
    
    
    
    }catch(Exception e){
    
    System.out.println(""+e);
    }
    
    
    
    
    
    %>
    </body>
</html>
