<%-- 
    Document   : OTPCheck
    Created on : Jun 29, 2017, 3:18:56 PM
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


String otprecived=request.getParameter("otpnumber").toString();

String sessionOTP=session.getAttribute("onetimepassword").toString();


System.out.println("OTprecived ==="+otprecived);
System.out.println("session OTP=="+sessionOTP);

if(otprecived.equals(sessionOTP)){
System.out.println("Valid Customer....");
response.sendRedirect("CheckbookApply.jsp");




}






%>

    </body>
</html>
