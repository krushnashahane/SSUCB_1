<html>
    <head>
        <link rel="stylesheet" href="css/inputcss.css">
        <link rel="stylesheet" href="css/viewtable.css">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>

        <script type="text/javascript" src="js/Validation/jquery.validate.min.js"></script>

        <style>
            /*body {
                background-color: #C6F5F2;
            }
            */
            #content { background-color:#C6F5F2; width:950px; min-height:550px; text-align:left; padding:20px;  }
            h1 {
                padding:20px 10px 20px 10px;
            }
            h2 {
                padding-left: 0px !important;
            }
            #header {
                background-color: #CA410B !important;
            }
            .large { font-size:22px; }
            .orange { color:orange; }
            .italic { font-style:italic }
            .textmiddle {vertical-align:middle;}
            .padout { padding-left:25px; padding-right:25px; }
            .rounded-corners {
                -moz-border-radius: 40px;
                -webkit-border-radius: 40px;
                -khtml-border-radius: 40px;
                border-radius: 40px;
            }
            .rounded-corners-top {
                -moz-border-top-radius: 40px;
                -webkit-border-radius: 40px;
                -khtml-border-radius: 40px;
                border-radius: 40px;
            }
            .right {
                float: right;
            }
            .scrolldown { padding-left:20px; color:#EDECE8; font-size:40px; font-weight:bold; vertical-align:middle;
                          text-shadow: #6374AB 2px 2px 2px;
            }
            .contentblock { margin: 0px 20px; }
            .results { border: 1px solid blue; padding:20px; margin-top:20px; min-height:50px; }
            .blue-bold { font-size:18px; font-weight:bold; color:blue; }

            /* example styles for validation form demo *//*
           #register-form {
               background: url("form-fieldset.gif") repeat-x scroll left bottom #F8FDEF;
               border: 1px solid #DFDCDC;
               border-radius: 15px 15px 15px 15px;
               display: inline-block;
               margin-bottom: 30px;
               margin-left: 20px;
               margin-top: 10px;
               padding: 25px 50px 10px;
               width: 350px;
           }
            */
            /*
            #register-form .fieldgroup {
                background: url("form-divider.gif") repeat-x scroll left top transparent;
                display: inline-block;
                padding: 8px 10px;
                width: 340px;
            }
            
            #register-form .fieldgroup label {
                float: left;
                padding: 15px 0 0;
                text-align: right;
                width: 110px;
            }
            
            #register-form .fieldgroup input, #register-form .fieldgroup textarea, #register-form .fieldgroup select {
                float: right;
                margin: 10px 0;
                height: 25px;
            }
            
            #register-form .submit {
                padding: 10px;
                width: 220px;
                height: 40px !important;
            }
            */
            #register-form .fieldgroup label.error {
                color: #FB3A3A;
                display: inline-block;
                margin: 4px 0 5px 125px;
                padding: 0;
                text-align: left;
                width: 220px;
            }
        </style>



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


        <script type="text/javascript">
            function check(value) {
                xmlHttp = GetXmlHttpObject()
                var url = "checkajax.jsp";
                url = url + "?name=" + value;
                xmlHttp.onreadystatechange = stateChanged
                xmlHttp.open("GET", url, true)
                xmlHttp.send(null)
            }
            function stateChanged() {
                if (xmlHttp.readyState == 4 || xmlHttp.readyState == "complete") {
                    var showdata = xmlHttp.responseText;
                    document.getElementById("mydiv").innerHTML = showdata;
                }
            }
            function GetXmlHttpObject() {
                var xmlHttp = null;
                try {
                    xmlHttp = new XMLHttpRequest();
                } catch (e) {
                    try {
                        xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
                    } catch (e) {
                        xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
                    }
                }
                return xmlHttp;
            }
        </script>
    </head>
    <body>
        <jsp:include page="adminmaster.jsp"/>
        <%!        String username;
        %>
        <%
            try {
                username = session.getAttribute("username").toString();
                if (username == null) {
                    response.sendRedirect("adminlogin.jsp");

                }
            } catch (Exception e) {

                response.sendRedirect("adminlogin.jsp");
            }
        %>
        <br>
        <div class='content isOpen'>
            <a class='button'></a>

            <div class="tab">
                <button class="tablinks" onclick="openCity(event, 'addbranch')">Add New Branch</button>
                <button class="tablinks" onclick="openCity(event, 'view')">View Branches</button>
                <!-- <button class="tablinks" onclick="openCity(event, 'search')">Search Branches</button>-->
            </div>

            <div id="addbranch" class="tabcontent">
                <h3>Add Branch Form</h3>
                <br><br>
                <!-- <table id="formtable">-->
                <!--branchcontroller.jsp-->
                <form  action="branchcontroller.jsp" id="register-form"  method="POST" class="form-horizontal form-label-left" novalidate>

                    <div class="item form-group">
                        <input type="text" name="name" id="name" value=""  placeholder="Enter Name" required="required"/>
                    </div>
                    <td>  <div class="item form-group"> <input type="text" name="email" value="" id="email" placeholder="Enter EMAIL" required="required"/></div>

                        <div class="item form-group"><input type="text" name="contact" value="" id="telephone" placeholder="contact" required="required"/></div>
                        <div class="item form-group">Opening Date: <input type="date" name="date" placeholder="Select Date" required="required"/></div>


                        <div class="item form-group">
                            
                            <input type="text" name="ifsc" value="" id="name" placeholder="Enter IFSC CODE" required="required"/>
                        </div>
                        ATM: <div class="item form-group">
                            <select name="atm"><option>YES</option>
                                <option>NO</option>
                            </select></div>



                        <div class="item form-group">
                            
                           <!-- <select name="state" required="required"><option>Maharastra</option>

                            </select>-->
                         <input type="text" name="state" value="" id="name" placeholder="Enter State " required="required"/>
                        </div>

                        <div class="item form-group">
                            <!--<select required="required" name="district">
                                <option>Parbhani</option>

                            </select>-->
                        
                         <input type="text" name="district" value="" id="name" placeholder="Enter district " required="required"/>
                        
                        
                        </div>




                         <div class="item form-group">
                            <!--<select name="taluka">
                                <option>Taluka</option>

                            </select>-->
                             <input type="text" name="taluka" value="" id="name" placeholder="Enter taluka " required="required"/>
                        
                            
                        </div>

                        <div class="item form-group"><input type="text" required="required" name="city" value="" placeholder="Enter City  Name"/></div>



                        <div class="item form-group"><textarea required="required" name='address' id="address" placeholder="Enter Address" ></textarea></div>

                        <div class="item form-group"><input type="text" name="latitude" value="" id="name" placeholder="Enter Latitude" required="required"/></div>
                        <div class="item form-group"><input type="text" name="langitude" value="" id="name" placeholder="Enter Langitude" required="required"/></div>

                        <div class="item form-group">   <input type="submit" name="s"   value="Add New Branch" class="buttonsubmit button4"/>
                        </div>

                </form> 
            </div>



            <div id="view" class="tabcontent">

                <%
                    try {
                        java.sql.ResultSet rs = ssucb.dao.DBDAO.getInstance().getAllBranches();
                %>
                <table class="tftable" id="tblData3" border="1">
                    <input type="text" name="search" id="searchbox" placeholder="Search..">

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
                        <td align="center"><a href='branchupdatedetail.jsp?bid=<%=branchid%>'>Update</a></td>
                        <td align="center"><a href='branchdelete.jsp?branchid=<%=branchid%>'>Delete</a></td>


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

    <!--  <script src="js/Validation/jquery.min.js"></script>-
    <script src="js/Validation/bootstrap.min.js"></script>
    <script src="js/Validation/validator.js"></script>
    <script src="js/Validation/custom.min.js"></script>
    
    <script src="js/Validation/jquery.js"></script>
    --> 
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
            var table = $('#tblData3');
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
    <!--<script src="js/Validation/jquery.validate.min.js"></script>-->


    <script type="text/javascript">
        /**
         * Basic jQuery Validation Form Demo Code
         * Copyright Sam Deering 2012
         * Licence: http://www.jquery4u.com/license/
         */
        (function ($, W, D)
        {
            var JQUERY4U = {};

            JQUERY4U.UTIL =
                    {
                        setupFormValidation: function ()
                        {
                            //form validation rules
                            $("#register-form").validate({
                                rules: {
                                    name: "required",
                                    firstname: "required",
                                    lastname: "required",
                                    email: {
                                        required: true,
                                        email: true
                                    },
                                    password: {
                                        required: true,
                                        minlength: 5
                                    },

                                    contact: {
                                        required: true,
                                        minlength: 10

                                    },
                                    latitude: "required",
                                    langitude: "required",
                                    agree: "required",
                                    date: "required",
                                    address: "required",
                                },
                                messages: {
                                    name: "Please ensster valid name",
                                    firstname: "Please enter your firstname",
                                    lastname: "Please enter your lastname",
                                    latitude: "Please Enter Valid Latitude",
                                    langitude: "Please Enter valid Langitude",
                                    password: {
                                        required: "Please provide a password",
                                        minlength: "Your password must be at least 5 characters long"
                                    },
                                    contact: {

                                        required: "Please Enter valid contact number",
                                        minlength: "Your contact number must be of 10 digit",
                                    },
                                    email: "Please enter a valid email address",
                                    agree: "Please accept our policy",
                                    date: "Please Select Date"
                                },
                                submitHandler: function (form) {
                                    form.submit();
                                }
                            });
                        }
                    }

            //when the dom has loaded setup form validation rules
            $(D).ready(function ($) {
                JQUERY4U.UTIL.setupFormValidation();
            });

        })(jQuery, window, document);
    </script>
    <script src="js/Validation/jquery.min.js"></script>
    <script src="js/Validation/bootstrap.min.js"></script>
    <script src="js/Validation/validator.js"></script>
    <script src="js/Validation/custom.min.js"></script>

</body>
</html>