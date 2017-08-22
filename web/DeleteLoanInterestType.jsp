<%-- 
    Document   : DeleteLoanInterestType
    Created on : Aug 21, 2017, 1:38:44 PM
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
        <jsp:useBean id="LITDao" class="ssucb.dao.LoanInterestDao"></jsp:useBean>
  
    <%
    
    int id=Integer.parseInt(request.getParameter("id"));
    boolean b=LITDao.DeleteLoanInterestTypeDetails(id);
    if(b){
    %>
    <script>
        alert("Deleted Success..");
        window.location.href="LoanInterestTypeDetails.jsp";
        
    </script>
        
        
        
        <%
    
    
    }
    
    
    
    %>
    
    </body>
</html>
