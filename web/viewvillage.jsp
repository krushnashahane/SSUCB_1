<%@page import="ssucb.pojo.Village"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*" %>
<jsp:useBean id="Village" class="ssucb.pojo.Village"></jsp:useBean>
<jsp:useBean id="VillageDao" class="ssucb.dao.VillageDao"></jsp:useBean>
<%
String country=request.getParameter("count");  
System.out.println("Getted Value is equals in village to ==="+country);
 String buffer="<select name='taluka' '>";  

 try{
     
     ArrayList<Village> al=VillageDao.GetAllVillageByCityId(Integer.parseInt(country));
    Iterator ir=al.iterator();

     
     
     
     /*
 Class.forName("com.mysql.jdbc.Driver").newInstance();  

 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hbm","root","root");  

 Statement stmt = con.createStatement();  

 ResultSet rs = stmt.executeQuery("Select * from state where countryid='"+country+"' ");  
*/
   while(ir.hasNext()){
Village=(Village) ir.next();
   buffer=buffer+"<option value='"+Village.getVillage()+"'>"+Village.getVillage()+"</option>";  

   }  
 buffer=buffer+"</select>";  

 response.getWriter().println(buffer); 

 }
 catch(Exception e){

     System.out.println(e);

 }

 %>