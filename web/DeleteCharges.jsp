<%-- 
    Document   : Delete Charges
    Created on : Sep 15, 2017, 5:40:27 PM
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
        <jsp:useBean id="Charges" class="ssucb.dao.ChargesDao"></jsp:useBean> 
        <%
            try {
                int chid = Integer.parseInt(request.getParameter("chid"));
                boolean b = Charges.DeleteCharges(chid);
                if (b) {

        %>
        <script>
            alert("Deleted Success");
            window.location.href = "Charges.jsp";
        </script>


        <%                }

            } catch (Exception e) {

                System.out.println("" + e);
            }

        %>


    </body>
</html>
