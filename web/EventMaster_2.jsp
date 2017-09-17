<%-- 
    Document   : EventMaster
    Created on : Jul 3, 2017, 12:01:32 PM
    Author     : KRISHNA
--%>
<%@page import="ssucb.pojo.EvenMasterPojo"%>
<%@page  import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <jsp:include page="MenuHeader.jsp"></jsp:include>

        <jsp:useBean id="EventDao" class="ssucb.dao.EventMasterDAO"></jsp:useBean>
        </head>
        <body>



            <!-- Info Content - Section Title-->
            <div class="content_info-">
                <!-- Info Section title-->
                <div class="section-title-01">
                    <div class="container-fluid" style="background-image:url('Main/img/icon2/banner.jpg')">
                        <div class="row">
                            <div class="col-md-12">
                                <marquee>   <h3 style="margin-left:10px;">Events </h3> </marquee>

                            </div>


                        </div>
                    </div>
                </div>
                <!-- End Info Section Title-->


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
                                            <a href="#"><i class="fa fa-plus-circle"></i> View more</a>
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
                                            <a href="#"><i class="fa fa-plus-circle"></i> View more</a>
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
                                            <a href="#"><i class="fa fa-plus-circle"></i> View more</a>
                                        </div>
                                        <!--End Ingo Blog Post-->  
                                    </div>
                                    <!--End Item Blog Post-->  
                                </div>
                                <!--End Col Item Blog Post-->


                            <%

                                try {
                                    ArrayList al = EventDao.getAllEvent();
                                    ssucb.pojo.EvenMasterPojo ev = new ssucb.pojo.EvenMasterPojo();
                                    Iterator ir = al.iterator();
                                    while (ir.hasNext()) {
                                        ev = (EvenMasterPojo) ir.next();

                            %>

                            <div class="col-md-4">
                                <!--Item Blog Post-->
                                <div class="item-blog-post">
                                    <!--Head Blog Post-->
                                    <div class="head-item-blog-post">
                                        <i class="fa fa-cubes"></i>
                                        <h3><%=ev.getEventName()%></h3>
                                    </div>
                                    <!--End Head Blog Post-->  

                                    <!--Img Blog Post-->
                                    <div class="img-item-blog-post">
                                        <img src="img/Event/<%=ev.getFile()%>" alt="">
                                        <a href="img/Event/<%=ev.getFile()%>" rel="gallery_group" class="fancybox" title="Women's Day 2015"><div class="overlay"></div></a>
                                        <div class="post-meta">
                                            <ul>
                                                <li>
                                                    <i class="fa fa-user"></i>
                                                    <a href="#">Iwthemes</a>
                                                </li>

                                                <li>
                                                    <i class="fa fa-clock-o"></i>
                                                    <span><%=ev.getEdate()%></span>
                                                </li>

                                                <li>
                                                    <i class="fa fa-eye"></i>
                                                    <span><%=ev.getEtime()%></span>
                                                </li>
                                            </ul>                      
                                        </div>
                                    </div>
                                    <!--End Img Blog Post-->  

                                    <!--Ingo Blog Post-->
                                    <div class="info-item-blog-post">
                                        <p><%=ev.getEventDesc()%></p>
                                        <a href="#"><i class="fa fa-plus-circle"></i> View more</a>
                                    </div>
                                    <!--End Ingo Blog Post-->  
                                </div>
                                <!--End Item Blog Post-->  
                            </div>
                            <!--End Col Item Blog Post-->









                            <%

                                    }
                                } catch (Exception e) {

                                    System.out.println("Error is ==" + e);
                                }
                            %>
















                        </div>
                        <!--End Blog Post Items-->
                    </div>
                    <!-- End Container Blog Post -->
                </div>
                <!-- End Info Resalt-->
            </section>
            <!-- End Info Content Blog Post-->

            <jsp:include page="footer.jsp"></jsp:include>
            <jsp:include page="javascript.jsp"></jsp:include>
    </body>
</html>
