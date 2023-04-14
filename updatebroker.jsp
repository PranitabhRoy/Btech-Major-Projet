<%@page import="action.Dbconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%

    try{
    String query = request.getQueryString();
    String[] spl = query.split(",");
    String file = spl[0];
    String name = spl[1];
    
    
    Connection con = Dbconnection.getcon();
    Statement st = con.createStatement();
    //int i = st.executeUpdate("insert into package (pack,cost,policy) values ('"+pack+"','"+cost+"','"+policy+"') where file_owner = '"+user+"'");
    st.executeUpdate("update tblfile set broker='Permitted' where file_name = '"+file+"' and file_owner='"+name+"'");
    con.close();
        response.sendRedirect("bsp.jsp?Permission_Granted#!/page_CLIENTREQUEST");
    }
    catch(Exception e){
        e.printStackTrace();
        response.sendRedirect("bsp.jsp?Permission_Denied#!/page_CLIENTREQUEST");
    }
    
%>