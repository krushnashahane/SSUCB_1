<%-- 
    Document   : photogallary
    Created on : Jul 3, 2017, 5:55:15 PM
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
                                 <marquee>   <h3 style="margin-left:10px;">Gallery</h3> </marquee>
                                    
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
                                Photo Gallery
                            </li>
                        </ul>
                    </div>
                    <!-- End breadcrumbs-->
                </div>
                <!-- End Info Content - Section Title-->

                <!-- Info Content - Gallery Items-->
                <div class="content_info">
                    <div class="paddings">  
                        <div class="container">
                            
                            <div class="portfolioFilter">
                                <a href="#" data-filter="*" class="">Show All</a>
                                <a href="#education" data-filter=".education">Education</a>
                                <a href="#events" data-filter=".events">Events</a>
                                <a href="#donations" data-filter=".donations">Donations</a>
                                <a href="#meetings" data-filter=".meetings">Meetings</a>
                            </div>

                            <div class="row portfolioContainer">
                                  <div class="col-md-4 education">
                                      <!-- Item Work -->
                                      <div class="item-gallery">
                                         <div class="head-gallery">
                                              <h4>Gallery March, 2015</h4>
                                         </div>
                                         <div class="hover">
                                             <img src="Main/img/gallery/1.jpg" alt="Image"/>                               
                                             <a href="Main/img/gallery/1.jpg" rel="gallery_group" class="fancybox" title="Image"><div class="overlay"></div></a>
                                          </div>                                   
                                          <div class="info-gallery">
                                            <!--  <p>The establishment of our agency, with two professional insurance agents.</p>  -->
                                              
                                          </div>  
                                      </div>  
                                      <!-- Item Work -->
                                  </div>

                                  <div class="col-md-4 events">
                                    <!-- Item Work -->
                                    <div class="item-gallery">
                                       <div class="head-gallery">
                                            <h4>Gallery June, 2015</h4>
                                       </div>
                                       <div class="hover">
                                           <img src="Main/img/gallery/2.jpg" alt="Image"/>                               
                                           <a href="Main/img/gallery/2.jpg" rel="gallery_group" class="fancybox" title="Image"><div class="overlay"></div></a>
                                        </div>                                   
                                        <div class="info-gallery">
                                          <!--  <p>Three new insurance agents in our team, 2.500 customers!</p>  -->
                                            
                                        </div>  
                                    </div>  
                                    <!-- Item Work -->
                                  </div>

                                  <div class="col-md-4 education">
                                    <!-- Item Work -->
                                    <div class="item-gallery">
                                       <div class="head-gallery">
                                            <h4>Gallery February, 2015</h4>
                                       </div>
                                       <div class="hover">
                                           <img src="Main/img/gallery/3.jpg" alt="Image"/>                               
                                           <a href="Main/img/gallery/3.jpg" rel="gallery_group" class="fancybox" title="Image"><div class="overlay"></div></a>
                                        </div>                                   
                                        <div class="info-gallery">
                                        <!--    <p>Moving to a new office in Boston. More than 5.000 customers.</p>   -->
                                            
                                        </div>  
                                    </div>  
                                    <!-- Item Work -->
                                  </div>

                                  <div class="col-md-4 meetings">
                                    <!-- Item Work -->
                                    <div class="item-gallery">
                                       <div class="head-gallery">
                                            <h4>Gallery March, 2015</h4>
                                       </div>
                                       <div class="hover">
                                           <img src="Main/img/gallery/4.jpg" alt="Image"/>                               
                                           <a href="Main/img/gallery/4.jpg" rel="gallery_group" class="fancybox" title="Image"><div class="overlay"></div></a>
                                        </div>                                   
                                        <div class="info-gallery">
                                         <!--   <p>The establishment of our agency, with two professional insurance agents.</p>  -->
                                           
                                        </div>  
                                    </div>  
                                    <!-- Item Work -->
                                  </div>

                                  <div class="col-md-4 donations">
                                    <!-- Item Work -->
                                    <div class="item-gallery">
                                       <div class="head-gallery">
                                            <h4>Gallery March, 2015</h4>
                                       </div>
                                       <div class="hover">
                                           <img src="Main/img/gallery/5.jpg" alt="Image"/>                               
                                           <a href="Main/img/gallery/5.jpg" rel="gallery_group" class="fancybox" title="Image"><div class="overlay"></div></a>
                                        </div>                                   
                                        <div class="info-gallery">
                                       <!--     <p>The establishment of our agency, with two professional insurance agents.</p>  -->
                                          
                                        </div>  
                                    </div>  
                                    <!-- Item Work -->
                                  </div>

                                  <div class="col-md-4 meetings">
                                    <!-- Item Work -->
                                    <div class="item-gallery">
                                       <div class="head-gallery">
                                            <h4>Gallery March, 2015</h4>
                                       </div>
                                       <div class="hover">
                                           <img src="Main/img/gallery/6.jpg" alt="Image"/>                               
                                           <a href="Main/img/gallery/6.jpg" rel="gallery_group" class="fancybox" title="Image"><div class="overlay"></div></a>
                                        </div>                                   
                                        <div class="info-gallery">
                                         <!--   <p>The establishment of our agency, with two professional insurance agents.</p>  -->
                                           
                                        </div>  
                                    </div>  
                                    <!-- Item Work -->
                                  </div>
                              </div>
                            </div>
                      </div>
                </div>
                <!-- End Info Content - Gallery Items-->
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
							 <h5><i style="color:red;" class="fa fa-map-marker fa-2x" aria-hidden="true"></i><b> APMC Market yard,<br> Jintur-431509, Maharastra </b> </h5>
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
        <jsp:include page="javascript.jsp"></jsp:include>
    </body>
</html>
