<%-- 
    Document   : uploadimage
    Created on : Jun 25, 2017, 1:02:28 AM
    Author     : KRISHNA
--%>
<%@ page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/inputcss.css">

    </head>
    <body>
        <form name="frm" action=''  method="post" enctype="multipart/form-data">
            <table id="uploadtable">
                <tr><td><label id="labelview">Upload Photo</label></td><td><input type="file" name="f" id="labelview" /></td>
               <td><input type="submit" name="sb" value="Upload Photo" id="labelview" class="buttonsubmit button4"/></td></tr>
            </table>
        </form>

        <%
            try {



                String contentType = request.getContentType();
                //here we are checking the content type is not equal to Null and
                //as well as the passed data from mulitpart/form-data is greater than or
                // equal to 0
                if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
                    DataInputStream in = new DataInputStream(request.getInputStream());
                    String path = getServletContext().getRealPath("/");

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
                    FileOutputStream fileOut = new FileOutputStream(path + saveFile);
                    fileOut.write(dataBytes, startPos, (endPos - startPos));
                    fileOut.flush();
                    fileOut.close();
                    session.setAttribute("mphoto",saveFile);
        %>
        <Br><table border="2"><tr><td><b>
                        <img src="<%=saveFile%>" width="100" height="100" />

                </td></tr></table> <%
                        }

                    } catch (Exception e) {
                        out.println("Error is " + e);
                    }
                %>
    </body>
</html>
