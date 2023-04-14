<%@page import="action.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%

    try {
        String query = request.getQueryString();
        String[] arr = query.split(",");
        String filename = arr[0];
        String name = arr[1];
        String sql = "select * from tblfile where file_owner ='" + name + "' and file_name = '" + filename + "'";
        Connection con = Dbconnection.getcon();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(sql);
        if (rs.next()) {
            if (rs.getString("broker").equals("On Process")) {

                response.sendRedirect("client.jsp?Business_Provider_Needs_to_Approve_your_Request#!/page_CLIENTACCESS");
            } else {
                response.sendRedirect("client.jsp?ok#!/page_CLIENTPACK");
            }

        } 

    } catch (Exception e) {

        e.printStackTrace();
    }


%>