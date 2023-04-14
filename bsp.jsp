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

              <div id="bgStretch"><img src="images/cloud-computing-illustration-technology.jpg" alt=""></div>

        <div class="extra">

            <div class="main1"></div>
            <div class="main2">

                <header>
                      <div class="txt1">Energy-aware cloud workflow applications scheduling with geo-distributed data</div>
                </header>

                <div class="menu_splash">
                    <ul id="menu_splash">
                        <li class="nav1"><a href="bsp.jsp#!/page_BSPHOME"><span class="txt1">Home</span><span class="txt2">CSP</span><div class="over1"></div><span class="over2"></span></a></li>
                        <li class="nav2"><a href="bsp.jsp#!/page_INFRAPOLICY"><span class="txt1">Infrastructure</span><span class="txt2">Resource Access</span><div class="over1"></div><span class="over2"></span></a></li>
                        <li class="nav3"><a href="bsp.jsp#!/page_CLIENTTERMS"><span class="txt1">Customer</span><span class="txt2">Policy Terms</span><div class="over1"></div><span class="over2"></span></a></li>
                        <li class="nav4"><a href="bsp.jsp#!/page_CLIENTREQUEST"><span class="txt1">Customer</span><span class="txt2">Request Access</span><div class="over1"></div><span class="over2"></span></a></li>
                        <li class="nav6"><a href="index.jsp#!/page_BSPLOGIN"><span class="txt1">Log out</span><span class="txt2">CSP</span><div class="over1"></div><span class="over2"></span></a></li>    
                    </ul>
                </div>

                <!--content -->
                <article id="content">

                    <ul>
                        <li id="page_SPLASH"></li>

                        <li id="page_ABSTRACT">
                            <a href="#!/page_SPLASH" class="close"><span class="over"></span><span class="txt1"><img src="images/back-button.png" height="50" width="50"></span><span class="x1"></span></a>    
                            <div class="box">

                                <br><h2>Abstract</h2>

                                <div class="scroll-pane"><div>
                                        <br><br><br>
                                        <p class="text" style="font-size: medium;text-align: justify">
                                                                To reduce the cost of cloud users, we introduce a new role, which is cloud broker. A
