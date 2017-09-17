<%-- 
    Document   : DeleteContactus
    Created on : Sep 8, 2017, 4:52:17 PM
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
        <jsp:useBean id="ContactDao" class="ssucb.dao.ContactUsDao"></jsp:useBean>
        <%
        try{
            int cid=Integer.parseInt(request.getParameter("cid"));
boolean b=ContactDao.DeleteCOntactus(cid);
if(b){
%>
        
<script>
    alert("Contact us Deleted Successfully..");
    window.location.href="ContactUSView.jsp";
    
</script>
        
        <%
}

        }catch(Exception e){
        System.out.println(""+e);
        }
        
        
        
        
        %>
    </body>
</html>
