<%-- 
    Document   : LPAUpdate
    Created on : Sep 14, 2017, 5:38:11 PM
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
        <jsp:useBean id="lp" class="ssucb.pojo.LoanProposalAmountPojo"></jsp:useBean>
    
        <jsp:setProperty  property="*" name="lp"></jsp:setProperty>
        <jsp:useBean id="LoanProPosalAmount" class="ssucb.dao.LoanProposalAmountDao"></jsp:useBean>
<%
try{
boolean b=LoanProPosalAmount.UpdateLoanProposalAmount(l);
if(b){
%>
<script>
    
    alert("Updated Success..");
    window.loacation.href="LoanProposalAmount.jsp";
</script>
        <%
}


}catch(Exception e){
System.out.println(""+e);
}

%>


    </body>
</html>
