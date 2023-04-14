<!DOCTYPE html>
<html lang="en">
<head>
<title>Energy-aware cloud workflow applications scheduling with geo-distributed data</title>
<meta charset="utf-8">

<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<link rel="icon" href="images/services04.jpg" type="image/x-icon">


</head>
<body>
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
                        <li class="nav1"><a href="bsp.jsp#!/page_BSPHOME"><span class="txt1">Home</span><span class="txt2">BSP</span><div class="over1"></div><span class="over2"></span></a></li>
                        <li class="nav2"><a href="bsp.jsp#!/page_INFRAPOLICY"><span class="txt1">Infrastructure</span><span class="txt2">Resource Access</span><div class="over1"></div><span class="over2"></span></a></li>
                        <li class="nav3"><a href="bsp.jsp#!/page_CLIENTACCESS"><span class="txt1">Customer</span><span class="txt2">Policy Terms</span><div class="over1"></div><span class="over2"></span></a></li>
                        <li class="nav4"><a href="bsp.jsp#!/page_CLIENTREQUEST"><span class="txt1">Customer</span><span class="txt2">Request Access</span><div class="over1"></div><span class="over2"></span></a></li>
                        <li class="nav6"><a href="index.jsp#!/page_BSPLOGIN"><span class="txt1">Log out</span><span class="txt2">BSP</span><div class="over1"></div><span class="over2"></span></a></li>                
  </ul>
</div>

