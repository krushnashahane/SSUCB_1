<%-- 
    Document   : AddDepositInterestType
    Created on : Jul 19, 2017, 4:06:58 PM
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
        <jsp:useBean id="dt" class="ssucb.pojo.DepositInterestType"></jsp:useBean>
        <jsp:setProperty property="*" name="dt"></jsp:setProperty>
        <jsp:useBean id="DtDao" class="ssucb.dao.DepositInterestDao"></jsp:useBean>
            <%
            try{
            
                
                boolean b=DtDao.AddDepositInterestType(dt);
                if(b){
                %>
                <script>
                    
                    alert("Deposit type Added");
                    window.location.href="DepositInterestTypeDetails.jsp"
                </script>
        
        
        <%
                
                
                }
                
            }catch(Exception e){
            
            
            System.out.println(e);}
            
            
            
            
            %>
    </body>
</html>
