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
        
        
        <jsp:useBean id="GalaryDao" class="ssucb.dao.GallaryDao"></jsp:useBean>
        <jsp:useBean id="SocialActivity" class="ssucb.dao.SocialActivityDao"></jsp:useBean>
        
    </head>
    <body>
        <jsp:include page="adminmaster.jsp"/>

        <br>
        <div class='content isOpen'>
            <a class='button'></a>

            <div class="tab">
                <!--  <button class="tablinks" onclick="openCity(event, 'uploadphoto')">Manager Photo</button>-->

                <button class="tablinks" onclick="openCity(event, 'addmanager')">Social Activity Detail</button>
                <button class="tablinks" onclick="openCity(event, 'view')">View Social Activity</button>
                <!-- <button class="tablinks" onclick="openCity(event, 'search')">Search Manager By Name</button>
                 <button class="tablinks" onclick="openCity(event, 'searchc')">Search Manager By Contact</button>
                 <button class="tablinks" onclick="openCity(event, 'searchb')">Search Manager By Branch</button>-->

            </div>

          
            <div id="addmanager" class="tabcontent">
                <h3>Add Manager Detail</h3>
                <br>


                <br><br>
                <!--<table id="formtable">-->

                <form name="frm" action="AddSocialActivity.jsp" method="POST" enctype="multipart/form-data" class="form-horizontal form-label-left" novalidate>
                    <div class="item form-group">
                        <input type="text" name="caption" value=""id="name" data-validate-length-range="6" data-validate-words="2" placeholder="Enter Name" required="required"/>
                    </div>


                    <div class="item form-group">
                        <input type="file" name="file" value="" required="required"/>
                    </div>
                    <div class="item form-group">
                        <input type="submit" name="s"  value="Add " class="buttonsubmit button4"/>
                    </div>


                </form>  
                <!-- </table>-->


            </div>

            <div id="view" class="tabcontent">

                <%
                    try {
                        java.sql.ResultSet rs = SocialActivity.getAllSocialActivity();
                %>
                <table class="tftable" id="tblData4" border="1">
                    <input type="text" name="search" id="searchbox" placeholder="Search..">

                    <tr><th>Gid</th>
                        <th>Caption</th>
                        <th>Photo</th>  
                        
                        <th>Update </th>
                        <th>Delete </th>


                    </tr>    
                    <%
                        int count=0;
                        while (rs.next()) {
                            count++;
                            int mid = rs.getInt(1);
                    %>
                    <tr>
                        <td align="center"><%=count%></td>
                        <td align="center"><%=rs.getString(2)%></td> 
                        <td align="center"><img src="Main/img/gallery/<%=rs.getString(3)%>"  width="100" heigh="100"/></td>
                        
                        <td align="center"><a href='UpdateGalarry.jsp'>Update</a></td>
                        <td align="center"><a href='DeletePhoto.jsp?gid=<%=rs.getInt(1)%>'>Delete</a></td>


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
                   $(document).ready(function ()
                   {
                       $('#searchbox').keyup(function ()
                       {
                           searchTable($(this).val());
                       });
                   });
                   function searchTable(inputVal)
                   {
                       var table = $('#tblData4');
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