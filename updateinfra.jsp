<%@page import="java.io.File"%>
<%@page import="java.nio.file.StandardOpenOption"%>
<%@page import="java.nio.file.Paths"%>
<%@page import="java.nio.file.Files"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="CloudConnections.DriveHQ"%>
<%@page import="action.Dbconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.*"%>
<%

    try{
    String infra = request.getParameter("infra");
    String fname = request.getParameter("fname");
    String name = request.getParameter("name");
    
    
    Connection con = Dbconnection.getcon();
    Statement st = con.createStatement();
    //int i = st.executeUpdate("insert into package (pack,cost,policy) values ('"+pack+"','"+cost+"','"+policy+"') where file_owner = '"+user+"'");
    st.executeUpdate("update tblfile set cloud='"+infra+"' where file_name = '"+fname+"' and file_owner='"+name+"'");
    
    if(infra.equalsIgnoreCase("DriveHQ"))
    {
        PreparedStatement ps=con.prepareStatement("select * from tblfile where file_name = '"+fname+"' and file_owner='"+name+"'");
        ResultSet rs=ps.executeQuery();
        if(rs.next())
        {     
               
               String content =rs.getString("file");
               String path = "D:/drivehq.txt";
                Files.write( Paths.get(path), content.getBytes(), StandardOpenOption.CREATE);
                File file = new File("D:\\drivehq.txt");
           
               new DriveHQ().upload(file, fname);
               con.close();
               response.sendRedirect("bsp.jsp?Request_Sent_to_Server#!/page_BSPHOME");
        }
    }
    if(infra.equalsIgnoreCase("Windows Azure"))
    {
            System.out.println("Windows Azure");
             response.sendRedirect("bsp.jsp?Request_Sent_to_Server#!/page__WINDOWSPOLICY");
    }
    if(infra.equalsIgnoreCase("Amazon AWS"))
    {
              response.sendRedirect("bsp.jsp?Request_Sent_to_Server#!/page__AMAZONPOLICY");
    }
    
    
    
    
    }
    catch(Exception e){
        e.printStackTrace();
       
    }
    
%>