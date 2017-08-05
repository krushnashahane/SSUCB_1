<%-- 
    Document   : UpdateTenderDetails
    Created on : Jul 7, 2017, 2:11:38 PM
    Author     : KRISHNA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <%
     try{
String button=request.getParameter("s");
if(button!=null){
%>
     
<jsp:useBean id="t" class="ssucb.pojo.TenderMasterPojo"></jsp:useBean>
<jsp:setProperty name="t" property="*"></jsp:setProperty>
<jsp:useBean id="tenderdao" class="ssucb.dao.TenderMasterDao"></jsp:useBean>
        
        <%
boolean b=tenderdao.UpdateTenderDetails(t);
if(b){
%>
<script>
    
    alert("Tender Updated Successfully...");
    window.location.href="tendormaster.jsp";
</script>
        
        
        
        <%


}




}
     }catch(Exception e){
     
     System.out.println("Error is"+e);
     
     }


%>
    </body>
</html>