cloud broker is an intermediary agent between cloud providers and cloud users. It rents a number of reserved VMs from cloud
providers with a good price and offers them to users on an on-demand basis at a cheaper price than that provided by cloud providers.
Besides, the cloud broker adopts a shorter billing cycle compared with cloud providers. By doing this, the cloud broker can reduce a
great amount of cost for user. In addition to reduce the user cost, the cloud broker also could earn the difference in prices between
on-demand and reserved VMs. In this paper, we focus on how to configure a cloud broker and how to price its VMs such that its profit
can be maximized on the premise of saving costs for users. Profit of a cloud broker is affected by many factors such as the user
demands, the purchase price and the sales price of VMs, the scale of the cloud broker, etc.. Moreover, these factors are affected
mutually, which makes the analysis on profit more complicated. In this paper, we firstly give a synthetically analysis on all the affecting
factors, and define an optimal multiserver configuration and VM pricing problem which is modeled as a profit maximization problem.
Secondly, combining the partial derivative and bisection search method, we propose a heuristic method to solve the optimization
problem. The near-optimal solutions can be used to guide the configuration and VM pricing of the cloud broker.
                                        </p>
                                    </div></div>
                            </div>
                        </li>

                        <li id="page_BSPHOME">
                             <div class="box">
                                <div class="col1">
                                     <script>alert('DriveHQ Cloud is Connected!.')</script>
                                         
                                    <h2>Services List</h2>

                                    <div class="col3">
                                        <ul class="ul1">
                                            <li><a href="bsp.jsp?#!/page_CLIENTREQUEST">Access Customer Request</a></li>
                                            <li><a href="bsp.jsp#!/page_INFRAPOLICY">Infrastructure Resources</a></li>
                                            <li><a href="bsp.jsp#!/page_CLIENTTERMS">Customer Policy Terms</a></li>
                                            <li><a href="index.jsp#!/page_BSPLOGIN">Log Out</a></li>                                                                        
                                        </ul> 
                                    </div>

                                    <div class="clear"></div>
                                    
                                    <div class="clear"></div>

                                </div>
                                <div class="col0"></div>
                                <div class="col2">

                                    <h2 style="margin-left: 250px">Cloud Service Provider Home </h2>

                                <div style="background-image: url('images/plogo.PNG');margin-left: 80px;height: 260px;width: 470px"></div>

                                </div>
                                <div class="clear"></div>
                            </div>
                        </li>


                        <li id="page_CLIENTREQUEST">
                            <a href="#!/page_BSPHOME" class="close"><span class="over"></span><span class="txt1"><img src="images/back-button.png" height="50" width="50"></span><span class="x1"></span></a>  
                            <div class="box">

                                <div class="col2" style="margin-left: 60px">

                                    <h2 style="margin-left: 250px;font-weight: bold;color: yellow">Client File Distribution Request</h2><br>

                                    <div style="margin-left: 40px;height: 300px;width: 820px;">
                                        <table border="2" style="margin-left:-100px;width: 860px;background-color:  ghostwhite;border: solid 3px" >
                                            <tr style="border: solid 1px;font-size: 20px;color: #ff9933;font-family: monospace;font-weight: bold;">
                                                <td style="text-align: center;height: 40px">UserName</td>
                                                <td style="text-align: center;">FileName</td>
                                                <td style="text-align: center;">Id</td>
                                                <td style="text-align: center;">Size</td>
                                                <td style="text-align: center;">File_key</td>
                                                <td style="text-align: center;">Date</td>
                                                <td style="text-align: center;">CSP</td>
                                                <td style="text-align: center;">Infrastructure</td>
                                                <td style="text-align: center;">Request</td></tr>
                                                <%

                                                    //String name = session.getAttribute("UID").toString();
                                                    String id,name, filename, date, size, file_key, broker, server = null;
                                                    String sql1 = "select * from tblfile  where broker='On Process'";
                                                    Connection con1 = Dbconnection.getcon();
                                                    Statement st1 = con1.createStatement();
                                                    ResultSet rs1 = st1.executeQuery(sql1);
                                                    while (rs1.next()) {
                                                        name = rs1.getString("file_owner");
                                                        filename = rs1.getString("file_name");
                                                        file_key = rs1.getString("file_key");
                                                        date = rs1.getString("date");
                                                        size = rs1.getString("size");
                                                        id = rs1.getString("id");
                                                        broker = rs1.getString("broker");
                                                        server = rs1.getString("server");
                                                %>
                                            <tr style="border: solid 1px;font-size: 15px;color: blueviolet;font-family: monospace;font-weight: bold;">
                                                <td style="height: 20px;text-align: center"><%=name%></td>
                                                <td style="text-align: center"><%=filename%></td>
                                                <td style="text-align: center;"><%=id%></td>
                                                <td style="text-align: center;"><%=size%></td>
                                                <td style="text-align: center;"><%=file_key%></td>
                                                <td style="text-align: center;"><%=date%></td>
                                                <td style="text-align: center;"><%=broker%></td>
                                                <td style="text-align: center;"><%=server%></td>
                                                <td style="text-align: center;color: red"><a href="updatebroker.jsp?<%=filename%>,<%=name%>"><font color="red"><img src="images/cooltext337554295223657.png" height="50"></a></td></tr>
                                                <%
                                                    }
                                                %>

                                        </table>
                                    </div>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </li>


                        <li id="page_INFRAPOLICY">
                            <a href="#!/page_BSPHOME" class="close"><span class="over"></span><span class="txt1"><img src="images/back-button.png" height="50" width="50"></span><span class="x1"></span></a>  
                            <div class="box">

                                <div class="col2" style="width: 620px;">

                                    <h2 style="margin-left: 270px;font-weight: bold;color: white">Infrastructure Access Gateway </h2><br>

                                    <div style="margin-left: 10px;height: 300px;width: 720px;">
                                        <div style="height: 400px;width: 620px;">
                                        <table style="width: 860px; border: 3px;" >
                                            <tr style="border: solid 1px;font-size: 20px;color: turquoise;font-family: monospace;font-weight: bold;">
                                                <td style="text-align: center;height: 40px">UserName</td>
                                                <td style="text-align: center;">FileName</td>
                                                <td style="text-align: center;">Id</td>
                                                <td style="text-align: center;">Size</td>
                                             
                                                <td style="text-align: center;">Date</td>
                                                <td style="text-align: center;">Pack</td>
                                                <td style="text-align: center;">Cost</td>
                                                <td style="text-align: center;">Policy</td>
                                                <td style="text-align: center;">CSP</td>
                                                <td style="text-align: center;">Infrastructure</td>
                                                <td style="text-align: center;">Trigger</td></tr>
                                                <%

                                                    //String name = session.getAttribute("UID").toString();
                                                    String id1,name1, filename1, date1, size1, file_key1, broker1, server1,pack1,cost1,policy1 = null;
                                                    String sql = "select * from tblfile where broker='Permitted' and pack!='Null'";
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
                                             <%if(rs.getString("cloud")!=null){%>
                                             <%}else{%>
                                                <td style="height: 20px;text-align: center"><%=name1%></td>
                                                <td style="text-align: center" width='10%'><%=filename1%></td>
                                                <td style="text-align: center;" width='5%'><%=id1%></td>
                                                <td style="text-align: center;"><%=size1%></td>
                                              
                                                <td style="text-align: center;" width='9%'><%=date1%></td>
                                                <td style="text-align: center;" width='9%'><%=pack1%></td>
                                                <td style="text-align: center;" width='9%'><%=cost1%></td>
                                                <td style="text-align: center;" width='9%'><%=policy1%></td>
                                                <td style="text-align: center;"><%=broker1%></td>
                                                <td style="text-align: center;"><%=server1%></td>
                                                
                                                <td style="text-align: center;"><a href="setinfra.jsp?<%=filename1%>,<%=name1%>,<%=id1%>,<%=pack1%>,<%=cost1%>,<%=policy1%>#!/page_CHECK"><img src="images/cooltext337554295223657.png" height="50"></a></td></tr>
                                              
                                            <%
                                                    }}
                                                %>
