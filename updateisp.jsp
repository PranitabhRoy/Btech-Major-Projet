<%@page import="action.Dbconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    try{
        
    String qry = request.getQueryString();
    String[] ar = qry.split(",");
    String fname = ar[0];
    String name = ar[1];
    
    Connection con = Dbconnection.getcon();
    Statement st = con.createStatement();
    //int i = st.executeUpdate("insert into package (pack,cost,policy) values ('"+pack+"','"+cost+"','"+policy+"') where file_owner = '"+user+"'");
    st.executeUpdate("update tblfile set server='Granted' where file_name = '"+fname+"' and file_owner='"+name+"'");
    con.close();
        response.sendRedirect("infra.jsp?Access_Granted#!/page_INFRASTATUS");
    }
    catch(Exception e){
        e.printStackTrace();
        response.sendRedirect("infra.jsp?Error#!/page_BSPREQUEST");
    }
    
%>