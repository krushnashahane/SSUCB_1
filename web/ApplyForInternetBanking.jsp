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
                       <form name="frm" action="CustomerRegisterUpload.jsp" method="post" class="form-horizontal form-label-left" novalidate>
                    <div class="item form-group">
                    <input type="text" name="name" id="name" class="form-control col-md-7 col-xs-12"  data-validate-length-range="6" data-validate-words="2" placeholder="Name" required="required"/>
                    </div>
                      <div class="item form-group">
                    <input type="email" name="email" id="email" placeholder=" Email" required="required"/>
                      </div>
                      <div class="item form-group">
                          <input type="number"  name="contact" id="telephone" data-validate-minmax="10,100" required="required" placeholder="Contact"/>
                      </div>
                      <div class="item form-group">
                    <input type="text" name="address" id="address" placeholder=" Address"required="required"/>
                  
                      </div>
                      <div class="item form-group">
                    <select name="type">
                        <option>Select Account Type</option>
                        <option>Current</option>
                        <option>Saving</option>
                    </select>

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
                    
        <%
            String button = request.getParameter("s");
            if (button != null) {
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


        %>
        <div id="saveMessage">Customer Register Success..................</div>

        <%                  } else {
        %>
        <div class="cta"><a href="">Customer Registration Failed..................</a></div>

        <%                          }

            }

        %>

        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="loginstyle/js/index.js"></script>
        <script src="js/Validation/jquery.min.js"></script>
        <script src="js/Validation/bootstrap.min.js"></script>
        <script src="js/Validation/validator.js"></script>
        <script src="js/Validation/custom.min.js"></script>
    </body>
</html>
