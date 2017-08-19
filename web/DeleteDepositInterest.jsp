<%-- 
    Document   : DeleteDepositInterest
    Created on : Aug 19, 2017, 5:45:27 PM
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
        <jsp:useBean id="DIDao" class="ssucb.dao.DepositInterestDao"></jsp:useBean>
        <%
            try {

                int did = Integer.parseInt(request.getParameter("id").toString());

                boolean b = DIDao.DeleteDepositInterest(did);
                if (b) {
        %>
        <script>

            alert("Deleted Successfully");
            window.location.href = "DepositInterestDetails.jsp";
        </script>




        <%
                }

            } catch (Exception e) {

                System.out.println("" + e);
            }


        %>



    </body>
</html>
