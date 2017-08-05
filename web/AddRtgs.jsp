<%-- 
    Document   : AddRtgs
    Created on : Jul 28, 2017, 5:28:44 PM
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
        <jsp:useBean id="bf"class="ssucb.pojo.Beneficiary"></jsp:useBean>
        <jsp:setProperty property="*" name="bf"></jsp:setProperty>
        <jsp:useBean id="beneficiarydao" class="ssucb.dao.BeneficiaryDao"></jsp:useBean>
    
    <%
    
    
    try{
   boolean b=beneficiarydao.AddBeneficiary(bf);
   if(b){
   %>
   <script>
       alert("Beneficiary Added Succes");
       window.location.href="ApplyRtgsneft.jsp";
       
   </script>
        
        <%
   
   
   
   
   }
    
    
    }catch(Exception e){
    System.out.println(e);
    }
    
    
    
    
    
    
    %>
    
    
    
    </body>
</html>
