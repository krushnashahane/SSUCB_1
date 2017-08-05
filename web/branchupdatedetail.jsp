<%@page import="ssucb.pojo.BranchPojo"%>
<html>
    <head>
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
        <jsp:include page="adminmaster.jsp"/>
        <%!        String username;
        
        int branchid;
         BranchPojo pj ;
        %>
        <%
            try {
                username = session.getAttribute("username").toString();
                branchid=Integer.parseInt(request.getParameter("bid").toString());
                System.out.println("Branchid ==="+branchid);
      
                      pj = ssucb.dao.DBDAO.getInstance().getBranchWiseDetail(branchid);
                
                
               System.out.println( pj.getName());
                pj.getEmail();
                pj.getContact();
                pj.getTaluka();
                pj.getDistrict();
                pj.getDate();
                pj.getAtm();
                
                %><%
                
            } catch (Exception e) {
System.out.println(e);
           //     response.sendRedirect("adminlogin.jsp");
            }
        %>
        <br>
        <div class='content isOpen'>
            <a class='button'></a>

            <div class="tab">
                <button class="tablinks" onclick="openCity(event, 'addbranch')">Add New Branch</button>
         
            </div>
<%
try{
%>
            <div id="addbranch" class="tabcontent">
                <h3>Add Branch Form</h3>
                <br><br><table id="formtable">
                    <form name="frm" action="BranchUpdateDetails.jsp" method="POST">
                        <tr><td><input type="hidden" name="branchid" value="<%=branchid%>"/></td></tr>
                        <tr><td><input type="text" name="name" value="<%=pj.getName()%>" placeholder="Enter Name"/></td>
                            <td><input type="text" name="email" value="<%=pj.getEmail()%>" placeholder="Enter EMAIL"/></td></tr>

                        <tr><td><input type="text" name="contact" value="<%=pj.getContact()%>" placeholder="contact"/></td>
                            <td><label>Opening Date</label><input type="text" name="date" value="<%=pj.getDate()%>" placeholder="Select Date"/></td></tr>


                        <tr><td><input type="text" name="ifsc" value="<%=pj.getIfsc()%>" placeholder="Enter IFSC CODE"/></td>
                            <td><label>Select ATM:</label><select name="atm"><option>YES</option>
                                    <option>NO</option>
                                </select></td>

                        </tr>

                        <tr><td><label>Select State:</label><select name="state"><option>Maharastra</option>

                                </select></td>
                            <td><label>
                                    Select District:</label><select name="district"><option>Parbhani</option>

                                </select>
                            </td>

                        </tr>

                        <tr><td> <label>Select District:</label><select name="taluka"><option>Taluka</option>

                                </select></td>
                            <td>
                                <input type="text" name="city" value="<%=pj.getCity()%>" placeholder="Enter City  Name"/>
                            </td>

                        </tr>
                        <tr>
                            <td colspan='2'>
                                <input  type="text" name='address' value="<%=pj.getAddress()%>"/></td>

                        </tr>
                         <tr><td><input type="text" name="latitude" value="<%=pj.getLatitude()%>" placeholder="Enter Latitude"/></td>
                            <td><input type="text" name="langitude" value="<%=pj.getLangitude()%>" placeholder="Enter Langitude"/></td></tr>
                        <tr><td colspan="2" align="center">
                                <input type="submit" name="s"  value="Add New Branch" class="buttonsubmit button4"/>

                            </td></tr>

                    </form>  
                </table>


            </div>

            <%
            

}catch(Exception e){

System.out.println(e);
}
%>

     

        </div>
    </div>
</body>
</html>