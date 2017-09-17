<%-- 
    Document   : index
    Created on : Jul 3, 2017, 1:05:18 PM
    Author     : KRISHNA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="MenuHeader.jsp"></jsp:include>
        <link href="Main/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="Main/css/style_2.css" rel="stylesheet" type="text/css" media="all" />
        <link href="Main/css/bankBanner.css" rel="stylesheet" type="text/css" media="all" />

        <!-- gif -->
        <!-- <link rel="stylesheet prefetch" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">  -->
        <link rel="stylesheet prefetch" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.1/animate.min.css">
        <link href="Main/css/gif.css" rel='stylesheet' type='text/css' />







        <!-- Head Libs -->
        <!--   <script src="js/libs/modernizr.js"></script>
   
        <!--[if IE]>
            <link rel="stylesheet" href="css/ie/ie.css">
        <![endif]-->

        <!--[if lte IE 8]>
            <script src="js/responsive/html5shiv.js"></script>
            <script src="js/responsive/respond.js"></script>
        <![endif]-->

        <!-- new banner -->
        <style>
            /* makes images responsive */
            img {
                max-width: 100%;
            }

            /* takes care of clearing the floats */
            #slideshow:after {
                content: "";
                display: table;
                clear: both;
            }

            /* hides the images not being shown */
            #slideshow img {
                float: left;
                margin: 0 -100% 0 0;
            }
        </style>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script>
            $(function() {
                $('#slideshow img:gt(0)').hide();
                setInterval(function() {
                    $('#slideshow :first-child')
                    .fadeOut(1000)
                    .next('img')
                    .fadeIn(1000)
                    .end()
                    .appendTo('#slideshow');
                }, 4000);
            });
        </script>

    </head>
    <body>




        <div class="container-fluid" style="background-image:url('Main/img/newbackground.jpg')">
            <div class="row">
                <!-- new banner -->

                <div id="view" style="width:350px; height:350px; margin:80px auto 0 auto;">
                    <div id="box">
                        <div class="one"><img src="Main/img/banner1.png"></div>
                        <div class="two"><img src="Main/img/logo.png"></div>
                        <div class="three"><img src="Main/img/banner1.png"></div>
                        <div class="four"><img src="Main/img/logo.png"></div>
                        <div class="five"><img src="Main/img/banner1.png"></div>
                        <div class="six"><img src="Main/img/logo.png"></div>
                    </div>
                </div>

            </div>
        </div> 

        <jsp:include page="indexSlideMenu.jsp"></jsp:include>

        <!-- Col boxes-services -->
        <section class="col-sm-9 ">
            <!-- boxes-services -->

            <div class="content">
                <div class="">					
                    <div class="content-grids ">
                        <div class="col-sm-3  wel-grid text-center wow flipInY" data-wow-duration="1.5s" data-wow-delay="0.1s">
                            <div class="btm-clr4">

                                <figure class="icon">
                                    <!--<i class="fa fa-university fa-3x"></i> -->
                                    <a href="Deposit.jsp"><img src="Main/img/icon2/Deposit-Money-Icon.png"  /></a>
                                </figure>
                                <h3 style="font-size:18px;">Deposit</h3>
                            </div>
                        </div>
                        <div class="col-sm-3 wel-grid btm-gre text-center wow flipInY" data-wow-duration="1.5s" data-wow-delay="0.1s">
                            <div class="btm-clr4 btm-clr1">

                                <figure class="icon">
                                    <!-- <i class="glyphicon glyphicon-send fa-3x"></i>   -->
                                    <a href="Depositinterest.jsp"><img src="Main/img/icon2/fixdeposit3.jpg"  /></a>
                                </figure>
                                <h3 style="font-size:18px;">Fixed Deposit </h3>
                            </div>
                        </div>
                        <div class="col-sm-3 wel-grid text-center wow flipInY" data-wow-duration="1.5s" data-wow-delay="0.1s">
                            <div class="btm-clr4 btm-clr1">

                                <figure class="icon">
                                    <!--	<i class="fa fa-group fa-3x"></i>  -->
                                    <a href="Depositinterest.jsp"><img src="Main/img/icon2/savings1.jpg"  /></a>
                                </figure>
                                <h3 style="font-size:18px;">Savings Deposit </h3>
                            </div>
                        </div>
                        <div class="col-sm-3 wel-grid btm-gre text-center wow flipInY" data-wow-duration="1.5s" data-wow-delay="0.1s">
                            <div class="btm-clr btm-clr3">

                                <figure class="icon">
                                    <!-- <i class="fa fa-user fa-3x"></i>  -->  
                                    <a href="Depositinterest.jsp"> <img src="Main/img/icon2/recurring0.png"  /></a>
                                </figure>
                                <h3 style="font-size:18px;">Recurring Deposit </h3>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>

                    <div class="content-grids ">
                        <div class="col-sm-3 wel-grid text-center wow flipInY" data-wow-duration="1.5s" data-wow-delay="0.1s">
                            <div class="btm-clr4">

                                <figure class="icon">
                                    <!--<i class="fa fa-university fa-3x"></i> -->
                                    <a href="LoanInterest.jsp">  <img src="Main/img/icon2/commercial.png"  /></a>
                                </figure>
                                <h3 style="font-size:18px;">Commercial Loan</h3>
                            </div>
                        </div>
                        <div class="col-sm-3 wel-grid btm-gre text-center wow flipInY" data-wow-duration="1.5s" data-wow-delay="0.1s">
                            <div class="btm-clr4 btm-clr1">

                                <figure class="icon">
                                    <!-- <i class="glyphicon glyphicon-send fa-3x"></i>   -->
                                    <a href="LoanInterest.jsp">  <img src="Main/img/icon2/vehicle.png"  /></a>
                                </figure>
                                <h3 style="font-size:18px;">Vehicle Loan </h3>
                            </div>
                        </div>
                        <div class="col-sm-3 wel-grid text-center wow flipInY" data-wow-duration="1.5s" data-wow-delay="0.1s">
                            <div class="btm-clr4 btm-clr1">

                                <figure class="icon">
                                    <!--	<i class="fa fa-group fa-3x"></i>  -->
                                    <a href="LoanInterest.jsp"> <img src="Main/img/icon2/Goldloan.png"  /></a>
                                </figure>
                                <h3 style="font-size:18px;">Gold Loan </h3>
                            </div>
                        </div>
                        <div class="col-sm-3 wel-grid btm-gre text-center wow flipInY" data-wow-duration="1.5s" data-wow-delay="0.1s">
                            <div class="btm-clr btm-clr3">

                                <figure class="icon">
                                    <!-- <i class="fa fa-user fa-3x"></i>  -->  
                                    <a href="LoanInterest.jsp">  <img src="Main/img/icon2/home.png"  /></a>
                                </figure>
                                <h3 style="font-size:18px;">Home Loan </h3>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>					



                </div>
            </div>


            <!-- End boxes-services -->
        </section>
        <!-- End Col boxes-services -->

        <!--Aside - mini and full boxes -->

    </div>
    <!-- End Aside - mini and full boxes -->
