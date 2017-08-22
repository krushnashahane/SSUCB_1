<%-- 
    Document   : DeletLoanInterest
    Created on : Aug 21, 2017, 3:37:26 PM
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
       
        <jsp:useBean id="LTDao" class="ssucb.dao.LoanInterestDao"></jsp:useBean>
        <%
try{
int lid=Integer.parseInt(request.getParameter("id"));
        boolean b=LTDao.DeletLoanInterestById(lid);
if(b){
%>
<script>
    alert("Deleted Successfully.");
    window.location.href="LoanInterestDetails.jsp";
    
</script>
        
        
        <%



}

}catch(Exception e){

System.out.println(""+e);
}       
       
       
       %>
    </body>
</html>
