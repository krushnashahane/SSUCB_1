<%-- 
    Document   : AddLoanInterestType
    Created on : Jul 19, 2017, 7:50:44 PM
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
        <jsp:useBean id="LoanDao" class="ssucb.dao.LoanInterestDao"></jsp:useBean>
        
        
        <%
        
        try{
        boolean b=LoanDao.AddLoanInterestType(lt);
        if(b){
        %>
        <script>
            
            alert("Loan Type Added");
            window.location.href="LoanInterestTypeDetails.jsp";
            
        </script>
     <%
        
        
        
        }
        
        
        }catch(Exception e){
        
        System.out.println(e);
        }
        
        
        
        %>
        
        
    </body>
</html>