</div>
<!--      </div> -->
<!-- End Container Area - Boxes Services -->
<!--  </div> -->
</div>   
<!-- End Info Content - Boxes Services-->





<!-- End Info Content Blog Post-->
<section class="content_info">
    <!-- Info Resalt-->
    <div class="content_resalt padding-bottom borders">
        <!-- title-vertical-line-->
        <div class="title-vertical-line">
            <h2><span>News</span> & Events</h2>
            <p class="lead">Updated news related to our bank.</p>
        </div>
        <!-- End title-vertical-line-->

        <!-- Container Blog Post -->
        <div class="container">
            <!--Blog Post Items-->
            <div class="row padding-top">
                <!--Col Item Blog Post-->
                <div class="col-md-4">
                    <!--Item Blog Post-->
                    <div class="item-blog-post">
                        <!--Head Blog Post-->
                        <div class="head-item-blog-post">
                            <i class="fa fa-cubes"></i>
                            <h3>Women's Day 2015</h3>
                        </div>
                        <!--End Head Blog Post-->  

                        <!--Img Blog Post-->
                        <div class="img-item-blog-post">
                            <img src="Main/img/blog-img/thumbs/1.jpg" alt="">
                            <a href="Main/img/blog-img/thumbs/1.jpg" rel="gallery_group" class="fancybox" title="Women's Day 2015"><div class="overlay"></div></a>
                            <div class="post-meta">
                                <ul>
                                    <li>
                                        <i class="fa fa-user"></i>
                                        <a href="#">Iwthemes</a>
                                    </li>

                                    <li>
                                        <i class="fa fa-clock-o"></i>
                                        <span>April 23, 2015</span>
                                    </li>

                                    <li>
                                        <i class="fa fa-eye"></i>
                                        <span>234 Views</span>
                                    </li>
                                </ul>                      
                            </div>
                        </div>
                        <!--End Img Blog Post-->  

                        <!--Ingo Blog Post-->
                        <div class="info-item-blog-post">
                            <p>Find all the support and information they need to make all decisions about saving for your future.</p>
                            <a href="EventMaster_1.jsp"><i class="fa fa-plus-circle"></i> View more</a>
                        </div>
                        <!--End Ingo Blog Post-->  
                    </div>
                    <!--End Item Blog Post-->  
                </div>
                <!--End Col Item Blog Post-->

                <!--Col Item Blog Post-->
                <div class="col-md-4">
                    <!--Item Blog Post-->
                    <div class="item-blog-post">
                        <!--Head Blog Post-->
                        <div class="head-item-blog-post">
                            <i class="fa fa-cubes"></i>
                            <h3>Award Function</h3>
                        </div>
                        <!--End Head Blog Post-->  

                        <!--Img Blog Post-->
                        <div class="img-item-blog-post">
                            <img src="Main/img/blog-img/thumbs/2.jpg" alt="">
                            <a href="Main/img/blog-img/thumbs/2.jpg" rel="gallery_group" class="fancybox" title="Award Function"><div class="overlay"></div></a>
                            <div class="post-meta">
                                <ul>
                                    <li>
                                        <i class="fa fa-user"></i>
                                        <a href="#">Iwthemes</a>
                                    </li>

                                    <li>
                                        <i class="fa fa-clock-o"></i>
                                        <span>April 23, 2015</span>
                                    </li>

                                    <li>
                                        <i class="fa fa-eye"></i>
                                        <span>234 Views</span>
                                    </li>
                                </ul>                      
                            </div>
                        </div>
                        <!--End Img Blog Post-->  

                        <!--Ingo Blog Post-->
                        <div class="info-item-blog-post">
                            <p>Meet here all our range of products and services, rules of our products and everything related to your savings in pension.</p>
                            <a href="EventMaster_1.jsp"><i class="fa fa-plus-circle"></i> View more</a>
                        </div>
                        <!--End Ingo Blog Post-->  
                    </div>
                    <!--End Item Blog Post-->  
                </div>
                <!--End Col Item Blog Post-->

                <!--Col Item Blog Post-->
                <div class="col-md-4">
                    <!--Item Blog Post-->
                    <div class="item-blog-post">
                        <!--Head Blog Post-->
                        <div class="head-item-blog-post">
                            <i class="fa fa-cubes"></i>
                            <h3>Women's Day 2014</h3>
                        </div>
                        <!--End Head Blog Post-->  

                        <!--Img Blog Post-->
                        <div class="img-item-blog-post">
                            <img src="Main/img/blog-img/thumbs/3.jpg" alt="">
                            <a href="Main/img/blog-img/thumbs/3.jpg" rel="gallery_group" class="fancybox" title="Women's Day 2014"><div class="overlay"></div></a>
                            <div class="post-meta">
                                <ul>
                                    <li>
                                        <i class="fa fa-user"></i>
                                        <a href="#">Iwthemes</a>
                                    </li>

                                    <li>
                                        <i class="fa fa-clock-o"></i>
                                        <span>March 15, 2014</span>
                                    </li>

                                    <li>
                                        <i class="fa fa-eye"></i>
                                        <span>234 Views</span>
                                    </li>
                                </ul>                      
                            </div>
                        </div>
                        <!--End Img Blog Post-->  

                        <!--Ingo Blog Post-->
                        <div class="info-item-blog-post">
                            <p>Accompany relevant share you mean, renewed and information of interest to learn to save you and your projects come true.</p>
                            <a href="EventMaster_1.jsp"><i class="fa fa-plus-circle"></i> View more</a>
                        </div>
                        <!--End Ingo Blog Post-->  
                    </div>
                    <!--End Item Blog Post-->  
                </div>
                <!--End Col Item Blog Post-->

            </div>
            <!--End Blog Post Items-->
        </div>
        <!-- End Container Blog Post -->
    </div>
    <!-- End Info Resalt-->
