<%-- 
    Document   : AddContact
    Created on : Sep 8, 2017, 4:12:19 PM
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
        <jsp:useBean id="c" class="ssucb.pojo.ContactUs"></jsp:useBean>   
        <jsp:setProperty name="c" property="*"></jsp:setProperty>
        <jsp:useBean id="ContactUsDao" class="ssucb.dao.ContactUsDao"></jsp:useBean>
        <%
        
        
        try{
           
    
        boolean b= ContactUsDao.AddContactUs(c);
        if(b){
        
        %>
        <script>
            alert(" Contact US Saved Successfuly..");
            window.location.href="ContactUs.jsp";
        </script>
        
        
        <%
        }
        
        
        }catch(Exception e){
        
       System.out.println(""+e);
        }
        
        
        %>
        
        
        
    </body>
</html>
