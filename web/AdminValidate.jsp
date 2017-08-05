<%-- 
    Document   : AdminValidate
    Created on : Jul 13, 2017, 6:38:52 PM
    Author     : Naresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:useBean id="Adminpojo" class="ssucb.pojo.AdminLoginPojo"></jsp:useBean>
        <jsp:useBean id="UserDao" class="ssucb.dao.AdminLoginDao"></jsp:useBean>
    </head>
    <body>
        <%
            try {
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                System.out.println("Email==="+email);
                System.out.println("Password=="+password);
                System.out.println("Admin Validate");
                Adminpojo.setUsername(email);
                Adminpojo.setPassword(password);
                
                Adminpojo=UserDao.ValidateLogin(Adminpojo);
                System.out.println("in b");
                if(Adminpojo.isValid()){
                System.out.println("Is valid");
                    session.setAttribute("username", "admin@gmail.com");
                    response.sendRedirect("adminmaster.jsp");
                }
                else if(!Adminpojo.isValid()){
                   System.out.println("IS not valid..");
                    response.sendRedirect("adminlogin.jsp");
                
                
                }
                
                
                
                
                
                
                
                
                
              /*  
                if (email.equals("admin@gmail.com") && password.equals("admin")) {
                    session.setAttribute("username", "admin@gmail.com");
                    response.sendRedirect("adminmaster.jsp");
                } else {
                    response.sendRedirect("adminlogin.jsp");
                }*/
            } catch (Exception e) {
System.out.println("Exception has occured==="+e);
                response.sendRedirect("adminlogin.jsp");
            }
        %>
    </body>
</html>
