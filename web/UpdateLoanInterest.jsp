<%-- 
    Document   : UpdateLoanInterest
    Created on : Aug 21, 2017, 3:59:26 PM
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
    
        <jsp:useBean id="LDao" class="ssucb.dao.LoanInterestDao"></jsp:useBean>
      <%
      
      try{
      boolean b=LDao.UpdateLoanInterest(l);
      if(b){
      %>
      <script>
          alert("Updated Success");
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
