<html>
    <head>
        <link rel="stylesheet" href="css/inputcss.css">
        <link rel="stylesheet" href="css/viewtable.css">
        <script>
            function showManagerDetail(str) {
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

                xhttp.open("GET", "getManagerDetail.jsp?searchText=" + str, true);
                xhttp.send();
            }


        </script>
        <script>

            function showManagerDetailByContact(str) {
                var xhttp;

                if (str == "") {
                    document.getElementById("txtHint1").innerHTML = "";
                    return;
                }
                xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function () {
                    if (this.readyState == 4 && this.status == 200) {
                        document.getElementById("txtHint1").innerHTML = this.responseText;
                    }
                };
                xhttp.open("GET", "getManagerDetailByContact.jsp?searchText=" + str, true);
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
              <!--  <button class="tablinks" onclick="openCity(event, 'uploadphoto')">Manager Photo</button>-->

                <button class="tablinks" onclick="openCity(event, 'addmanager')">Manager Detail</button>
                <button class="tablinks" onclick="openCity(event, 'view')">View Manager</button>
               <!-- <button class="tablinks" onclick="openCity(event, 'search')">Search Manager By Name</button>
                <button class="tablinks" onclick="openCity(event, 'searchc')">Search Manager By Contact</button>
                <button class="tablinks" onclick="openCity(event, 'searchb')">Search Manager By Branch</button>-->

            </div>

            <div id="uploadphoto" class="tabcontent">
                <h3>Upload Photo</h3>
                <jsp:include page="uploadimage.jsp"/>
            </div>
            <div id="addmanager" class="tabcontent">
                <h3>Add Manager Detail</h3>
                <br>
               
               
                <br><br>
                <!--<table id="formtable">-->

                    <form name="frm" action="ManagerMasterUpload.jsp" method="POST" enctype="multipart/form-data" class="form-horizontal form-label-left" novalidate>
                      <div class="item form-group">
                        <input type="text" name="name" value=""id="name" data-validate-length-range="6" data-validate-words="2" placeholder="Enter Name" required="required"/>
                      </div>
                        
                        <div class="item form-group">
                        <input type="text" name="email" value="" id="email" placeholder="Enter EMAIL" required="required"/>
                        </div>
                        <div class="item form-group">
                        
                        <input type="text" name="contact" value="" id="telephone" data-validate-length-range="8,20" placeholder="contact" required="required"/>
                        </div>   
                        
                        <div class="item form-group">
                        <input type="text" name="qualification" value="" id="name" placeholder="qualification" required="required"/>
                        </div>
                        <div class="item form-group">
                      <input type="text" name="experiance" value="" id="name" placeholder="Experiance" required="required"/>
                        </div>
                        <div class="item form-group">
                      
                      Select Branch :<select  name="branch" id="name" required="required">
                                    <%
                                        try {
                                            java.sql.ResultSet rs = ssucb.dao.DBDAO.getInstance().getAllBranchNamesAndBranchid();
                                            while (rs.next()) {


                                    %>
                                    <option value="<%=rs.getString(2)%>"><%=rs.getString(1)%></option>

                                    <%
                                            }
                                        } catch (Exception e) {
                                            out.println("Error is" + e);
                                        }
                                    %>
                                </select>
                        </div>
                                <div class="item form-group">
                      
                            <textarea name='localAddress' id="textarea" placeholder="Enter Local Address " required="required" ></textarea>
                                </div>
                                <div class="item form-group">
                        
                            <textarea name='perAddress' id="textarea" placeholder="Enter Peremenant Address " required="required" ></textarea>
                                </div>
                                <div class="item form-group">
                    
                           <input type="text" name="password" id="password" value="" placeholder="Password" required="required"/>
                                </div>
                                <div class="item form-group">
                        <input type="file" name="file" value="" required="required"/>
                                </div>
                                <div class="item form-group">
                                <input type="submit" name="s"  value="Add New Manager" class="buttonsubmit button4"/>
                                </div>
                          

                    </form>  
               <!-- </table>-->


            </div>

            <div id="view" class="tabcontent">

                <%
                    try {
                        java.sql.ResultSet rs = ssucb.dao.DBDAO.getInstance().viewManager();
                %>
                <table class="tftable" id="tblData4" border="1">
                      <input type="text" name="search" id="searchbox" placeholder="Search..">
                   
                    <tr><th>PHOTO</th>
                        <th>Name</th>
                        <th>Email</th>  
                        <th>Contact</th>

                        <th>Branch Name</th>
                        <th>View Detail</th>
                        <th>Update Branch</th>
                        <th>Delete Branch</th>


                    </tr>    
                    <%
                        while (rs.next()) {
                            int mid = rs.getInt(1);
                    %>
                    <tr>
                        <td align="center"><img src="img/ManagerPhoto/<%=rs.getString(6)%>"  width="100" heigh="100"/></td>
                        <td align="center"><%=rs.getString(2)%></td>
                        <td align="center"><%=rs.getString(3)%></td>  
                        <td align="center"><%=rs.getString(4)%></td>
                        <td align="center"><%=rs.getString(5)%></td>
                        <td align="center"><a href="branchviewdetail.jsp?bid=<%=mid%>">View Detail</a></td>
                        <td align="center"><a href='branchupdatedetail.jsp'>Update</a></td>
                        <td align="center"><a href='managerdelete.jsp?mid=<%=mid%>'>Delete</a></td>


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
                <h3>Search Branch By Name/Contact/Email/branch</h3>
                <br>
                <p>
                    <input type="text" id="searchbox" onkeyup="showManagerDetail(this.value)" name="search" placeholder="Search..">
                </p>
                <br><br>
                <div id="txtHint"></div>

            </div>

            <div id="searchc" class="tabcontent">
                <h3>Search Branch By Contact</h3>
                <br>
                <p>
                    <input type="text" id="searchbox" onkeyup="showManagerDetailByContact(this.value)" name="search" placeholder="Search..">
                </p>
                <br><br>
                <div id="txtHint1"></div>

            </div>

            <div id="searchb" class="tabcontent">
                <h3>Search Branch branch</h3>
                <br>
                <p>
                    <input type="text" id="searchbox" onkeyup="showManagerDetail(this.value)" name="search" placeholder="Search..">
                </p>
                <br><br>
                <div id="txtHint"></div>

            </div>
        </div>
    </div>
     <script src="js/Validation/jquery.js"></script>
        
         <script type="text/javascript">
                                        $(document).ready(function()
                                        {
                                            $('#searchbox').keyup(function()
                                            {
                                                searchTable($(this).val());
                                            });
                                        });
                                        function searchTable(inputVal)
                                        {
                                            var table = $('#tblData4');
                                            table.find('tr').each(function(index, row)
                                            {
                                                var allCells = $(row).find('td');
                                                if (allCells.length > 0)
                                                {
                                                    var found = false;
                                                    allCells.each(function(index, td)
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