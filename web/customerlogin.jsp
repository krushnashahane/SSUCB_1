<%-- 
    Document   : customerlogin
    Created on : Jun 28, 2017, 12:36:51 PM
    Author     : KRISHNA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:useBean id="CustomerDB" class="ssucb.dao.CustomerDAO"/>
    </head>
    <body>
        <%

            try {

                String email = request.getParameter("email");
                String pword = request.getParameter("pword");

                boolean b = CustomerDB.CheckCustomer(email, pword);
 //session.setAttribute("cid", rs.getInt(1));
                if (b) {
                    ResultSet rs = CustomerDB.GetAllCustomers(email, pword);
                    while (rs.next()) {
                        session.setAttribute("cid", rs.getInt(1));
                        System.out.println("Cid===" + rs.getInt(1));
                        response.sendRedirect("CustomerMasterHeader.jsp");
                    }
                } else {
                    response.sendRedirect("existingcustomerlogin.jsp");

                }

            } catch (Exception e) {
                response.sendRedirect("existingcustomerlogin.jsp");
            }


        %>
    </body>
</html>
