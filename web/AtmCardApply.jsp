<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.net.URLConnection"%>
<%@page import="java.net.URL"%>
<%@page  isELIgnored="false"%>
<!DOCTYPE html>
<html >
    <head>
        <meta charset="UTF-8">
        <title>SSUCB</title>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

        <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
        <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

        <link rel="stylesheet" href="loginstyle/css/style.css">
        <!-- <link href="js/Validation/custom.min.css" rel="stylesheet">-->
        <style>
            #saveMessage {
                background-color: #33b5e5;;
                width: 295px;
                border: 3px #33b5e5;;
                padding: 15px;
                margin-left: 13.7cm;
                color: #ffffff;
            }
        </style>
    </head>

    <body>
        <div class="pen-title">
            <h1>Apply for New Account</h1>
        </div>
        <!-- Form Module-->
        <div class="module form-module">
            <div class="toggle"><i class="fa fa-times fa-pencil"></i>
                <!--       <div class="tooltip">Click  For  New Account</div> -->
            </div>
            <div class="form">
                <h2>Submit The Detail</h2>

                <!-- Form Mixin-->
                <!-- Input Mixin-->
                <!-- Button Mixin-->
                <!-- Pen Title-->

                <div class="x_content">
                    <form name="frm" action="AddAtmCard.jsp" method="post" class="form-horizontal form-label-left" novalidate>
                        <div class="item form-group">
                            <input type="text" name="name" id="name" class="form-control col-md-7 col-xs-12"  placeholder="Name Of Applicant" required="required"/>
                        </div>
                        <div class="item form-group">
                            <label>Account Operated By</label>
                            <select name="accountoperatedby">
                                <option>Individual</option>
                                <option>Either or Survivor</option>
                                <option>Any One</option>
                            </select>

                        </div>
                        <div class="item form-group">
                            <input type="text" name="uniquecustomerid"  class="form-control col-md-7 col-xs-12"  placeholder="Unique CustomerID Number" required="required"/>
                        </div>
                        <div class="item form-group">
                            <input type="text" name="savingaccountnumber" id="name" class="form-control col-md-7 col-xs-12"  placeholder="Saving Account Number" required="required"/>
                        </div>
                        <div class="item form-group">
                            <label>sex</label>

                            <select name="sex">
                                <option>Male</option>
                                <option>Female</option>
                            </select>
                        </div>



                        <div class="item form-group">
                            <input type="text"  name="address" class="form-control col-md-7 col-xs-12"  placeholder="Address" required="required"/>
                        </div>
                        <div class="item form-group">
                            <input type="email" name="email" id="email" class="form-control col-md-7 col-xs-12"  placeholder="Enter email" required="required"/>
                        </div>

                        <div class="item form-group">
                            <input type="text" name="contact"  class="form-control col-md-7 col-xs-12"  placeholder=" Mobile Number" required="required"/>
                        </div>



                        <div class="item form-group">
                            <input type="text" name="adharcard"  class="form-control col-md-7 col-xs-12"  placeholder="Adhar Card Number" required="required"/>
                        </div>

                        <div class="item form-group">
                            <input type="text" name="pancard"  class="form-control col-md-7 col-xs-12"  placeholder="Pan Card Number" required="required"/>
                        </div>





                        <div class="item form-group">

                            <select name="branch">
                                <%
                                    try {
                                        java.sql.ResultSet rs = ssucb.dao.DBDAO.getInstance().getAllBranchNames();
                                %>
                                <option>Select Branch</option>
                                <%
                                    while (rs.next()) {
                                %>

                                <option><%=rs.getString(1)%></option>

                                <%                                }
                                    } catch (Exception e) {
                                        out.println("Error is" + e);
                                    }
                                %>
                            </select>
                        </div>

                        <div class="form-group">
                            <lable>Card Request</lable>
                            <select name="cardrequest">
                                <option>New</option>
                                <option>Replacement</option>
                            </select>

                        </div>







                </div>
                <div class="item form-group">
                    <label>Date</label>
                    <input type="date" name="date"  class="form-control col-md-7 col-xs-12"    required="required"/>
                </div>




            </div>


            <div class="item form-group">
                <input type="submit" name="s" id="submitbutton" value="Register"/>
            </div>
        </form>
    </div>
</div>
<div class="form">

</div>
</div>
</div></div></div></div>



<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

<script src="loginstyle/js/index.js"></script>
<script src="js/Validation/jquery.min.js"></script>
<script src="js/Validation/bootstrap.min.js"></script>
<script src="js/Validation/validator.js"></script>
<script src="js/Validation/custom.min.js"></script>
</body>
</html>
