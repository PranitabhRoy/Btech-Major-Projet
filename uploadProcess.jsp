<%@page import="CloudConnections.DriveHQ"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="util.TrippleDes"%>
<%@page import="action.Dbconnection"%>
<%@page import="util.ContentExtractor"%>
<%@page import="java.io.InputStream"%>
<%@page import="org.apache.commons.io.IOUtils"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.io.FileFilter" %>
<html>
    <head>
        <title>
        </title>
    </head>
    <body>
        <%
        Connection conn=null;
        PreparedStatement pstmt = null; 
        Statement st = null;
        ResultSet rs= null;
        try {
            
            File f = null;
            DiskFileItemFactory diskFile = new DiskFileItemFactory();
            diskFile.setSizeThreshold(1 * 1024 * 1024);
            diskFile.setRepository(f);
            String uploadedby = (String)session.getAttribute("UID");
            System.out.println("uploadedby   ...."+uploadedby);
            
            ServletFileUpload sfu = new ServletFileUpload(diskFile);
            List item = sfu.parseRequest(request);
            Iterator itr = item.iterator();
            FileItem items = (FileItem) itr.next();
            String str = ContentExtractor.getStringFromInputStream(items.getInputStream());
            InputStream input = items.getInputStream();
            int size=input.available();
            String encstr = new TrippleDes().encrypt(items.getName());
            System.out.println("file name is " +items.getName());
            String sql = "select * from tblfile where broker = 'On Process' and file_owner='"+uploadedby+"'";
            conn = Dbconnection.getcon();
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            if(rs.next()){
            
                 response.sendRedirect("client.jsp#!/page_REQUESTQUEUE");
            }
            else{
                File f1=new File("C:\\"+items.getName());
                new DriveHQ().upload(f1, items.getName());
            pstmt = conn.prepareStatement("insert into tblfile (file_name, file_owner, size, file, data, file_key) values(?,?,?,?,?,?)");
            pstmt.setString(1, items.getName());
            pstmt.setString(2, uploadedby);
            pstmt.setInt(3, size);
            pstmt.setBinaryStream(4, items.getInputStream(),items.getInputStream().available());
            pstmt.setString(5, str);
            pstmt.setString(6, encstr);
            int i =   pstmt.executeUpdate();
            if(i!=0){
               response.sendRedirect("client.jsp?Msg=Success#!/page_CLIENTUPLOAD");
            }
            else{
                response.sendRedirect("client.jsp?Msg=Failed#!/page_CLIENTUPLOAD");
            }
               
            }
            
            
        } catch(Exception ex){
             response.sendRedirect("index.jsp#!/page_CLIENTUPLOAD");
            ex.printStackTrace();
        } finally {            
            conn.close();
        }
%>
    </body>
</html>