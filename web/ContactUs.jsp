<%-- 
    Document   : ContactUs
    Created on : Jul 3, 2017, 6:05:49 PM
    Author     : KRISHNA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="MenuHeader.jsp"></jsp:include>
        </head>
        <body>

            <!-- Info Content - Section Title-->
            <div class="content_info-">
                <!-- Info Section title-->
                <div class="section-title-01">
                    <div class="container-fluid" style="background-image:url('Main/img/icon2/banner.jpg')">
                        <div class="row">
                            <div class="col-md-12">
                                <marquee>   <h3 style="margin-left:10px;">Contact Us </h3> </marquee>

                            </div>


                        </div>
                    </div>
                </div>

                <!-- breadcrumbs-->
                <div class="breadcrumbs breadcrumbs-sections">
                    <ul>
                        <li class="breadcrumbs-home">
                            <a href="#" title="Back To Home">
                                <i class="fa fa-home"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#">SSUCB</a>
                        </li>
                        <li>
                            /
                        </li>
                        <li>
                            Contact Us
                        </li>
                    </ul>
                </div>
                <!-- End breadcrumbs-->
            </div>
            <!-- End Info Content - Section Title-->



            <!-- Info Content - Boxes Services-->
            <div class="content_info">
                <div class="padding-top padding-bottom-mini">
                    <!-- Container Area - Boxes Services -->
                    <div class="container" style="margin-left:10%;">
                        <div class="row">
                            <div class="col-md-8  col-xs-12 col-sm-12">
                                <h3 style="margin-left:10%;">Contact Form</h3>
                                <p style="margin-left:10%;">   For detailed inquiries please fill out the contact form in its entirety and tell us more about your requirements. We will be revert back as early as possible. 
                                    We respect your privacy. The information provided will only be used to reply to your request. </p>

                                <div class="form-area">  
                                    <form role="form" action="AddContact.jsp" method="post">
                                        <br style="clear:both">
                                        <h3 style="margin-bottom: 25px; text-align: center;">Contact Form</h3>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="name" name="name" placeholder="Name" required>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="email" name="email" placeholder="Email" required>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="mobile" name="contact" placeholder="Mobile Number" required>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="subject" name="subject" placeholder="Subject" required>
                                        </div>
                                        <div class="form-group">
                                            <textarea class="form-control" type="textarea" name="message" id="message" placeholder="message" maxlength="140" rows="7"></textarea>
                                            <span class="help-block"><p id="characterLeft" class="help-block ">You have reached the limit</p></span>                    
                                        </div>

                                        <button   name="submit" class="btn btn-primary pull-right">Submit Form</button>
                                    </form>
                                </div>
                            </div>

                            <!-- Sidebars -->
                            <div class="col-md-4  col-xs-12 col-sm-12">
                                <!-- contact-list-->
                                <div class="contact-list-container" style="margin-left:10px;">
                                    <ul class="contact-list">
                                        <li>
                                            <h4><i class="fa fa-envelope-o"></i>Email:</h4>
                                            <a href="#"> ssucb.admin@gmail.com</a>
                                        </li>

                                        <li>
                                            <h4><i class="fa fa-fax"></i>Phones:</h4>
                                            <h5> 02457-237149/237330</h5>
                                        </li>

                                        <li>
                                            <h4><i class="fa fa-life-ring"></i>Address:</h4>
                                            <h5>  APMC Market, Jintur Dist: Parbhani<h5>
                                                    </li>
                                                    </ul>
                                                    </div>
                                                    <!-- End contact-list-->

                                                    <div class="row" style="margin-left:10px;">
                                                        <div class="col-md-12 ">
                                                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3758.2534884160086!2d76.67992201435874!3d19.616457686780098!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bd06fa1f0baf81d%3A0xe7dafb17027c2bd0!2sSundarlal+Sawji+Urban+Co-Op+Bank%2CHead+Office%2CJintur!5e0!3m2!1sen!2sin!4v1493816457914"  style="border:0" allowfullscreen></iframe>
                                                        </div>
                                                    </div>
                                                    <!--   <h4>Download Our App</h4>
                   
                                                    <!-- services-full-boxes-->
                                                    <!--   <div class="services-full-boxes">
                                                    <!-- full-box Item-->
                                                    <!--       <div class="full-box">
                                                               <div class="info-full-box">
                                                                   <a href="#">Download Android App</a>
                                                               </div>
                                                               <div class="icon-full-box">
                                                                   <i class="fa fa-android"></i>
                                                               </div>
                                                           </div> -->
                                                    <!-- End full-box  Item-->

                                                    <!-- full-box Item-->
                                                    <!-- <div class="full-box">
                                                         <div class="info-full-box">
                                                             <a href="#">Download Apple App</a>
                                                         </div>
                                                         <div class="icon-full-box">
                                                             <i class="fa fa-apple"></i>
                                                         </div>
                                                     </div>
                                                    <!-- End full-box  Item-->
                                                    <!--   </div> -->
                                                    <!-- End services-full-boxes-->
                                                    </div>

                                                    <!-- End Sidebars -->
                                                    </div>
                                                    </div>
                                                    <!-- End Container Area - Boxes Services -->
                                                    </div>
                                                    </div>
                                                    <!-- End Info Content - Boxes Services-->

                                                    <!-- Google Map --> 
                                                    <div class="container">



                                                    </div>
                                                    <!-- <div class="row">
                                    <div class="col-md-10 col-xs-8 col-sm-10">
                                                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3758.2534884160086!2d76.67992201435874!3d19.616457686780098!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bd06fa1f0baf81d%3A0xe7dafb17027c2bd0!2sSundarlal+Sawji+Urban+Co-Op+Bank%2CHead+Office%2CJintur!5e0!3m2!1sen!2sin!4v1493816457914" width="630" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                                                    </div>
                                                    <div class="col-md-2 col-xs-4 col-sm-2"> </div>
                                                    </div>  -->
                                                    </div>
                                                    <!-- End Google Map --> 
                                                    </div>
                                                    <!-- End content-central-->

                                                    <!-- Sponsors Container-->  
                                                    <div class="container wow fadeInUp">

                                                        <br>
                                                    </div>
                                                    <!-- End Sponsors Container-->  




                                                <jsp:include page="footer.jsp"></jsp:include>
                                                <jsp:include page="javascript.jsp"></jsp:include>
                                                </body>
                                                </html>
