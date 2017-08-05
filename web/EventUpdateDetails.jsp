<%@page import="ssucb.pojo.EvenMasterPojo"%>

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
            int Eventid;
            EvenMasterPojo  e;
        %>
        <%
            try {
                username = session.getAttribute("username").toString();

                System.out.println(username);
                Eventid = Integer.parseInt(request.getParameter("eid").toString());
                System.out.println("Aucid ===" + Eventid);
                ssucb.dao.EventMasterDAO EventDao = new ssucb.dao.EventMasterDAO();
               e=EventDao.getAllEventDetailsByEventID(Eventid);




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
                <button class="tablinks" onclick="openCity(event, 'addbranch')">Update Event</button>

            </div>
            <%
                try {
            %>
            <div id="addbranch" class="tabcontent">
                <h3>Update  Event Form</h3>
                <br><br><table id="formtable">
                    <form  action="UpdateEventDetails.jsp" method="POST">
                        <tr><td><input type="hidden" name="EventID" value="<%=Eventid%>"</td></tr>
                         <tr><td><input type="text" name="EventName" value="<%=e.getEventName()%>" placeholder="Event Name"/></td></tr>
                        <tr><td><input type="text" name="EventDesc" value="<%=e.getEventDesc()%>" placeholder="Event Description"/></td></tr>
                        <tr> <td><input type="text" name="Edate" value="<%=e.getEdate()%>" placeholder="Event Date"/></td></tr>

                        <tr><td><input type="text" name="Etime" value="<%=e.getEtime()%>" placeholder="Event Time"/></td></tr>


                     

                      

                        <tr><td colspan="2" align="center">
                                <input type="submit" name="s"  value="Update  Event" class="buttonsubmit button4"/>

                            </td></tr>


                    </form>  
                </table>


            </div>

            <%


                } catch (Exception e) {

                    System.out.println(e);
                }
            %>



        </div>
    </div>
</body>
</html>