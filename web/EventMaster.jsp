<%@page import="ssucb.pojo.EvenMasterPojo"%>
<%@page import="ssucb.pojo.TenderMasterPojo"%>
<html>
    <head>
        <link rel="stylesheet" href="css/inputcss.css">
        <link rel="stylesheet" href="css/viewtable.css">
        <!--   <link href="js/Validation/custom.min.css" rel="stylesheet">-->
        <jsp:useBean id="EventDao" class="ssucb.dao.EventMasterDAO"></jsp:useBean>
            <script>
                function showBankDetail(str) {
                    var xhttp;
                    if (str == "") {
                        document.getElementById("txtHint").innerHTML = "";
                        return;
                    }
                    xhttp = new XMLHttpRequest();
                    xhttp.onreadystatechange = function () {
                        if (this.readyState == 4 && this.status == 200) {
                            document.getElementById("txtHint").innerHTML = this.responseText;
                        }
                    };
                    xhttp.open("GET", "getBankDetail.jsp?searchText=" + str, true);
                    xhttp.send();
                }
            </script>
        </head>
        <body>
        <jsp:include page="adminmaster.jsp"/>

        <br>
        <div class='content isOpen'>
            <a class='button'></a>

            <div class="tab">
                <button class="tablinks" onclick="openCity(event, 'addnewEvent')">Add New Event</button>
                <button class="tablinks" onclick="openCity(event, 'view')">View Event</button>
                <!--<button class="tablinks" onclick="openCity(event, 'search')">Search Branches</button>-->
            </div>

            <div id="addnewEvent" class="tabcontent">
                <h3>Add Event</h3>
                <br><br>
                <!--  <table id="formtable">-->
            
                    <form name="frm" action="EventMasterUpload.jsp" method="POST"  enctype="multipart/form-data" class="form-horizontal form-label-left" novalidate>
                        <div class="item form-group">
                            <input type="text" name="EventName" id="name" value="" class="form-control col-md-7 col-xs-12"  data-validate-length-range="6" data-validate-words="2"a placeholder="Event Name" required="required"/>
                        </div>
                        <div class="item form-group">
                            <input type="text" name="EventDesc" id="email" value="" placeholder="Event Description" required="required"/>
                        </div>





                        <div class="item form-group">
                            <input type="date" name="Edate" value="" placeholder="Event Date" required="required"/>

                        </div>



                        <div class="item form-group">
                            <input type="text" name="Etime" value="" placeholder="Event Time" required="required"/>

                        </div>





                        <div class="item form-group">
                            <input type="file" name="file" value="" required="required"/>

                        </div>



                        <div class="item form-group">
                            <input type="submit" name="s"  value="Add New Event" class="buttonsubmit button4"/>
                        </div>



                    </form>  </div>
                <!--</table>-->


            </div>

            <div id="view" class="tabcontent">

                <%
                    try {
                        // java.sql.ResultSet rs = ssucb.dao.DBDAO.getInstance().getAllBranches();

                        // ssucb.dao.TenderMasterDao tdao= new ssucb.dao.TenderMasterDao();
                        java.util.ArrayList al = EventDao.getAllEvent();


                %>
                <table class="tftable" id="tblData2" border="1">
                    <input type="text" name="search" id="searchbox" placeholder="Search..">
                    <tr><th>Event id</th>
                        <th>Event Name</th>
                        <th>Event Desc</th>
                        <th>Edate</th>  
                        <th>Etime</th>

                        <th>image</th>
                        <th>Update Event</th>
                        <th>Delete Event</th>


                    </tr>    
                    <%                        ssucb.pojo.EvenMasterPojo e = new ssucb.pojo.EvenMasterPojo();
                        java.util.Iterator ir = al.iterator();
                        while (ir.hasNext()) {
                            e = (EvenMasterPojo) ir.next();


                    %>
                    <tr>
                        <td align="center"><%=e.getEventID()%></td>
                        <td align="center"><%=e.getEventName()%></td>
                        <td align="center"><%=e.getEventDesc()%></td>
                        <td align="center"><%=e.getEdate()%></td>  
                        <td align="center"><%=e.getEtime()%></td>
                        <td align="center"><img style="height: 10%"  src="img/Event/<%=e.getFile()%>"></td>
                        <td align="center"><a href='EventUpdateDetails.jsp?eid=<%=e.getEventID()%>'>Update</a></td>
                        <td align="center"><a href='EventDelete.jsp?eid=<%=e.getEventID()%>'>Delete</a></td>
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
            </div>

            <div id="search" class="tabcontent">
                <h3>Search Branch By Name/Contact/Email/Taluka/District/Address</h3>
                <br>
                <p>
                    <input type="text" id="searchbox" onkeyup="showBankDetail(this.value)" name="search" placeholder="Search..">
                </p>
                <br><br>
                <div id="txtHint"></div>

            </div>

        </div>
    </div>

  

    <script type="text/javascript">
                        $(document).ready(function ()
                        {
                            $('#searchbox').keyup(function ()
                            {
                                searchTable($(this).val());
                            });
                        });
                        function searchTable(inputVal)
                        {
                            var table = $('#tblData2');
                            table.find('tr').each(function (index, row)
                            {
                                var allCells = $(row).find('td');
                                if (allCells.length > 0)
                                {
                                    var found = false;
                                    allCells.each(function (index, td)
                                    {
                                        var regExp = new RegExp(inputVal, 'i');
                                        if (regExp.test($(td).text()))
                                        {
                                            found = true;
                                            return false;
                                        }
                                    });
                                    if (found == true)
                                        $(row).show();
                                    else
                                        $(row).hide();
                                }
                            });
                        }
    </script>

    <script src="js/Validation/jquery.min.js"></script>
    <script src="js/Validation/bootstrap.min.js"></script>
    <script src="js/Validation/validator.js"></script>
    <script src="js/Validation/custom.min.js"></script>
</body>
</html>