</section>
<!-- End Info Content Blog Post-->


<!-- Info Content  - Clients Downloads Area -->
<div class="parallax-window" data-parallax="scroll" data-image-src="img/parallax-img/parallax-01.jpg">
    <!-- Content Parallax-->
    <div class="opacy_bg_02 ">
        <div class="">
            <div class="">


                <div class="content">
                    <div class="container">					
                        <div class="content-grids ">
                            <div class="col-md-3 wel-grid text-center wow flipInY" data-wow-duration="1.5s" data-wow-delay="0.1s">
                                <div class="btm-clr4">

                                    <figure class="icon">
                                        <i class="fa fa-university fa-3x"></i>
                                    </figure>

                                    <h4>Since 1965</h4>
                                </div></a>
                            </div>
                            <div class="col-md-3 wel-grid btm-gre text-center wow flipInY" data-wow-duration="1.5s" data-wow-delay="0.1s">
                                <div class="btm-clr4 btm-clr1">

                                    <figure class="icon">
                                        <i class="glyphicon glyphicon-send fa-3x"></i>
                                    </figure>
                                    <h4>24 Branches </h4>
                                </div>
                            </div>
                            <div class="col-md-3 wel-grid text-center wow flipInY" data-wow-duration="1.5s" data-wow-delay="0.1s">
                                <div class="btm-clr4 btm-clr1">

                                    <figure class="icon">
                                        <i class="fa fa-group fa-3x"></i>
                                    </figure>
                                    <h4>Strong Customer Base </h4>
                                </div>
                            </div>
                            <div class="col-md-3 wel-grid btm-gre text-center wow flipInY" data-wow-duration="1.5s" data-wow-delay="0.1s">
                                <div class="btm-clr btm-clr3">

                                    <figure class="icon">
                                        <i class="fa fa-user fa-3x"></i>
                                    </figure>
                                    <h4>Supportive Staff </h4>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>



                        <!-- subtitle-downloads --> 
                        <div class="subtitle-downloads">
                            <h4>We Provide Best Service   </h4>
                        </div> 
                        <!-- End subtitle-downloads --> 

                        <!-- End Image Clients Downloads -->   
                    </div>
                </div> 
            </div>  
            <!-- End Content Parallax--> 
        </div>
    </div>
