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
<title></title>
<!-- Bootstrap Core CSS -->
<link href="../assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom CSS -->
<link href="css/style.css" rel="stylesheet">
<!-- You can change the theme colors from here -->
<link href="css/colors/blue.css" id="theme" rel="stylesheet">
</head>
<body>
<jsp:include page="stusidenav.jsp"></jsp:include>
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
					ArrayList<Grievences> al = obj.findAllByStudent(id);

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
												<th>Status</th>
												<th>Details</th>
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
												<td>
													<%
														if (gri.getStatus() == 'H') {
													%> pending <%
														} else {
													%> replied <%
														}
													%>
												</td>
												<td><a href= viewreply.jsp?gid=<%=gri.getComplaint_no()%>>View</a></td>
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
	<jsp:include page="stufooter.jsp"></jsp:include>