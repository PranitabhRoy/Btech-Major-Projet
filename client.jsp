<%@page import="action.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
    

        <style>



        </style>    
        <div class="spinner"></div>

        <div id="bgStretch"><img src="images/bg1.jpg" alt=""></div>

        <div class="extra">

            <div class="main1"></div>
            
            <div class="main2">

                <header>
                    <div class="txt1">Energy-aware cloud workflow applications scheduling with geo-distributed data</div>
                                  </header>

                <div class="menu_splash">
                    <ul id="menu_splash">
                        <li class="nav1"><a href="client.jsp#!/page_CLIENTHOME"><span class="txt1">Home</span><span class="txt2">Home</span><div class="over1"></div><span class="over2"></span></a></li>
                        <li class="nav2"><a href="client.jsp?#!/page_CLIENTUPLOAD"><span class="txt1">Data Upload</span><span class="txt2">to Server</span><div class="over1"></div><span class="over2"></span></a></li>
                        <li class="nav3"><a href="client.jsp#!/page_CLIENTACCESS"><span class="txt1">Access</span><span class="txt2">Request Status</span><div class="over1"></div><span class="over2"></span></a></li>
                         <li class="nav6"><a href="index.jsp#!/page_CLOGIN"><span class="txt1">Log out</span><span class="txt2">Client</span><div class="over1"></div><span class="over2"></span></a></li>    
                    </ul>
                </div>

                <!--content -->
                <article id="content">

                    <ul>
                        <li id="page_SPLASH"></li>

                        <li id="page_ABSTRACT">
                            <div class="box">

                                <br><h2>Abstract</h2>

                                <div class="scroll-pane"><div>
                                        <br><br><br>
                                        <p class="text" style="font-size: medium;text-align: justify">
                                            As an effective and efficient way to provide computing resources and services to customers on demand, cloud computing
                                            has become more and more popular. From cloud service providers? perspective, profit is one of the most important considerations, and
                                            it is mainly determined by the configuration of a cloud service platform under given market demand. However, a single long-term
                                            renting scheme is usually adopted to configure a cloud platform, which cannot guarantee the service quality but leads to serious
                                            resource waste. In this paper, a double resource renting scheme is designed firstly in which short-term renting and long-term renting
                                            are combined aiming at the existing issues. This double renting scheme can effectively guarantee the quality of service of all requests
                                            and reduce the resource waste greatly. Secondly, a service system is considered as an M/M/m+D queuing model and the performance
                                            indicators that affect the profit of our double renting scheme are analyzed, e.g., the average charge, the ratio of requests that need
                                            temporary servers, and so forth. Thirdly, a profit maximization problem is formulated for the double renting scheme and the optimized
                                            configuration of a cloud platform is obtained by solving the profit maximization problem. Finally, a series of calculations are conducted
                                            to compare the profit of our proposed scheme with that of the single renting scheme. The results show that our scheme can not only
                                            guarantee the service quality of all requests, but also obtain more profit than the latter
                                        </p>
                                    </div></div>
                            </div>
                        </li>

                        <li id="page_CLIENTHOME">
                            <div class="box">
                                <div class="col1">

                                    <h2>Services List</h2>

                                    <div class="col3">
                                        <ul class="ul1">
                                            <li><a href="client.jsp?#!/page_CLIENTHOME">Client Home</a></li>
                                            <li><a href="client.jsp?#!/page_CLIENTUPLOAD">Distribute Request to Server</a></li>
                                            <li><a href="client.jsp#!/page_CLIENTACCESS">Access Request Status</a></li>
                                            <li><a href="index.jsp#!/page_CLOGIN">Log Out</a></li>                                                                        
                                        </ul> 
                                    </div>

                                    <div class="clear"></div>

                                    <div class="clear"></div>

                                </div>
                                <div class="col0"></div>
                                <div class="col2">

                                    <h2 style="margin-left: 200px">Customer Home</h2><br>

                                    <div style="background-image: url('images/user-logo.png');margin-left: 300px;height: 300px;"></div>


                                </div>
                                <div class="clear"></div>
                            </div>
                        </li>


                        <li id="page_CLIENTUPLOAD">
                            <a href="#!/page_CLIENTHOME" class="close"><span class="over"></span><span class="txt1"><img src="images/back-button.png" height="50" width="50"></span><span class="x1"></span></a>  
                            <div class="box">
                                <div class="col1">

                                    <h2>Services List</h2>

                                    <div class="col3">
                                        <ul class="ul1">
                                            <li><a href="client.jsp?#!/page_CLIENTHOME">Client Home</a></li>
                                            <li><a href="client.jsp?#!/page_CLIENTUPLOAD">Distribute Request to Server</a></li>
                                            <li><a href="client.jsp#!/page_CLIENTACCESS">Access Request Status</a></li>
                                            <li><a href="index.jsp#!/page_CLOGIN">Log Out</a></li>                                                                       
                                        </ul> 
                                    </div>

                                    <div class="clear"></div>

                                    <div class="clear"></div>

                                </div>
                                <div class="col0"></div>
                                <div class="col2" style="margin-left: 20px">

                                    <h2 style="margin-left: 110px">File Distribution Request to Server</h2>

                                    <div style="height: 300px;width: 600px;">
                                        <form action="uploadProcess.jsp" method="post" enctype="multipart/form-data">
                                            <label style="margin-top: 140px;margin-left: 140px;color: yellow;font-size:20px;">Choose file : </label><input type="file" name="upload" style="margin-top: 150px"><br />
                                            <input style="margin-left: 240px;margin-top: 80px" type="submit" value="Upload">
                                        </form>
                                    </div>

                                </div>
                                <div class="clear"></div>
                            </div>
                        </li>

                        
                        <li id="page_REQUESTQUEUE">
                           <div class="box">
                                <div class="col1">

                                    <h2>Services List</h2>

                                    <div class="col3">
                                        <ul class="ul1">
                                            <li><a href="client.jsp?#!/page_CLIENTHOME">Client Home</a></li>
                                            <li><a href="client.jsp?#!/page_CLIENTUPLOAD">Distribute request to Server</a></li>
                                            <li><a href="client.jsp#!/page_CLIENTACCESS">Access Request Status</a></li>
                                            <li><a href="index.jsp#!/page_CLOGIN">Log Out</a></li>                                                                       
                                        </ul> 
                                    </div>

                                    <div class="clear"></div>
                                    <div class="clear"></div>

                                </div>
                                <div class="col0"></div>
                                <div class="col2" style="margin-left: 40px">
                                    <p class="h3" style="margin-left: 90px">Request Pending in Queue</p><br><br>

                                    <img src="images/queue.png" alt="" class="left img1">
                                            <p class="h3"></p>
                                            
                                            <div class="clear"></div>
                                            <p class="h3">
                                                The Request Queue is full at the movement, where the previous request is already in pending status for Approval....
                                                
                                                </p>

                                </div>
                                <div class="clear"></div>
                            </div>
                        </li>

                        <li id="page_PACKSTATUS">
                            <a href="#!/page_CLIENTHOME" class="close"><span class="over"></span><span class="txt1"><img src="images/back-button.png" height="50" width="50"></span><span class="x1"></span></a>  
                            <div class="box">
                                <div class="col1">

                                    <h2>Services List</h2>

                                    <div class="col3">
                                        <ul class="ul1">
                                            <li><a href="client.jsp?#!/page_CLIENTHOME">Client Home</a></li>
                                            <li><a href="client.jsp?#!/page_CLIENTUPLOAD">Distribute Request to Server</a></li>
                                            <li><a href="client.jsp#!/page_CLIENTACCESS">Access Request Status</a></li>
                                            <li><a href="index.jsp#!/page_CLOGIN">Log Out</a></li>                                                                       
                                        </ul> 
                                    </div>

                                    <div class="clear"></div>
                                    <div class="clear"></div>

                                </div>
                                <div class="col0"></div>
                                <div class="col2" style="margin-left: 0px">
                                    <div style="height: 350px;width: 600px;background-image: url('images/success.jpg')">
                                        <h2 style="color: cornflowerblue">Congrats!! </h2>
                                        <br><h2 style="color: red">Your Policy Terms</h2>><br> <h2 style="color: red">has been Allocated...</h2>
                                    </div>

                                </div>
                                <div class="clear"></div>
                            </div>
                        </li>
                        
                        
                          <li id="page_PACKFAILURE">
                            <a href="#!/page_CLIENTHOME" class="close"><span class="over"></span><span class="txt1"><img src="images/back-button.png" height="50" width="50"></span><span class="x1"></span></a>  
                            <div class="box">
                                <div class="col1">

                                    <h2>Services List</h2>

                                    <div class="col3">
                                        <ul class="ul1">
                                            <li><a href="client.jsp?#!/page_CLIENTHOME">Client Home</a></li>
                                            <li><a href="client.jsp?#!/page_CLIENTUPLOAD">Distribute Request to Server</a></li>
                                            <li><a href="client.jsp#!/page_CLIENTACCESS">Access Request Status</a></li>
                                            <li><a href="index.jsp#!/page_CLOGIN">Log Out</a></li>                                                                       
                                        </ul> 
                                    </div>

                                    <div class="clear"></div>
                                    <div class="clear"></div>

                                </div>
                                <div class="col0"></div>
                                <div class="col2" style="margin-left: 0px">
                                    <div style="height: 450px;width: 600px;">
                                       
                                        <br><h2 style="color: yellow">The Selected Service is Already subscribed. </h2>
                                    </div>

                                </div>
                                <div class="clear"></div>
                            </div>
                        </li>
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        

                        <li id="page_CLIENTACCESS">
                            <a href="#!/page_CLIENTHOME" class="close"><span class="over"></span><span class="txt1"><img src="images/back-button.png" height="50" width="50"></span><span class="x1"></span></a>  
                            <div class="box">

                                <div class="col2" style="margin-left: 60px">

                                    <h2 style="margin-left: 50px;font-weight: bold;color: yellow;">Client Service Level Agreement Policy  Request </h2><br>

                                    <div style="margin-left: 40px;height: 300px;width: 820px;">
                                        <table style="margin-left: -130px;width: 960px">
                                            <tr style="border: solid 1px;font-size: 20px;color: white;font-weight: bold;">
                                                <td style="text-align: center;height: 40px"><font color="orange">UserName</td>
                                                <td style="text-align: center;"><font color="orange">FileName</td>
                                              
                                                <td style="text-align: center;"><font color="orange">Size</td>
                                                <td style="text-align: center;"><font color="orange">File_key</td>
                                                <td style="text-align: center;"><font color="orange">Date</td>
                                                <td style="text-align: center;"><font color="orange">BSP</td>
                                                <td style="text-align: center;"><font color="orange">ISP</td>
                                                <td style="text-align: center;"><font color="orange">Request</td></tr>
                                                <%

                                                    String name = session.getAttribute("UID").toString();
                                                    String id, filename, date, size, file_key, broker, server = null;
                                                    String sql1 = "select * from tblfile where file_owner='" + name + "' and broker='Permitted'";
                                                    Connection con1 = Dbconnection.getcon();
                                                    Statement st1 = con1.createStatement();
                                                    ResultSet rs1 = st1.executeQuery(sql1);
                                                    while (rs1.next()) {
                                                        filename = rs1.getString("file_name");
                                                        file_key = rs1.getString("file_key");
                                                        date = rs1.getString("date");
                                                        size = rs1.getString("size");
                                                        id = rs1.getString("id");
                                                        broker = rs1.getString("broker");
                                                        server = rs1.getString("server");
                                                %>
                                            <tr style="border: solid 1px;font-size: 15px;color: white;font-family: monospace;font-weight: bold;">
                                                <td style="height: 20px;text-align: center"><%=name%></td>
                                                <td style="text-align: center"><%=filename%></td>
                                             
                                                <td style="text-align: center;"><%=size%></td>
                                                <td style="text-align: center;"><%=file_key%></td>
                                                <td style="text-align: center;"><%=date%></td>
                                                <td style="text-align: center;"><%=broker%></td>
                                                <td style="text-align: center;"><%=server%></td>
                                                <td style="text-align: center;"><a href="brokecheck.jsp?<%=filename%>,<%=name%>"><img src="images/cooltext337555434449874.gif" height="20"></a></td></tr>
                                                <%
                                                    }
                                                %>

                                        </table>
                                    </div>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </li>
                        


                        <li id="page_CLIENTPACK">
                            <a href="#!/page_CLIENTHOME" class="close"><span class="over"></span><span class="txt1"><img src="images/back-button.png" height="50" width="50"></span><span class="x1"></span></a>  
                            <div class="box">


                                <div class="col2" style="margin-left: 60px">

                                    <h2 style="margin-left: 250px;color: yellow">Cloud Service Packages</h2>

                                    <div style="margin-left: 40px;height: 300px;width: 820px;">
                                        <table style="margin-left: -100px;width: 900px">
                                            <tr style="background-color: red;border: solid 1px;font-size: 20px;font-weight: bold;">
                                                <td style="text-align: center;">Infrastructure Name</td><td style="text-align: center;">Package</td><td style="text-align: center;">Cost</td><td style="text-align: center;">Policy</td><td style="text-align: center;">Request</td></tr>
                                                <%
                                                    String infra, pack, cost, policy = null;
                                                    String sql = "select * from package order by infra asc";
                                                    Connection con = Dbconnection.getcon();
                                                    Statement st = con.createStatement();
                                                    ResultSet rs = st.executeQuery(sql);
                                                    while (rs.next()) {
                                                        infra = rs.getString("infra");
                                                        pack = rs.getString("pack");
                                                        cost = rs.getString("cost");
                                                        policy = rs.getString("policy");
                                                %>
                                            <tr style="border: solid 1px;font-size: 18px;color: white;font-family: monospace;font-weight: bold;">
                                                <td style="height: 20px;text-align: center"><%=infra%></td>
                                                <td style="text-align: center"><%=pack%></td>
                                                <td style="text-align: center;"><%=cost%></td>
                                                <td style="text-align: center;"><%=policy%></td>
                                                <td style="text-align: center;"><a href="updatepack.jsp?<%=pack%>,<%=cost%>,<%=policy%>,<%=infra%>"><img src="images/cooltext337555434449874.gif" height="20"></a></td></tr>
                                                <%
                                                    }
                                                %>

                                        </table>
                                    </div>
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
                        <li class="nav1"><a href="#!/page_CLIENTHOME"><span class="over1"><span class="over2"></span></span><span class="txt1">Home</span><span class="txt2">Home</span></a></li>
                        <li class="nav2"><a href="#!/page_CLIENTUPLOAD"><span class="over1"><span class="over2"></span></span><span class="txt1">Data Distribution</span><span class="txt2">Data Distribution</span></a></li>
                        <li class="nav3"><a href="#!/page_CLIENTACCESS"><span class="over1"><span class="over2"></span></span><span class="txt1">Request Status</span><span class="txt2">Request Status</span></a></li>
                        <li class="nav4"><a href="#!/page_ABSTRACT"><span class="over1"><span class="over2"></span></span><span class="txt1">Abstract</span><span class="txt2">Abstract</span></a></li>
                        <li class="nav6"><a href="index.jsp#!/page_CLOGIN"><span class="over1"><span class="over2"></span></span><span class="txt1">Logout</span><span class="txt2">Logout</span></a></li>
                    </ul>
                </nav>
                <div class="bot1">

                    <div hidden class="copyright">Copyright (c) 2014. Company Name Here.&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#!/page_PRIVACY">Privacy policy</a></div> 
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
