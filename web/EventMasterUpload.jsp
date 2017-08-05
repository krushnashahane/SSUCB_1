<%-- 
    Document   : TenderMasterUpload
    Created on : Jun 27, 2017, 12:14:51 PM
    Author     : KRISHNA
--%>

<%@page import="java.io.File"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="org.apache.commons.fileupload.disk.*"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
        <jsp:useBean id="ev" class="ssucb.pojo.EvenMasterPojo"/>
        <jsp:useBean id="eventdb" class="ssucb.dao.EventMasterDAO"/>
    </head>
    <body>
        <%!
        
String getpath ="C:\\Users\\Naresh\\Documents\\NetBeansProjects\\SundarlalSawjiBnak\\SSUCB\\web\\img\\Event\\";
String path,fname,name;

%>
       <%
       

   boolean isMultipart = ServletFileUpload.isMultipartContent(request);
    if (!isMultipart) {
    } else {
        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        List items = null;
        try {
            items = upload.parseRequest(request);
        } 
        catch (FileUploadException e) 
        {
            e.printStackTrace();
        }
        Iterator itr = items.iterator();
        String EventDesc = "", Edate = "", Etime = "",EventName="";
        while (itr.hasNext()) {
            FileItem item = (FileItem) itr.next();

            if (item.isFormField()) {
                String name = item.getFieldName();
                String value = item.getString();

                if (name.equals("EventDesc")) {
                    EventDesc = value;

                } else if (name.equals("Edate")) {
                    Edate = value;

                } else if (name.equals("Etime")) {
                    Etime = value;

                } else if(name.equals("EventName")){
                EventName=value;
                }
            } else {
                try {
                    

                     String itemName = item.getName();
                   // String itemName = "" + maxvalue;

                    String filename =application.getRealPath("")+"\\img\\Event\\";//"vacyimageD:image/";//request.getRealPath("") + "/D:image/";//"/uploads/";
                    filename = filename + itemName ;
                    System.out.println("file name with path======" + filename);
                    path = itemName + ".jpg";
                    File savedFile = new File(filename);

                    item.write(savedFile);
                    fname = itemName;
                    System.out.println("file name======" + fname);
                    out.println(filename);
                    out.println(itemName);

                    out.println("successfull");
                    //response.sendRedirect("index.html");
                } catch (Exception ste) {
                    out.println(ste);
                }
            }
        }
        name = EventDesc;
        System.out.println("the user name is" + Edate);
        System.out.println("the tags is" + Etime);
        
        ev.setEventDesc(EventDesc);
        ev.setEdate(Edate);
        ev.setFile(fname);
        ev.setEtime(Etime);
        ev.setEventName(EventName);
        
        System.out.println("tender Decsc======"+ev.getEventDesc());
        System.out.println("opening date ======="+ev.getEdate());
        System.out.println("Closing date========="+ev.getEtime());
        System.out.println("File name ======="+ev.getFile());
        
        boolean b=eventdb.AddEventMaster(ev);
        if(b){
        %>
        <script>
            
            alert("File has been Uploaded Successfully....");
            window.location.href="EventMaster.jsp";
            
        </script>
        
        
        
        <%
        
        
        }

    }





%>
    </body>
</html>
