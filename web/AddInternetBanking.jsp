<%-- 
    Document   : AddInternetBanking
    Created on : Sep 8, 2017, 7:42:35 PM
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
        <jsp:useBean id="i" class="ssucb.pojo.InternetBankingpojo"></jsp:useBean>
        <jsp:setProperty name="i" property="*"></jsp:setProperty>
        <jsp:useBean id="IDao" class="ssucb.dao.InternetBanking"></jsp:useBean>
  <%
  
  
  try{
  boolean b=IDao.AddInternetBanking(i);
  if(b){
  
  %>
  <script>
      alert("You Have Successfully Applied For Internet Banking ThankYou...");
      window.location.href="index.jsp";
      
  </script>
        
        
        <%
  
  }
  
  
  }catch(Exception e){
  
  System.out.println(""+e);
  }
  
  
  %>
    </body>
</html>
