<%-- 
    Document   : CustomerRegisterUpload
    Created on : Jul 11, 2017, 5:22:48 PM
    Author     : Naresh
--%>

<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.net.URL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="customerregister.jsp"></jsp:include>
        </head>
        <body>
        <%
            try {
               
                String name = request.getParameter("name");
                String email = request.getParameter("email");
                String contact = request.getParameter("contact");
                String address = request.getParameter("address");
                String type = request.getParameter("type");
                String branch = request.getParameter("branch");
                int branchid = ssucb.dao.DBDAO.getInstance().getBranchIdByName(branch);
                ssucb.pojo.CustomerPojo pj = new ssucb.pojo.CustomerPojo();
                pj.setName(name);
                pj.setEmail(email);
                pj.setContact(contact);
                pj.setAddress(address);
                pj.setType(type);
                pj.setBranchid(branchid);
                ssucb.dao.CustomerDAO db = new ssucb.dao.CustomerDAO();
                boolean b = db.isRegisterCustomer(pj);
                if (b) {
                    String requestUrl = "http://smssigma.com/API/WebSMS/Http/v1.0a/index.php?username=educom&password=adinathgirisir&sender=GIRIED&to=" + contact + "&message=Welcome+Sundarlal Sawaji Urban+Bank&reqid=1&format={json|text}&route_id=OPT-IN ROUTE{AUTO}[1]+GIRIED";
                    //response.sendRedirect(url);
                    URL url = new URL(requestUrl);
                    HttpURLConnection uc = (HttpURLConnection) url.openConnection();
                    System.out.println(uc.getResponseMessage());
                    uc.disconnect();
                   
                    response.sendRedirect("customerregister.jsp");
        %>
        <div id="saveMessage">Customer Register Success..................</div>

        <%                  } else {
        %>
        <div class="cta"><a href="">Customer Registration Failed..................</a></div>

        <%                          }
                
            } catch (Exception e) {
                System.out.println(e);
                
            }

        %>
    </body>
</html>
