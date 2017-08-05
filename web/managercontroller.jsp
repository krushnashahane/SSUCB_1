<%-- 
    Document   : managercontroller
    Created on : Jun 25, 2017, 2:55:36 AM
    Author     : KRISHNA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
             <style>
            .alert {
                padding: 20px;
                background-color: #f44336;
                color: white;
            }

            .closebtn {
                margin-left: 15px;
                color: white;
                font-weight: bold;
                float: right;
                font-size: 22px;
                line-height: 20px;
                cursor: pointer;
                transition: 0.3s;
            }

            .closebtn:hover {
                color: black;
            }
        </style>
    </head>
    <body>
        <%

            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String contact = request.getParameter("contact");
            String photo = request.getParameter("photo");
            String qualification = request.getParameter("qualification");
            String experiance = request.getParameter("experiance");
            String branch = request.getParameter("branch");

            int bid = ssucb.dao.DBDAO.getInstance().getBranchIdByName(branch);

            String localAddress = request.getParameter("localAddress");
            String perAddress = request.getParameter("perAddress");
            String password = request.getParameter("password");
            try {
                ssucb.dao.DBDAO db = ssucb.dao.DBDAO.getInstance();
                ssucb.pojo.ManagerPojo pj = new ssucb.pojo.ManagerPojo();
                pj.setBranchId(bid);
                pj.setName(name);
                pj.setEmail(email);
                pj.setContact(contact);
                pj.setExperiance(experiance);
                pj.setQualification(qualification);
                pj.setLocalAddress(localAddress);
                pj.setPerAddress(perAddress);
                pj.setPhoto(photo);
                pj.setPassword(password);
                boolean b = db.isAddManager(pj);
                if (b) {
             %>
             
               <p>Click on the "x" symbol to close the alert message.</p>
        <div class="alert">
            <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
            <strong>Manager Added Successfully..................</strong>
        </div>
  <jsp:include page="managermaster.jsp"/>
             <%
                } else {
                }
            } catch (Exception e) {
                out.println("Error is " + e);
            }
        %>
    </body>
</html>
