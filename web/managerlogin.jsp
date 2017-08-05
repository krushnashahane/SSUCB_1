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
            <h1>Manager Login Form</h1><span>
        </div>
        <!-- Form Module-->
        <div class="module form-module">
            <div class="toggle"><i class="fa fa-times fa-pencil"></i>

            </div>
            <div class="form">
                <h2>Login to your account</h2>
                <form action="" method="post">
                    <input type="text" name="email" placeholder="Email"/>
                    <input type="password" name="password" placeholder="Password"/>
                    <input type="submit" name="s" id="submitbutton" value="Login"/>
                </form>
                <%
                    String button = request.getParameter("s");
                    if (button != null) {
                        String email = request.getParameter("email");
                        String password = request.getParameter("password");
                        try {
                            out.println(email);
                            out.println("<br>" + password);
                            ssucb.dao.ValidateDAO v = new ssucb.dao.ValidateDAO();
                            java.sql.ResultSet rs = v.isManagerValidate(email, password);
                            //   out.println("Success");
                            if (rs.next()) {
                                out.println("success");
                                int managerid = rs.getInt(1);
                                String managername = rs.getString(2);
                                session.setAttribute("managerid", managerid);
                                session.setAttribute("managername", managername);
                %>
                <jsp:forward page="managerheader.jsp"/>
                <%
                            }
                        } catch (Exception e) {
                            out.println("Error is " + e);
                        }
                    }
                %>
            </div>


    </body>
</html>
