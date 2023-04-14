<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="action.Dbconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%

    try{
    String query = request.getQueryString();
    String[] spl = query.split(",");
    String pack = spl[0];
    String cost = spl[1];
    String policy = spl[2];
    String infra = spl[3];
    
    String user = (String)session.getAttribute("UID");
    System.out.println("uploadedby   ...."+user);
    
    Connection con = Dbconnection.getcon();
    Statement st = con.createStatement();
    PreparedStatement ps=con.prepareStatement("select * from tblfile where file_owner = '"+user+"' and cloud='"+infra+"'");
     ResultSet rs=ps.executeQuery();
     if(rs.next())
     {
                   response.sendRedirect("client.jsp?aleradyregistered#!/page_PACKFAILURE");
      }
      else
       {
                     //int i = st.executeUpdate("insert into package (pack,cost,policy) values ('"+pack+"','"+cost+"','"+policy+"') where file_owner = '"+user+"'");
    st.executeUpdate("update tblfile set pack = '"+pack+"',cost='"+cost+"',policy='"+policy+"' where file_owner = '"+user+"'");
    con.close();
        response.sendRedirect("client.jsp?Status_registered#!/page_PACKSTATUS");
               }

    }
    catch(Exception e){
        e.printStackTrace();
        response.sendRedirect("client.jsp?Status_not_registered#!/page_CLIENTHOME");
    }
    
%>