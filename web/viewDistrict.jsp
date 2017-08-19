<%@page import="ssucb.pojo.DistictPojo"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*" %>
<jsp:useBean id="distict" class="ssucb.pojo.DistictPojo"></jsp:useBean>
<jsp:useBean id="distictdao" class="ssucb.dao.DistictDao"></jsp:useBean>
<%
String country=request.getParameter("count");  
System.out.println("Getted Value is equals to ==="+country);
 String buffer="<select name='district' onchange='showCity(this.value);'>";  

 try{
     
     ArrayList<DistictPojo> al=distictdao.GetAllDistictByCityid(Integer.parseInt(country));
    Iterator ir=al.iterator();

     
     
     
     /*
 Class.forName("com.mysql.jdbc.Driver").newInstance();  

 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hbm","root","root");  

 Statement stmt = con.createStatement();  

 ResultSet rs = stmt.executeQuery("Select * from state where countryid='"+country+"' ");  
*/
   while(ir.hasNext()){
distict=(DistictPojo) ir.next();
   buffer=buffer+"<option value='"+distict.getDid()+"'>"+distict.getDistictname()+"</option>";  

   }  
 buffer=buffer+"</select>";  

 response.getWriter().println(buffer); 

 }
 catch(Exception e){

     System.out.println(e);

 }

 %>