<%-- 
    Document   : Depositinterest
    Created on : Jul 3, 2017, 6:16:15 PM
    Author     : KRISHNA
--%>


<%@page import="ssucb.pojo.LoanInterestType"%>
<%@page import="ssucb.pojo.LoanInterest"%>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="MenuHeader.jsp"></jsp:include>
        <jsp:useBean id="LoanDao" class="ssucb.dao.LoanInterestDao"></jsp:useBean>
        <jsp:useBean id="lt" class="ssucb.pojo.LoanInterestType"></jsp:useBean>    
        <jsp:useBean id="l" class="ssucb.pojo.LoanInterest"></jsp:useBean>
    </head>

        <body>

            <!-- Info Content - Section Title-->
            <div class="content_info">
                <!-- Info Section title-->
                <div class="section-title-01">
                    <div class="container-fluid" style="background-image:url('Main/img/icon2/banner.jpg')">
                        <div class="row">
                            <div class="col-md-7">
                                <marquee>  <h3 style="margin-left:10px;">LOAN INTEREST RATES</h3> </marquee>

                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Info Section Title-->

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
                            <a href="#">LOAN INTEREST RATES</a>
                        </li>
                        <li>
                            /
                        </li>
                        <li>

                        </li>
                    </ul>
                </div>
                <!-- End breadcrumbs-->
            </div>
            <!-- End Info Content - Section Title-->
        <jsp:include page="SideMenuHeader.jsp"></jsp:include>

            <div class="col-md-9 col-xs-10" style="overflow-x:scroll; overflow-y:Auto; " >
                <div class="title-subtitle">
                    <div class="" style="margin-left:5%; ">
                        <h3 style="color:#b80108;"><span>Loan Interest</span> Rates</h3>
                        <p class="lead">"Sundarlal Sawji Urban Co-op Bank offering excited interest rate on Loans."</p>
                    </div>
                    <table class="table table-bordered" style="font-size:16px;margin-left:5%; width:90%; ">
                        <thead style="font-size:16px;background-color:#49b7fb; ">
                            <!--    <tr>
                                  <th class="" style="font-size:16px;  " >Particulars   </th>
                                  <th class="" style="font-size:16px; " >Credit Society & <br> Bank</th>
                                  <th class="" style="font-size:16px; " >General</th>
                               
                                </tr>  -->
                        </thead>
                        <tbody style="font-size:16px; color:white;" style="font-size:16px; " >
                            <TR><TD width="10" align="center" height="1" dir="ltr"><b> <font face="Arial" size="2" color="#A52A2A"><span lang="en-us">Sr. No.</span></font></b></TD>
                                <TD width="520" align="center" height="1"><b><span lang="en-us"> <font face="Arial" size="2" color="#A52A2A"><b> Particulars</b></font></span></b></TD>
                                <TD width="230" align="center" height="1" colspan="2"><b><span lang="en-us"> <font face="Arial" size="2" color="#A52A2A">
                                            Rate of Interest<BR> Revised</font></span></b></TD>
                            </TR>


                            
                            
                            <%
                            
                            java.util.ArrayList<LoanInterestType> al=LoanDao.GetAllLoanInterestType();
                            java.util.Iterator ir=al.iterator();
                            while(ir.hasNext()){
                                lt=(LoanInterestType)ir.next();
                            %>

                            <tr style="background-color:rgb(32, 93, 177)">
                                <td width="40" align="center" height="18"  dir="ltr">
                                    <b><font color="white" size="2" face="Arial"><%=lt.getLitid()%></font></b></td>
                                <td  style="width:539;text-align:left;height:18;colspan:4;">
                                    <b><font color="white" size="2" face="Arial">&nbsp;
                                        <%=lt.getType()%></span></font></b></td>
                                <td style=""></td>
                            </tr>
                            <%
                            ArrayList<LoanInterest> a=LoanDao.GetLoanInterestByLitid(lt.getLitid());
                            Iterator i=a.iterator();
                            while(i.hasNext()){
                            l=(LoanInterest)i.next();
                            %>
                            
                            
                            <tr>
                                <td width="40" align="center" height="25" dir="ltr">&nbsp;</td>
                                <td width="302" align="left" height="25"><b>
                                        <font face="Arial" size="2" color="#333399">&nbsp;&gt; <%=l.getPerticulars()%></font></b></td>
                                <td width="65" align="center" height="25"><b>
                                        <font face="Arial" size="2" color="#333399"><%=l.getRoi()%></font></b></td>
                            </tr>

                            
                            
                            <%
                            }
                            }
                            %>
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                           


                            <tr>
                                <td width="602" align="center" height="25" dir="ltr" colspan="5"><br>
                                    <p align="left" style="margin-top: 0"; margin-bottom:0" ><b> <font face="Arial" size="2" color="#993300"> <span lang="en-us">Note :</span></font></b></p>
                                    <p align="left" style="margin-top:0; margin-bottom:1"><span lang="en-us"><font face="Arial" size="2" color="#000080">
                                            <b>&nbsp;(1) All rates are subject to revision from time to time.</b></span></font>


                                    <p align="left" style="margin-top: 3; margin-bottom: 0"><b><span lang="en-us"><font face="Arial" size="2" color="#000080">&nbsp;(2) Terms and conditions applied</font></span></b>

                                        <br><br>


                            </tr>



                        </tbody>
                    </table>  


                </div> 
            </div>

            <!-- Sidebars-->

            <!-- End  Sidebars-->
        </div>
    </div>
    <!-- End events Container--> 
</div>
</div>
<!-- End Info Content - Events Items-->
</div>
<!-- End content-central-->

<jsp:include page="footer.jsp"></jsp:include>
<jsp:include page="javascript.jsp"></jsp:include>
</body>
</html>
