<%-- 
    Document   : branchviewdetail
    Created on : Jun 24, 2017, 7:07:06 PM
    Author     : KRISHNA
--%>

<%@page import="ssucb.pojo.BranchPojo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/inputcss.css">
        <style>
            .buttonlink{
                display: block;
                width: 115px;
                height: 25px;
                background: #4E9CAF;
                padding: 10px;
                text-align: center;
                border-radius: 5px;
                color: white;
                font-weight: bold;
            }
        </style>
    </head>
    <body>
        <%
            int bid = Integer.parseInt(request.getParameter("bid"));
            try {
                BranchPojo pj = ssucb.dao.DBDAO.getInstance().getBranchWiseDetail(bid);
        %>
        <jsp:include page="adminmaster.jsp"/>


     
        <div class='content isOpen'>
            <a class='button'></a>
   <a href="addnewbranch.jsp" class="buttonlink">Back</a>
   <br></br>
   <br></br>
            <table  id="singleviewtable">
                <tr><td><label id="labelview">Branch Name</label></td><td><label  id="labelview"><%=pj.getName()%></label></td>
                    <td><label id="labelview">Branch Email</label></td><td><label  id="labelview"><%=pj.getEmail()%></label></td></tr>


                <tr><td><label id="labelview">Branch Contact</label></td><td><label  id="labelview"><%=pj.getContact()%></label></td>
                    <td><label id="labelview">Branch Opening Date</label></td><td><label  id="labelview"><%=pj.getDate()%></label></td></tr>


                <tr><td><label id="labelview">Branch IFSC</label></td><td><label  id="labelview"><%=pj.getIfsc()%></label></td>
                    <td><label id="labelview">Branch ATM</label></td><td><label  id="labelview"><%=pj.getAtm()%></label></td></tr>



                <tr><td><label id="labelview">Branch Address</label></td><td><label  id="labelview"><%=pj.getAddress()%></label></td>
                    <td><label id="labelview">Branch Taluka</label></td><td><label  id="labelview"><%=pj.getTaluka()%></label></td></tr>



                <tr><td><label id="labelview">Branch City</label></td><td><label  id="labelview"><%=pj.getCity()%></label></td>
                    <td><label id="labelview">Branch District</label></td><td><label  id="labelview"><%=pj.getDistrict()%></label></td></tr>


                <tr><td><label id="labelview">Branch State</label></td><td><label  id="labelview"><%=pj.getState()%></label></td></tr>


            </table>





        </div>
    </div>

    <%
        } catch (Exception e) {
            out.println("Error is " + e);
        }
    %>
</body>
</html>
