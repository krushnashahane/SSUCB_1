<%-- 
    Document   : DeleteLPA
    Created on : Sep 14, 2017, 5:54:01 PM
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
    <jsp:useBean id="LoanProPosalAmount" class="ssucb.dao.LoanProposalAmountDao"></jsp:useBean>
    <%
    try{
    int lpid=Integer.parseInt(request.getParameter("lpid"));
    boolean b=LoanProPosalAmount.DeleteLoanProposalAmount(lpid);
    if(b){
    %>
    <script>
        alert("Deleted Successfully.");
        window.location.href="LoanProposalAmount.jsp";
        
    </script>
        
        
        <%
    }
    
    }catch(Exception e){
    
    System.out.println(""+e);
    }
    
    
    %>
    </body>
</html>
