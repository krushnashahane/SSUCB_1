<%-- 
    Document   : AddLPA
    Created on : Sep 14, 2017, 3:43:51 PM
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
        <jsp:setProperty property="*" name="lp"></jsp:setProperty>
        <jsp:useBean id="LoanProposalAmount" class="ssucb.dao.LoanProposalAmountDao"></jsp:useBean>
            <%
            try{
            
            boolean b=LoanProposalAmount.AddLoanProposalAmount(lp);
            if(b){
            %>
            <script>
                alert("LoanProposal Amount has been Added Successfully");
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