</div>

<!-- End Info Content  - Clients Downloads Area -->

<!-- End Info Content Process-->
</div>
<!-- End content-central-->

<!-- Sponsors Container-->  
<div class="container wow fadeInUp">
    <div class="row">
        <div class="col-md-12">
            <!-- Sponsors Zone-->     
            <ul class="owl-carousel carousel-sponsors tooltip-hover" id="carousel-sponsors">
                <li data-toggle="tooltip" title data-original-title="Name Sponsor">
                    <!--  <a href="#"  class="tooltip_hover" title="Name Sponsor"><img src="img/sponsors/1.png" alt="Image"></a> -->
                    <h5> <a href="<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3758.2534884160086!2d76.67992201435874!3d19.616457686780098!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bd06fa1f0baf81d%3A0xe7dafb17027c2bd0!2sSundarlal+Sawji+Urban+Co-Op+Bank%2CHead+Office%2CJintur!5e0!3m2!1sen!2sin!4v1493816457914" width="1230" height="450" frameborder="0" style="border:0" allowfullscreen></iframe> <i style="color:red;" class="fa fa-map-marker fa-2x" aria-hidden="true"></i><b> APMC Market yard,<br> Jintur-431509, Maharastra </b> </h5>
                    </a>

                </li>
                <li data-toggle="tooltip" title data-original-title="Name Sponsor">
                    <!-- <a href="#"  class="tooltip_hover" title="Name Sponsor"><img src="img/sponsors/2.png" alt="Image"></a>  -->
                    <h5 style="color:blue;"><i style="color:#ff9b00;" class="fa fa-map-marker fa-2x" aria-hidden="true"></i><b>  Main Road, Jintur Di. Parbhani
                            Pin:- 431509   Maharashtra </b> </h5>
                </li>
                <li data-toggle="tooltip" title data-original-title="Name Sponsor">
                    <!--   <a href="#"  class="tooltip_hover" title="Name Sponsor"><img src="img/sponsors/3.png" alt="Image"></a> --> 
                    <h5 style="color:#d10f02;"><i style="color:#cddb06;" class="fa fa-map-marker fa-2x" aria-hidden="true"></i><b>  Akola Road, Hingoli
                            Dist. Hingoli,<br> Pin:- 431513 Maharashtra </b> </h5>



                </li>
                <li data-toggle="tooltip" title data-original-title="Name Sponsor">
                    <!--   <a href="#"  class="tooltip_hover" title="Name Sponsor"><img src="img/sponsors/4.png" alt="Image"></a>  -->
                    <h5 style="color:#c70b9f;"><i style="color:#071892;" class="fa fa-map-marker fa-2x" aria-hidden="true"></i><b>  Nagar Parishad Complex, Basmat
                            <br> Pin:- 431512 Maharashtra </b> </h5>

                </li>
                <li data-toggle="tooltip" title data-original-title="Name Sponsor">
                    <!-- <a href="#"  class="tooltip_hover" title="Name Sponsor"><img src="img/sponsors/5.png" alt="Image"></a>  -->
                    <h5 style="color:#e7d503;"><i style="color:#e76203;" class="fa fa-map-marker fa-2x" aria-hidden="true"></i><b>  Subhash Road, Parbhani
                            <br> Pin:- 431401 Maharashtra </b> </h5>


                </li>
                <li data-toggle="tooltip" title data-original-title="Name Sponsor">
                    <!--  <a href="#"  class="tooltip_hover" title="Name Sponsor"><img src="img/sponsors/6.png" alt="Image"></a>  -->
                    <h5 style="color:black;"><i style="color:blue;" class="fa fa-map-marker fa-2x" aria-hidden="true"></i><b>  Main Road, Sengaon <br>
                            Tal. Sengaon Dist. Hingoli

                            <br> Pin:- 431513, Maharashtra  </b> </h5>
                </li>
                <li data-toggle="tooltip" title data-original-title="Name Sponsor">
                    <!--  <a href="#"  class="tooltip_hover" title="Name Sponsor"><img src="img/sponsors/7.png" alt="Image"></a>  -->
                    <h5 style="color:#db0856;"><i style="color:#239d05;" class="fa fa-map-marker fa-2x" aria-hidden="true"></i><b>  Near Post Office Karanja <br> Dist. Washim 
                            <br> Pin:- 444105   Maharashtra  </b> </h5>

                </li>
                <li data-toggle="tooltip" title data-original-title="Name Sponsor">
                    <!--  <a href="#"  class="tooltip_hover" title="Name Sponsor"><img src="img/sponsors/8.png" alt="Image"></a>  -->
                    <h5 style="color:#ec870a;"><i style="color:#10da8f;" class="fa fa-map-marker fa-2x" aria-hidden="true"></i><b>    Mama Chowk Jalna, Dist. Jalna 

                            <br> Pin:- 431203   Maharashtra   </b> </h5>
                </li>                                       
            </ul> 
            <!-- End Sponsors Zone-->    
        </div>                    
    </div>
