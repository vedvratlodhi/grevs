<%@ page language="java"
	import="java.util.*,com.gs.jdbc.entity.*,com.gs.jdbc.dao.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="../assets/images/favicon.png">
<title>Admin Pannel</title>
<!-- Bootstrap Core CSS -->
<link href="../assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom CSS -->
<link href="css/style.css" rel="stylesheet">
<!-- You can change the theme colors from here -->
<link href="css/colors/blue.css" id="theme" rel="stylesheet">
</head>
<body>
<body class="fix-header card-no-border">
	<!-- ============================================================== -->
	<!-- Preloader - style you can find in spinners.css -->
	<!-- ============================================================== -->
	<div class="preloader">
		<svg class="circular" viewBox="25 25 50 50"> <circle
			class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2"
			stroke-miterlimit="10" /> </svg>
	</div>
	<!-- ============================================================== -->
	<!-- Main wrapper - style you can find in pages.scss -->
	<!-- ============================================================== -->
	<div id="main-wrapper">
		<!-- ============================================================== -->
		<!-- Topbar header - style you can find in pages.scss -->
		<!-- ============================================================== -->
		<header class="topbar"> <nav
			class="navbar top-navbar navbar-toggleable-sm navbar-light"> <!-- ============================================================== -->
		<!-- Logo --> <!-- ============================================================== -->
		<div class="navbar-header">
			<a class="navbar-brand" href="adminpannel.jsp"> <!-- Logo icon --> <b>
					<!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
					<!-- Dark Logo icon --> 
				<h4>Admin Pannel</h4>
			</b> <!--End Logo icon --> <!-- Logo text --> <span> <!-- dark Logo text -->
					
			</span>
			</a>
		</div>
		<!-- ============================================================== -->
		<!-- End Logo --> <!-- ============================================================== -->
		<div class="navbar-collapse">
			<!-- ============================================================== -->
			<!-- toggle and nav items -->
			<!-- ============================================================== -->
			<ul class="navbar-nav mr-auto mt-md-0 ">
				<!-- This is  -->
				<li class="nav-item"><a
					class="nav-link nav-toggler hidden-md-up text-muted waves-effect waves-dark"
					href="javascript:void(0)"><i class="ti-menu"></i></a></li>
				<li class="nav-item hidden-sm-down">
					<form class="app-search p-l-20">
						<input type="text" class="form-control"
							placeholder="Search for..."> <a class="srh-btn"><i
							class="ti-search"></i></a>
					</form>
				</li>
			</ul>
			<!-- ============================================================== -->
			<!-- User profile and search -->
			<!-- ============================================================== -->
			<ul class="navbar-nav my-lg-0">
				<li class="nav-item dropdown"><a href="NewFile.jsp">Logout
						</a> <!--   <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark" href="NewFile.jsp" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Logout</a>
                       --></li>
			</ul>
		</div>
		</nav> </header>
		<!-- ============================================================== -->
		<!-- End Topbar header -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Left Sidebar - style you can find in sidebar.scss  -->
		<!-- ============================================================== -->
		<aside class="left-sidebar"> <!-- Sidebar scroll-->
		<div class="scroll-sidebar">
			<!-- Sidebar navigation-->
			<nav class="sidebar-nav">
			<ul id="sidebarnav">

				<li><a href="stuprofile.jsp" class="waves-effect"><i
						class="fa fa-user m-r-10" aria-hidden="true"></i>My Account</a></li>
				<li><a href="adminpannel.jsp" class="waves-effect"><i
						class="fa fa-table m-r-10" aria-hidden="true"></i>Grievances</a></li>
				<li><a href="replygrievance.jsp" class="waves-effect"><i
						class="fa fa-font m-r-10" aria-hidden="true"></i>Reply</a>
				</li>
				<!--            <li>
                            <a href="map-google.html" class="waves-effect"><i class="fa fa-globe m-r-10" aria-hidden="true"></i>Google Map</a>
                        </li>
                        <li>
                            <a href="pages-blank.html" class="waves-effect"><i class="fa fa-columns m-r-10" aria-hidden="true"></i>Blank Page</a>
                        </li>
                        <li>
                            <a href="pages-error-404.html" class="waves-effect"><i class="fa fa-info-circle m-r-10" aria-hidden="true"></i>Error 404</a>
                        </li> -->
			</ul>
			<!--  <div class="text-center m-t-30">
                        <a href="https://wrappixel.com/templates/monsteradmin/" class="btn btn-danger"> Upgrade to Pro</a>
                    </div>--> </nav>
			<!-- End Sidebar navigation -->
		</div>
		<!-- End Sidebar scroll--> </aside>
		<!-- ============================================================== -->
		<!-- End Left Sidebar - style you can find in sidebar.scss  -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Page wrapper  -->
		<!-- ============================================================== -->
		<div class="page-wrapper">
			<!-- ============================================================== -->
			<!-- Container fluid  -->
			<!-- ============================================================== -->
			<div class="container-fluid">
				<!-- ============================================================== -->
				<!-- Bread crumb and right sidebar toggle -->
				<!-- ============================================================== -->
				<div class="row page-titles">
					<div class="col-md-6 col-8 align-self-center">
						<h3 class="text-themecolor m-b-0 m-t-0">Student Grievances</h3>
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
							<li class="breadcrumb-item active">Table</li>
						</ol>
					</div>
					<!--   <div class="col-md-6 col-4 align-self-center">
                        <a href="https://wrappixel.com/templates/monsteradmin/" class="btn pull-right hidden-sm-down btn-success"> Upgrade to Pro</a>
                    </div>-->
				</div>
				<!-- ============================================================== -->
				<!-- End Bread crumb and right sidebar toggle -->
				<!-- ============================================================== -->
				<!-- ============================================================== -->
				<!-- Start Page Content -->
				<!-- ============================================================== -->
				<%
					GrievencesDao obj = new GrievencesDao();
					String id = (String) session.getAttribute("id");
					System.out.println(id);
					ArrayList<Grievences> al = obj.findAll();

					if (al == null) {
				%>
				<h1>Record not found</h1>
				<%
					} else {
						System.out.println(al);
				%>
				<div class="row">
					<!-- column -->
					<div class="col-sm-12">
						<div class="card">
							<div class="card-block">
								<h4 class="card-title">Grievances</h4>
								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												
												<th>Complaint No</th>
												<th>Subject</th>
												<th>Date</th>
												<th>Grievance</th>
												
												<th>Reply</th>
											</tr>
										</thead>
										<tbody>
											<%
												for (Grievences gri : al) {
											%>

											<tr>


												<td><%=gri.getComplaint_no()%></td>
												<td><%=gri.getSubject()%></td>
												<td><%=gri.getGdate()%></td>
												<td><%=gri.getGrievdetails()%></td>
												<%-- <td>
													<%
														if (gri.getStatus() == 'H') {
													%> pending <%
														} else {
													%> replied <%
														}
													%>
												</td> --%>
												<td><a href= replygrievance.jsp>Reply</a></td>
											</tr>
											<%
												}
												}
											%>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- ============================================================== -->
				<!-- End PAge Content -->
				<!-- ============================================================== -->
			</div>
			<!-- ============================================================== -->
			<!-- End Container fluid  -->
			<!-- ============================================================== -->
			<!-- ============================================================== -->
			<!-- footer -->
			<!-- ============================================================== -->
			<footer class="footer text-center"> © 2017 BIRTS </footer>
			<!-- ============================================================== -->
			<!-- End footer -->
			<!-- ============================================================== -->
		</div>
		<!-- ============================================================== -->
		<!-- End Page wrapper  -->
		<!-- ============================================================== -->
	</div>
	<!-- ============================================================== -->
	<!-- End Wrapper -->
	<!-- ============================================================== -->
	<!-- ============================================================== -->
	<!-- All Jquery -->
	<!-- ============================================================== -->
	<script src="../assets/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap tether Core JavaScript -->
	<script src="../assets/plugins/bootstrap/js/tether.min.js"></script>
	<script src="../assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- slimscrollbar scrollbar JavaScript -->
	<script src="js/jquery.slimscroll.js"></script>
	<!--Wave Effects -->
	<script src="js/waves.js"></script>
	<!--Menu sidebar -->
	<script src="js/sidebarmenu.js"></script>
	<!--stickey kit -->
	<script
		src="../assets/plugins/sticky-kit-master/dist/sticky-kit.min.js"></script>
	<!--Custom JavaScript -->
	<script src="js/custom.min.js"></script>
	<!-- ============================================================== -->
	<!-- Style switcher -->
	<!-- ============================================================== -->
	<script src="../assets/plugins/styleswitcher/jQuery.style.switcher.js"></script>
</body>

</body>
</html>