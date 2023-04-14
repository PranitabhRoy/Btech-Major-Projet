<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="action.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Energy-aware cloud workflow applications scheduling with geo-distributed data</title>
<meta charset="utf-8">

<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<link rel="icon" href="images/services04.jpg" type="image/x-icon">


</head>
<body>
    
    <%
    String type=(String)session.getAttribute("type");
    System.out.println(type);
    %>
<div class="spinner"></div>


        <div id="bgStretch"><img src="images/cloud-computing-illustration-technology.jpg" alt=""></div>


<div class="extra">

<div class="main1"></div>




<div class="main2">
  
<header>
    <div class="txt1">Energy-aware cloud workflow applications scheduling with geo-distributed data</div>
</header>

<div class="menu_splash">
  <ul id="menu_splash">
    <li class="nav1"><a href="#!/page_INFRAHOME"><span class="txt1">Home Page</span><span class="txt2">Infrastructure</span><div class="over1"></div><span class="over2"></span></a></li>
    <li class="nav2"><a href="#!/page_BSPREQUEST"><span class="txt1">Customer</span><span class="txt2">Request</span><div class="over1"></div><span class="over2"></span></a></li>
       <li class="nav6"><a href="index.jsp#!/page_INFRALOGIN"><span class="txt1">Logout</span><span class="txt2">Infrastructure</span><div class="over1"></div><span class="over2"></span></a></li>    
  </ul>
</div>

<!--content -->
<article id="content">

  <ul>
      <li id="page_SPLASH"></li>
      
      <li id="page_INFRAHOME">
                            <div class="box">
                                <div class="col1">

                                    <h2>Services List</h2>

                                    <div class="col3">
                                        <ul class="ul1">
                                            <li><a href="infra.jsp?#!/page_INFRAHOME">Infrastructure Home</a></li>
                                            <li><a href="infra.jsp#!/page_BSPREQUEST">Customer Request Access</a></li>
                                            <li><a href="index.jsp#!/page_INFRALOGIN">Log Out</a></li>                                                                        
                                        </ul> 
                                    </div>

                                    <div class="clear"></div>
                                    
                                    <div class="clear"></div>

                                </div>
                                <div class="col0"></div>
                                <div class="col2">

                                    <h2 style="margin-left: 225px">Infrastructure Home</h2>

                                    <div style="background-image: url('images/clogo.PNG');margin-left: 80px;height: 260px;width: 534px"></div>


                                </div>
                                <div class="clear"></div>
                            </div>
                        </li>
      
      <li id="page_BSPREQUEST">
                             <div class="box">

                                <div class="col2" style="margin-left: 60px">

                                    <h2 style="margin-left: 20px;font-weight: bold;color:  yellow">Client Service Level Agreement  Requests</h2><br>

                                    <div style="margin-left: 40px;height: 300px;width: 720px;">
                                       <div style="margin-left: 40px;height: 300px;width: 620px;">
                                        <table style="margin-left: -100px;width: 700px" >
                                         <tr style="border: solid 1px;font-size: 20px;color: white;font-weight: bold;">
                                             <td style="text-align: center;height: 40px"><FONT COLOR="orange">UserName</td>
                                                <td style="text-align: center;"><FONT COLOR="orange">FileName</td>
                                    
                                                <td style="text-align: center;"><FONT COLOR="orange">File_key</td>
                                                <td style="text-align: center;"><FONT COLOR="orange">Date</td>
                                                <td style="text-align: center;"><FONT COLOR="orange">Pack</td>
                                                <td style="text-align: center;"><FONT COLOR="orange">Cost</td>
                                                <td style="text-align: center;"><FONT COLOR="orange">Policy</td>
                                                <td style="text-align: center;"><FONT COLOR="orange">CSP</td>
                                                <td style="text-align: center;"><FONT COLOR="orange">Infra</td>
                                                <td style="text-align: center;"><FONT COLOR="orange">Approve</td></tr>
                                                <%

                                                    //String name = session.getAttribute("UID").toString();
                                                    String id1,name1, filename1, date1, size1, file_key1, broker1, server1,pack1,cost1,policy1 = null;
                                                    String sql = "select * from tblfile where server!='Granted'";
                                                    Connection con = Dbconnection.getcon();
                                                    Statement st = con.createStatement();
                                                    ResultSet rs = st.executeQuery(sql);
                                                    while (rs.next()) {
                                                        name1 = rs.getString("file_owner");
                                                        filename1 = rs.getString("file_name");
                                                        file_key1 = rs.getString("file_key");
                                                        date1 = rs.getString("date");
                                                        size1 = rs.getString("size");
                                                        pack1 = rs.getString("pack");
                                                        cost1 = rs.getString("cost");
                                                        policy1 = rs.getString("policy");
                                                        id1 = rs.getString("id");
                                                        broker1 = rs.getString("broker");
                                                        server1 = rs.getString("server");
                                                %>
                                            <tr style="border: solid 1px;font-size: 15px;color: white;font-family: monospace;font-weight: bold;">
                                                <td style="height: 20px;text-align: center"><%=name1%></td>
                                                <td style="text-align: center" width='10%'><%=filename1%></td>
                                             
                                             
                                                <td style="text-align: center;" width='15%'><%=file_key1%></td>
                                                <td style="text-align: center;" width='9%'><%=date1%></td>
                                                <td style="text-align: center;" width='9%'><%=pack1%></td>
                                                <td style="text-align: center;" width='9%'><%=cost1%></td>
                                                <td style="text-align: center;" width='9%'><%=policy1%></td>
                                                <td style="text-align: center;" width='9%'><%=broker1%></td>
                                                <td style="text-align: center;" width='9%'><%=server1%></td>
                                                <td style="text-align: center;"><a href="updateisp.jsp?<%=filename1%>,<%=name1%>"><img src="images/cooltext337554295223657.png" height="50"></a></td></tr>
                                                <%
                                                    }
                                                %>
                                        </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </li>
                        
                        <li id="page_INFRASTATUS">
                              <div class="box">
                                <div class="col1">

                                    <h2>Services List</h2>

                                    <div class="col3">
                                        <ul class="ul1">
                                            <li><a href="infra.jsp?#!/page_INFRAHOME">Infrastructure Home</a></li>
                                            <li><a href="infra.jsp#!/page_BSPREQUEST">Customer Request Access</a></li>
                                            <li><a href="index.jsp#!/page_INFRALOGIN">Log Out</a></li>                                                                       
                                        </ul> 
                                    </div>

                                    <div class="clear"></div>
                                    <div class="clear"></div>

                                </div>
                                <div class="col0"></div>
                                <div class="col2" style="margin-left: 40px">
                                    <p class="h3" style="margin-left: 180px">Congratulations</p><br><br>
 <p class="h3">
                                                <font color="yellow"><B> The Service Level Agreement has been granted Successfully.
                                                
                                                </p>

                                    <img src="images/doc24-512.png" style="margin-left: 170px; margin-top: 50px;height:150px;" alt="" class="left img1">
                                            <p class="h3"></p>
                                            
                                            <div class="clear"></div>
                                           
                                </div>
                                <div class="clear"></div>
                            </div>
                        </li>
                        
                        
                        
      </ul>
