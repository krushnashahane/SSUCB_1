<%-- 
    Document   : CheckOTP
    Created on : Jun 29, 2017, 12:00:58 PM
    Author     : KRISHNA
--%>
<%@page import="java.util.*" %>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.net.URLConnection"%>
<%@page import="java.net.URL"%>
<%@page  isELIgnored="false" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:useBean id="CustomerDao" class="ssucb.dao.CustomerDAO"></jsp:useBean>
        <jsp:useBean id="OTP" class="ssucb.dao.NewClass"></jsp:useBean>
        <link rel="stylesheet" href="css/inputcss.css">
        <link rel="stylesheet" href="css/viewtable.css">
        <script>
            function showBankDetail(str) {
                var xhttp;    
                if (str == "") {
                    document.getElementById("txtHint").innerHTML = "";
                    return;
                }
                xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function() {
                    if (this.readyState == 4 && this.status == 200) {
                        document.getElementById("txtHint").innerHTML = this.responseText;
                    }
                };
                xhttp.open("GET", "getBankDetail.jsp?searchText="+str, true);
                xhttp.send();
            }
        </script>
    </head>
    <body>
        <jsp:include page="CustomerMasterHeader.jsp"/>
        <%
            String accountnumber = request.getParameter("accountnumber");
            String mobilenumber = request.getParameter("mobilenumber");
System.out.println("Mobile number ==="+mobilenumber);
            boolean b = CustomerDao.CheckCustomerAccountNumberMobileNumber(mobilenumber);
            if (b) {
                System.out.println("Valid Customer...");
                int lenght = 6;
                String OneTimePassword = String.valueOf(OTP.GetOTP(lenght));
                System.out.println("One time Password is equals" + OneTimePassword);

                session.setAttribute("onetimepassword", OneTimePassword);



                String requestUrl = "http://smssigma.com/API/WebSMS/Http/v1.0a/index.php?username=educom&password=adinathgirisir&sender=GIRIED&to="+mobilenumber+"&message=Welcome+Sundarlal+Sawaji+Urban+Bank+the+One+Time+Password+is+:+"+OneTimePassword+"&reqid=1&format={json|text}&route_id=OPT-IN ROUTE{AUTO}[1]+GIRIED";
                //response.sendRedirect(requestUrl);
                URL url = new URL(requestUrl);
                HttpURLConnection uc = (HttpURLConnection) url.openConnection();
                System.out.println(uc.getResponseMessage());
                uc.disconnect();
                
                System.out.println("Message has been Sent");



            }







        %>

        <br>
        <div class='content isOpen'>
            <a class='button'></a>

            <div class="tab">
                <button class="tablinks" onclick="openCity(event, 'addnewtendor')">Apply for ChequeBook</button>

            </div>

            <div id="addnewtendor" class="tabcontent">
                <h3>Apply Cheque book Form</h3>
                <br><br><table id="formtable">
                    <form name="frm" action="OTPCheck.jsp" method="POST"   >
                        <tr><td><input type="text" name="otpnumber" value="" placeholder="Enter OTP"/></td></tr>


                        </tr>

                        <tr><td colspan="2" align="center">
                                <input type="submit"   value="Check OTP" class="buttonsubmit button4"/>

                            </td></tr>

                    </form>  
                </table>


            </div>


        </div>
    </div>

</body>
</html>
