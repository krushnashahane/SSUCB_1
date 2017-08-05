<!DOCTYPE html>
<html >
    <head>
        <meta charset="UTF-8">
        <title>SSUCB</title>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

        <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
        <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

        <link rel="stylesheet" href="loginstyle/css/style.css">

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

        <!-- Form Mixin-->
        <!-- Input Mixin-->
        <!-- Button Mixin-->
        <!-- Pen Title-->
        <div class="pen-title">
            <h1>Apply for New Account</h1>
        </div>
        <!-- Form Module-->
        <div class="module form-module">
            <div class="toggle"><i class="fa fa-times fa-pencil"></i>
                <div class="tooltip">Click  For  New Account</div>
            </div>
            <div class="form">
                <h2>Login to your account</h2>
                 <div class="x_content">
                <form name="frm" action="customerlogin.jsp" method="post" class="form-horizontal form-label-left" novalidate>
                   <div class="item form-group">
                    <input type="email" name="email" id="email" placeholder="Enter Email-ID" required="required"/>
                   </div> <div class="item form-group">
                       <input type="password"  name="pword"  id="telephone"  placeholder="Password" data-validate-length-range="8,20" class="form-control col-md-7 col-xs-12" required="required"/>
                   </div>
                     <div class="item form-group">
                    <button>Login</button>
                     </div>
                </form>
                 </div>
                <div class="cta"><a href="">Forgot your password?</a></div>
            </div>
            
            
            
            
               <script src="js/Validation/jquery.min.js"></script>
        <script src="js/Validation/bootstrap.min.js"></script>
        <script src="js/Validation/validator.js"></script>
        <script src="js/Validation/custom.min.js"></script>
        </body>
        </html>