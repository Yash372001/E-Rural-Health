<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.health.service.*" %>
    <%@ page import="java.sql.*"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Novus Admin Panel an Admin Panel Category Flat Bootstrap Responsive Website Template | Basic Forms :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Novus Admin Panel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- font CSS -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
 <!-- js-->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/modernizr.custom.js"></script>
<!--webfonts-->
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--//webfonts--> 
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->
<!-- Metis Menu -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
<link href="css/custom.css" rel="stylesheet">
<!--//Metis Menu -->
</head> 
<body class="cbp-spmenu-push">
	<div class="main-content">
		<!--left-fixed -navigation-->
		<div class=" sidebar" role="navigation">
            <div class="navbar-collapse">
				<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
					<ul class="nav" id="side-menu">
						<li>
							<a href="Addcase.html"><i class="fa fa-home nav_icon"></i> Add Case </a>
						</li>
						
						<li class="">
							<a href="Viewcase.jsp"><i class="fa fa-book nav_icon"></i> View Cases </a>
							
							<!-- /nav-second-level -->
						</li>
						<li class="">
							<a href="Admin.html"><i class="fa fa-book nav_icon"></i> Back </a>
							
							<!-- /nav-second-level -->
						</li>
		
						
						
							</ul>
						
						
					</ul>
					<div class="clearfix"> </div>
					<!-- //sidebar-collapse -->
				</nav>
			</div>
		</div>
		<!--left-fixed -navigation-->
		<!-- header-starts -->
		<div class="sticky-header header-section ">
			<div class="header-left">
				<!--toggle button start-->
				<button id="showLeftPush"><i class="fa fa-bars"></i></button>
				<!--toggle button end-->
				<!--logo -->
				<div class="logo">
					<a href="index.html">
						<h1>Rural</h1>
						<span>E Health</span>
					</a>
				</div>
				<!--//logo-->
				<!--search-box-->
				
				<div class="clearfix"> </div>
			</div>
			
				<!--notification menu end -->
				<div class="profile_details">		
					<ul>
						<li class="dropdown profile_details_drop">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
								<div class="profile_img">	
									
									<div class="user-name">
										<p>YASH</p>
										<span>Administrator</span>
									</div>
									<i class="fa fa-angle-down lnr"></i>
									<i class="fa fa-angle-up lnr"></i>
									<div class="clearfix"></div>	
								</div>	
							</a>
							<ul class="dropdown-menu drp-mnu">
								<li> <a href="#"><i class="fa fa-cog"></i> Settings</a> </li> 
								<li> <a href="#"><i class="fa fa-user"></i> Profile</a> </li> 
								<li> <a href="#"><i class="fa fa-sign-out"></i> Logout</a> </li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="clearfix"> </div>	
			</div>
			<div class="clearfix"> </div>	
		</div>
		<!-- //header-ends -->
		<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page">
				<div class="forms">
					<h3 class="title1">Add Case User</h3>
					<div class="form-grids row widget-shadow" data-example-id="basic-forms"> 
						<div class="form-title">
							<h4>Patient User Form :</h4>
						</div>
						<div class="form-body">
							<form action="Addcase" method="post">
							 <div class="form-group">
							 <label for="exampleInputEmail1">Patient Name</label>
							  <input type="text" name="pname" class="form-control" id="exampleInputEmail1" placeholder="Patient Name">
							  <label for="exampleInputEmail1">Age</label>
							  <input type="text" name="age" class="form-control" id="exampleInputEmail1" placeholder="Enter Age">
							  <label for="exampleInputEmail1">Gender</label>
							  <input type="text" name="gen" class="form-control" id="exampleInputEmail1" placeholder="Enter Gender">
							  <label for="exampleInputEmail1">Address</label>
							  <input type="text" name="addr" class="form-control" id="exampleInputEmail1" placeholder="Address">
							  <label for="exampleInputEmail1">Contact No.</label>
							  <input type="text" name="cno" class="form-control" id="exampleInputEmail1" placeholder="Contact No.">
							 
							<li> <label>Select Symptom 1</label>
			 
                  
                           <% 
 							 Connection con=ConnectDB.getConnect();
 			     				PreparedStatement ps=con.prepareStatement("SELECT * FROM disease_set");
 							    ResultSet rs=ps.executeQuery();
 						  %>
 						
       								 <select name="symp1"> 
       										 <%  while(rs.next()){ %>
          									  <option><%= rs.getString(2)%></option>
      								                          <% } %>
      								  </select> 
                        
                 </li>
                     
                       <li> <label>Select Symptom 2</label>
                   
                           <% 
 							 Connection con2=ConnectDB.getConnect();
 			     				PreparedStatement ps2=con2.prepareStatement("SELECT * FROM disease_set");
 							    ResultSet rs2=ps2.executeQuery();
 						  %>
 					
       								 <select name="symp2">
       										 <%  while(rs2.next()){ %>
          									  <option><%= rs2.getString(3)%></option>
      								                          <% } %>
      					           </select> 
                         </li>
                      
                       <li> <label>Select Symptom 3</label>

                        
                           <% 
 							 Connection con3=ConnectDB.getConnect();
 			     				PreparedStatement ps3=con3.prepareStatement("SELECT * FROM disease_set");
 							    ResultSet rs3=ps3.executeQuery();
 						  %>
 							 <select name="symp3">
       										 <%  while(rs3.next()){ %>
          									  <option><%= rs3.getString(4)%></option>
      								                          <% } %>
      								  </select>
      								  </li>
							   </div> 
							    <div class="form-group"> 
							     <button type="submit" class="btn btn-default">Submit</button> 
							     </form> 
						</div>
					</div>
					
					
					
								
						
		<!--footer-->
		
        <!--//footer-->
	</div>
	<!-- Classie -->
		<script src="js/classie.js"></script>
		<script>
			var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				body = document.body;
				
			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};
			
			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
			}
		</script>
	<!--scrolling js-->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!--//scrolling js-->
	<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.js"> </script>
</body>
</html>