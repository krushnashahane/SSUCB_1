<%-- 
    Document   : AddLoanInterestDetails
    Created on : Jul 19, 2017, 8:31:19 PM
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
        <jsp:useBean id="l" class="ssucb.pojo.LoanInterest"></jsp:useBean>
        <jsp:setProperty property="*" name="l"></jsp:setProperty>
        <jsp:useBean id="LoanDao" class="ssucb.dao.LoanInterestDao"></jsp:useBean>
        <%
        try{
        
        boolean b=LoanDao.AddLoanInterest(l);
        if(b){
        %>
        <script>
            alert("Loan Interest has been Added..");
            window.location.href="LoanInterestDetails.jsp";
            
        </script>
        
        
        
        <%
        
        
        }
        
        
        
        }catch(Exception e){
        
        System.out.println(e);
        }
        
        
        
        
        
        
        %>
    </body>
</html>