</article>
<!--content end -->

</div>

<footer>
<nav class="menu">
  <ul id="menu">
    <li class="nav1"><a href="#!/page_INFRAHOME"><span class="over1"><span class="over2"></span></span><span class="txt1">Home</span><span class="txt2">Home</span></a></li>
    <li class="nav2"><a href="#!/page_BSPREQUEST"><span class="over1"><span class="over2"></span></span><span class="txt1">Customer Request</span><span class="txt2">Customer Request</span></a></li>
    <li class="nav3"><a href="index.jsp#!/page_ABSTRACT"><span class="over1"><span class="over2"></span></span><span class="txt1">Business Service Provider</span><span class="txt2">Business Service Provider</span></a></li>
    <li class="nav4"><a href="#!/page_SOLUTIONS"><span class="over1"><span class="over2"></span></span><span class="txt1">Infrastructure Service Provider</span><span class="txt2">Infrastructure Service Provider</span></a></li>
    <li class="nav6"><a href="index.jsp#!/page_INFRALOGIN"><span class="over1"><span class="over2"></span></span><span class="txt1">Logout</span><span class="txt2">Logout</span></a></li>
  </ul>
</nav>
<div class="bot1">

<div hidden class="copyright">Copyright (c) 2019. Company Name Here.&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#!/page_PRIVACY">Privacy policy</a></div> 
<div hidden class="copyright">Developed by <a href="http://www.metamorphozis.com" title="Free css Templates" class="metamorph">free css templates</a></div>
<div class="tola">
                  
                         
</div> 
  
</div>



</footer>





</div>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="js/script.js"></script>

</body>
</html>