</div>
                                        </table>
                                    </div>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </li>
                        
                        
                        <li id="page_CLIENTTERMS">
                            <a href="#!/page_BSPHOME" class="close"><span class="over"></span><span class="txt1"><img src="images/back-button.png" height="50" width="50"></span><span class="x1"></span></a>  
                            <div class="box">
                                 <div class="col1">

                                    <h2>Services List</h2>

                                    <div class="col3">
                                        <ul class="ul1">
                                            <li><a href="bsp.jsp?#!/page_CLIENTREQUEST">Access Customer Request</a></li>
                                            <li><a href="bsp.jsp#!/page_INFRAPOLICY">Infrastructure Resources</a></li>
                                            <li><a href="bsp.jsp#!/page_CLIENTTERMS">Customer Policy Terms</a></li>
                                            <li><a href="index.jsp#!/page_BSPLOGIN">Log Out</a></li>                                                                        
                                        </ul> 
                                    </div>

                                    <div class="clear"></div>
                                    
                                    <div class="clear"></div>

                                </div>
                                <div class="col0"></div>
                                <div class="col2">

                                    <h2>Infrastructure Storage for Customer Policy Terms</h2>

                                    <div class="scroll-pane"><div>

                                            <p class="h3"><font color="yellow">Amazon Web Services</p>

                                            <img src="images/amazon.jpg" height="100" alt="" class="left img1">
                                            <p class="h3">Total Storage</p>
                                            <p class="text">500TB</p>
                                            <p class="h3">Available Storage</p>
                                            <p class="text">450TB</p>
                                            <div class="clear"></div>
                                            <p class="text">
                                                Amazon Web Services, a collection of remote computing services, also called web services, make up a cloud-computing platform offered by Amazon.com. These services operate from 11 geographical regions across the world.
                                                Amazon Web Services offers reliable, scalable, and inexpensive cloud computing services. Free to join, pay only for what you use.
                                                Amazon Web Services offers a complete set of infrastructure and application services that enable you to run virtually everything in the cloud.</p>
                                            
                                            <br><br><p class="h3"><font color="yellow">Widows Azure</p>

                                            <img src="images/azure1.jpg" height="100" alt="" class="left img1">
                                            <p class="h3">Total Storage</p>
                                            <p class="text">800TB</p>
                                            <p class="h3">Available Storage</p>
                                            <p class="text">600TB</p>
                                            <div class="clear"></div>
                                            <p class="text">
                                                Microsoft Azure is an open, flexible, enterprise-grade cloud computing platform. Move faster, do ... Deploy Windows client apps in the cloud, run on any device.
                                                Windows Azure Virtual Machines comprise the Infrastructure as a Service (IaaS) offering from Microsoft for their public cloud.
                                                Microsoft Azure for DreamSpark gets you started with the services you need to ... NET services and mobile applications for Windows Phone, iOS and Android.</p>
                                            
                                            <br><br><p class="h3"><font color="yellow">DriveHQ</p>

                                            <img src="images/LogoUpdated.png" height="100" alt="" class="left img1">
                                            <p class="h3">Total Storage</p>
                                            <p class="text">1000TB</p>
                                            <p class="h3">Available Storage</p>
                                            <p class="text">835TB</p>
                                            <div class="clear"></div>
                                            <p class="text">
                                                Rackspace Inc. is a managed cloud computing company based in Windcrest, Texas, USA, a suburb of San Antonio, Texas.
                                                At Rackspace, a love for startups is part of our DNA. Let the Rackspace Startup Program help you make your dent in the universe.
                                                VMware Inc. and Rackspace Inc. have teamed up together to create a new, interoperable OpenStack cloud platform that was unveiled at #VMworld 2015 yesterday.
                                                </p>



                                        </div></div>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </li>
                        
                        
                        
                        
                           <li id="page_WINDOWSPOLICY">
                             
                                <div class="col2" style="margin-left: 40px">
                                    <p class="h3" style="margin-left: 180px">.</p><br><br>
                                               <p class="h3">
                                                <font color="yellow"><B> 
                                                    <script>alert('Connection Issue!.\n Windows Azure Service is currently unavailable.')</script>
                                                </p>

                                       
                            </div>
                        </li>
                        
                        
                        
                        
                           <li id="page_AMAZONPOLICY">
                            
                                <div class="col2" style="margin-left: 40px">
                                    <p class="h3" style="margin-left: 180px">Connection Issue!..</p><br><br>
 <p class="h3">
                                                    <script>alert('Connection Issue!.\n Amazon AWS Service is currently unavailable.')</script>
                                          
                                                </p>

                                      
                            </div>
                        </li>
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    </ul>
                </article>
                <!--content end -->

            </div>

            <footer>
                <nav class="menu">
                    <ul id="menu">
                        <li class="nav1"><a href="bsp.jsp#!/page_BSPHOME"><span class="over1"><span class="over2"></span></span><span class="txt1">Home</span><span class="txt2">Home</span></a></li>
                        <li class="nav2"><a href="bsp.jsp#!/page_INFRAPOLICY"><span class="over1"><span class="over2"></span></span><span class="txt1">Infrastructure Resources</span><span class="txt2">Infrastructure Resources</span></a></li>
                        <li class="nav3"><a href="bsp.jsp#!/page_CLIENTTERMS"><span class="over1"><span class="over2"></span></span><span class="txt1">Customer Policy Terms</span><span class="txt2">Customer Policy Terms</span></a></li>
                        <li class="nav4"><a href="bsp.jsp#!/page_CLIENTREQUEST"><span class="over1"><span class="over2"></span></span><span class="txt1">Customer Request</span><span class="txt2">Customer Request</span></a></li>
                        <li class="nav6"><a href="index.jsp#!/page_BSPLOGIN"><span class="over1"><span class="over2"></span></span><span class="txt1">Logout</span><span class="txt2">Logout</span></a></li>
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