</div>
<!-- End Sponsors Container-->  
<jsp:include page="footer.jsp"></jsp:include>





















<!-- ======================= JQuery libs =========================== -->
<!-- jQuery local--> 
<script src="Main/js/libs/jquery.js"></script>  
<script src="Main/js/libs/jquery-ui.1.10.4.min.js"></script>                
<!--Totop-->
<script type="text/javascript" src="Main/js/totop/jquery.ui.totop.js" ></script>   
<!--Slide Revolution-->
<script type="text/javascript" src="Main/js/rs-plugin/js/jquery.themepunch.tools.min.js" ></script>      
<script type='text/javascript' src='Main/js/rs-plugin/js/jquery.themepunch.revolution.min.js'></script>    
<!-- Maps -->
<script src="Main/js/maps/gmap3.js"></script>            
<!--Ligbox--> 
<!-- <script type="text/javascript" src="js/fancybox/jquery.fancybox.js"></script> -->
<!-- owl.carousel.min.js-->
<script src="Main/js/carousel/owl.carousel.min.js"></script>
<!-- Filter -->
<script src="Main/js/filters/jquery.isotope.js" type="text/javascript"></script>
<!-- Parallax-->
<script type="text/javascript" src="Main/js/parallax/parallax.min.js"></script>  
<!--Theme Options-->
<script type="text/javascript" src="Main/js/theme-options/theme-options.js"></script>
<script type="text/javascript" src="Main/js/theme-options/jquery.cookies.js"></script> 
<!-- Bootstrap.js-->
<script type="text/javascript" src="Main/js/bootstrap/bootstrap.js"></script> 
<script type="text/javascript" src="Main/js/bootstrap/bootstrap-slider.js"></script> 
<!--MAIN FUNCTIONS-->
<script type="text/javascript" src="Main/js/main.js"></script>
<!-- ======================= End JQuery libs =========================== -->