<!--content -->
<article id="content">

  <ul>
      <li id="page_SPLASH"></li>
      
      <li id="page_CHECK">
                            <a href="#!/page_BSPHOME" class="close"><span class="over"></span><span class="txt1">back</span><span class="x1"></span></a>  
                            <div class="box">
                                <div class="col1">

                                    <h2>Services List</h2>

                                    <div class="col3">
                                        <ul class="ul1">
                                            <li><a href="bsp.jsp?#!/page_CLIENTREQUEST">Access Customer Request</a></li>
                                            <li><a href="bsp.jsp#!/page_INFRAPOLICY">Infrastructure Resources</a></li>
                                            <li><a href="bsp.jsp#!/page_CLIENTACCESS">Customer Policy Terms</a></li>
                                            <li><a href="index.jsp#!/page_BSPLOGIN">Log Out</a></li>                                                                       
                                        </ul> 
                                    </div>

                                    <div class="clear"></div>





                                    <div class="clear"></div>

                                </div>
                                <div class="col0"></div>
                                <div class="col2" style="margin-left: 40px">

                                    <h2 style="margin-left: 20px">File Upload Request To Server</h2>

                                    <div id="fields">
                                                        
                                                        <%
                                                    String a = request.getQueryString();
                                                    System.out.println("aa"+a);
                                                    String[] ar = a.split(",");
                                                    String filename2 = ar[0];
                                                    String name2 = ar[1];
                                                    String id2 = ar[2];
                                                    String pack2 = ar[3];
                                                    String policy2 = ar[4];
                                                    String cost2 = ar[5];
                                                    
                                                    %>
                                                    
                                        <form action="updateinfra.jsp" method="post">
                                            <div class="clear"></div>
                                            <label style="margin-left: 150px;width: 100px; line-height:31px; color: yellow;font-size:20px;"><font size="9">File_name:</font></label>
                                            <INPUT style="margin-left: 30px;width:200px; height:29px; font-family:Arial, Helvetica, sans-serif; font-size:13px; color: #000; background: #f9f9fa; border: 1px solid #737e88; margin-bottom:5px; border-radius: 0px; -moz-border-radius: 0px; -webkit-border-radius: 0px;" readonly type="text" name="fname" value="<%=filename2%>">
                                            <div class="clear"></div>
                                            <label style="margin-left: 150px;width: 100px; line-height:31px; color:yellow;font-size:20px;">User_Name:</label>
                                            <INPUT style="margin-left: 15px; width:200px; height:29px; font-family:Arial, Helvetica, sans-serif; font-size:13px; color: #000; background: #f9f9fa; border: 1px solid #737e88; margin-bottom:5px; border-radius: 0px; -moz-border-radius: 0px; -webkit-border-radius: 0px;" readonly type="text" name="name" value="<%=name2%>">
                                            <div class="clear"></div>
                                            <label style="margin-left: 150px;width: 100px; line-height:31px; color:yellow;font-size:20px;">File Id:</label>
                                            <INPUT style="margin-left: 70px; width:200px; height:29px; font-family:Arial, Helvetica, sans-serif; font-size:13px; color: #000; background: #f9f9fa; border: 1px solid #737e88; margin-bottom:5px; border-radius: 0px; -moz-border-radius: 0px; -webkit-border-radius: 0px;" readonly type="text" name="id" value="<%=id2%>">
                                            <div class="clear"></div>
                                            <label style="margin-left: 150px;width: 100px; line-height:31px; color:yellow;font-size:20px;">Package:</label>
                                            <INPUT style="margin-left: 45px;width:200px; height:29px; font-family:Arial, Helvetica, sans-serif; font-size:13px; color: #000; background: #f9f9fa; border: 1px solid #737e88; margin-bottom:5px; border-radius: 0px; -moz-border-radius: 0px; -webkit-border-radius: 0px;" readonly type="text" name="pack" value="<%=pack2%>">
                                            <div class="clear"></div>
                                            <label style="margin-left: 150px;width: 100px; line-height:31px; color:yellow;font-size:20px;">Cost:</label>
                                            <INPUT style="margin-left: 80px; width:200px; height:29px; font-family:Arial, Helvetica, sans-serif; font-size:13px; color: #000; background: #f9f9fa; border: 1px solid #737e88; margin-bottom:5px; border-radius: 0px; -moz-border-radius: 0px; -webkit-border-radius: 0px;" readonly type="text" name="cost" value="<%=policy2%>">
                                            <div class="clear"></div>
                                            <label style="margin-left: 150px;width: 100px; line-height:31px; color:yellow;font-size:20px;">Policy:</label>
                                            <INPUT style="margin-left: 70px;width:200px; height:29px; font-family:Arial, Helvetica, sans-serif; font-size:13px; color: #000; background: #f9f9fa; border: 1px solid #737e88; margin-bottom:5px; border-radius: 0px; -moz-border-radius: 0px; -webkit-border-radius: 0px;" readonly type="text" name="policy" value="<%=cost2%>">
                                            <div class="clear"></div>
                                            <label style="margin-left: 150px; width: 100px; line-height:31px; color: #f9f9fa;font-size:20px;">Infrastructure:</label>
                                            <select style="margin-left: 5px;width:200px; height:29px; font-family:Arial, Helvetica, sans-serif; font-size:13px; color: #000; background: #f9f9fa; border: 1px solid #737e88; margin-bottom:5px; border-radius: 0px; -moz-border-radius: 0px; -webkit-border-radius: 0px;" name="infra">
                                                <option value="-1">Select User Type </option>
                                                <option value="Windows Azure">Windows Azure</option>
                                                <option value="Amazon AWS">Amazon</option>
                                                <option value="DriveHQ">DriveHQ</option>
                                                
                                            </select><br>
                                            <div class="left">
                                                <INPUT class="capthca" type="hidden" name="capthca" value=""> 
                                                <div class="clear"></div>                                             
                                                <br><INPUT style="margin-left: 300px;background-color: #045892;color: white;width: 110px;height: 40px;border-radius: 6px" type="submit" name="submit" value="Submit">
                                            </div>
                                            <img hidden src="captcha/captcha.html">
                                            <div class="clear"></div>
                                        </form>
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
                        <li class="nav1"><a href="bsp.jsp#!/page_BSPHOME"><span class="over1"><span class="over2"></span></span><span class="txt1">Home</span><span class="txt2">Home</span></a></li>
                        <li class="nav2"><a href="bsp.jsp#!/page_INFRAPOLICY"><span class="over1"><span class="over2"></span></span><span class="txt1">Infrastructure Resources</span><span class="txt2">Infrastructure Resources</span></a></li>
                        <li class="nav3"><a href="bsp.jsp#!/page_CLIENTACCESS"><span class="over1"><span class="over2"></span></span><span class="txt1">Customer Policy Terms</span><span class="txt2">Customer Policy Terms</span></a></li>
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
