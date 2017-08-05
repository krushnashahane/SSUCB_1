<%@ page import="java.sql.*" %> 
<%
String name = request.getParameter("name").toString();
System.out.println(name);
String data ="";
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ssucb", "root", "root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from branchmaster where name='"+name+"'");
int count=0;
while(rs.next())
{

count++;
}

if(count>0)
{
data="Branch already exists!";
}
else
{
data="You can register now!!!!";
}
out.println(data);
System.out.println(data);
}
catch (Exception e) {
System.out.println(e);
}
%>