<!--Slider Function-->
<script type="text/javascript">
    jQuery(document).ready(function() {
        jQuery('.tp-banner').show().revolution({
            dottedOverlay:"none",
            delay:5000,
            startwidth:1170,
            startheight:490,
            minHeight:350,
            navigationType:"none",
            navigationArrows:"solo",
            navigationStyle:"preview"
        });             
    }); //ready
			
    $('#carousel-example-generic').on('slide.bs.carousel', function() {
        if ($('.carousel-inner .item:last').hasClass('active')) {
     
            $('.carousel-inner .item:first').addClass('animated zoomInDown');
        } else {
            $('.item.active').next().addClass('animated zoomInDown');
        }
        $('.item.active').addClass('animated zoomOutDown');
    });

    $('#carousel-example-generic').on('slid.bs.carousel', function() {
        $('.item').removeClass('animated zoomInDown zoomOutDown')
    });

    $('.left').click(function() {
        if ($('.carousel-inner .item:first').hasClass('active')) {
            $('.carousel-inner .item:last').addClass('animated zoomInDown');
        } else {
            $('.item.active').prev().addClass('animated zoomInDown');
        }
    });

    $('.carousel-indicators > li').click(function() {
        $('.item').addClass('animated zoomInDown');
    });    
    
</script>	
<script>

    $('#carousel-example-generic').on('slide.bs.carousel', function() {
        if ($('.carousel-inner .item:last').hasClass('active')) {
     
            $('.carousel-inner .item:first').addClass('animated zoomInDown');
        } else {
            $('.item.active').next().addClass('animated zoomInDown');
        }
        $('.item.active').addClass('animated zoomOutDown');
    });

    $('#carousel-example-generic').on('slid.bs.carousel', function() {
        $('.item').removeClass('animated zoomInDown zoomOutDown')
    });

    $('.left').click(function() {
        if ($('.carousel-inner .item:first').hasClass('active')) {
            $('.carousel-inner .item:last').addClass('animated zoomInDown');
        } else {
            $('.item.active').prev().addClass('animated zoomInDown');
        }
    });

    $('.carousel-indicators > li').click(function() {
        $('.item').addClass('animated zoomInDown');
    });    
    
</script>    



<!--End Slider Function-->



</body>
</html>
