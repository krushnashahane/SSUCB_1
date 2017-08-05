<%-- 
    Document   : getBankDetail
    Created on : Jun 24, 2017, 8:29:21 PM
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
            try {
                String searchText=request.getParameter("searchText");
                java.sql.ResultSet rs = ssucb.dao.DBDAO.getInstance().searchBranch(searchText);
        %>
        <table class="tftable" border="1">
            <tr><th>Branch No</th>
                <th>NAME</th>
                <th>EMAIL</th>  
                <th>CONTACt</th>

                <th>IFSC</th>
                <th>View Detail</th>
                <th>Update Branch</th>
                <th>Delete Branch</th>


            </tr>    
            <%
                while (rs.next()) {
                    int branchid = rs.getInt(1);
            %>
            <tr>
                <td align="center"><%=branchid%></td>
                <td align="center"><%=rs.getString(2)%></td>
                <td align="center"><%=rs.getString(3)%></td>  
                <td align="center"><%=rs.getString(4)%></td>
                <td align="center"><%=rs.getString(6)%></td>
                <td align="center"><a href="branchviewdetail.jsp?bid=<%=branchid%>">View Detail</a></td>
                <td align="center"><a href='branchupdatedetail.jsp'>Update</a></td>
                <td align="center"><a href='branchdelete.jsp'>Delete</a></td>


            </tr>          
            <%
                }
            %>

        </table>
        <%
            } catch (Exception e) {
                out.println("Error is" + e);
            }

        %>
    </body>
</html>
