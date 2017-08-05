<!DOCTYPE html>
<html >
    <head>
        <meta charset="UTF-8">
        <title>SSUCB</title>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

        <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
        <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

        <link rel="stylesheet" href="loginstyle/css/style.css">


    </head>

    <body>

        <!-- Form Mixin-->
        <!-- Input Mixin-->
        <!-- Button Mixin-->
        <!-- Pen Title-->
        <div class="pen-title">
            <h1>Admin Login Form</h1><span>
        </div>
        <!-- Form Module-->
        <div class="module form-module">
            <div class="toggle"><i class="fa fa-times fa-pencil"></i>

            </div>
            <div class="form">
                <h2>Login to your account</h2>
                <form action="AdminValidate.jsp" method="post" class="form-horizontal form-label-left" novalidate>
                    <div class="item form-group">
                        <input type="text" name="email" id="email" placeholder="Enter Email-ID" required="required"/>
                    </div><div class="item form-group"><input type="password" name="password" id="telephone"  placeholder="Password" data-validate-length-range="8,20" class="form-control col-md-7 col-xs-12" required="required"/>

                    </div><div class="item form-group"> <input type="submit" name="s" id="submitbutton" value="Login"/>
                    </div></form>
                    <%
                        String button = request.getParameter("s");
                        if (button != null) {
                            String email = request.getParameter("email");
                            String password = request.getParameter("password");
                            if (email.equals("admin@gmail.com") && password.equals("admin")) {
                                session.setAttribute("username", "admin@gmail.com");

                                response.sendRedirect("adminmaster.jsp");
                            } else {
                                response.sendRedirect("adminlogin.jsp");

                            }
                        }
                    %>
            </div>

            <script src="js/Validation/jquery.min.js"></script>
            <script src="js/Validation/bootstrap.min.js"></script>
            <script src="js/Validation/validator.js"></script>
            <script src="js/Validation/custom.min.js"></script>
    </body>
</html>
