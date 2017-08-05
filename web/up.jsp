<%-- 
    Document   : up
    Created on : Jun 25, 2017, 1:31:27 AM
    Author     : KRISHNA
--%>

<%@page import="java.io.DataInputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            try {
              
               
                String button = request.getParameter("s");
                
             
                    out.println("form submited");
                    //to get the content type information from JSP Request Header
                    String contentType = request.getContentType();
                    //here we are checking the content type is not equal to Null and
                    //as well as the passed data from mulitpart/form-data is greater than or
                    // equal to 0
                    if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
                        DataInputStream in = new DataInputStream(request.getInputStream());
                         String path=getServletContext().getRealPath("/");
               
                        //we are taking the length of Content type data
                        int formDataLength = request.getContentLength();
                        byte dataBytes[] = new byte[formDataLength];
                        int byteRead = 0;
                        int totalBytesRead = 0;
                        //this loop converting the uploaded file into byte code
                        while (totalBytesRead < formDataLength) {
                            byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
                            totalBytesRead += byteRead;
                        }
                        String file = new String(dataBytes);
                        //for saving the file name
                        String saveFile = file.substring(file.indexOf("filename=\"") + 10);
                        saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
                        saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1, saveFile.indexOf("\""));
                        int lastIndex = contentType.lastIndexOf("=");
                        String boundary = contentType.substring(lastIndex + 1, contentType.length());
                        int pos;
                        //extracting the index of file 
                        pos = file.indexOf("filename=\"");
                        pos = file.indexOf("\n", pos) + 1;
                        pos = file.indexOf("\n", pos) + 1;
                        pos = file.indexOf("\n", pos) + 1;
                        int boundaryLocation = file.indexOf(boundary, pos) - 4;
                        int startPos = ((file.substring(0, pos)).getBytes()).length;
                        int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
                        // creating a new file with the same name and writing the content in new file
                        FileOutputStream fileOut = new FileOutputStream(path+saveFile);
                        fileOut.write(dataBytes, startPos, (endPos - startPos));
                        fileOut.flush();
                        fileOut.close();
        %>
        <Br><table border="2"><tr><td><b>You have successfully
                        upload the file by the name of:</b>
                    <% out.println(saveFile);%></td></tr></table> <%
                                }
                           
                        } catch (Exception e) {
                            out.println("Error is " + e);
                        }
                    %>
    
    </body>
</html>
