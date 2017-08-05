<%-- 
    Document   : DownloadTenderfile
    Created on : Jun 27, 2017, 1:53:50 PM
    Author     : KRISHNA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <%    
     
     
     
     
     
     
     
  String filename = request.getParameter("file");   
  String filepath =application.getContextPath()+"\\web\\scss\\";   
  
  out.println(application.getContextPath());
  
  response.setContentType("APPLICATION/OCTET-STREAM");   
  response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");   
  out.println(filepath + filename);
  java.io.FileInputStream fileInputStream=new java.io.FileInputStream(filepath + filename);  
            
  int i;   
  while ((i=fileInputStream.read()) != -1) {  
    out.write(i);   
  }   
  fileInputStream.close();   
%>
    </body>
</html>
