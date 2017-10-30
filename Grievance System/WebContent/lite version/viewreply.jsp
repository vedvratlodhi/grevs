<%@ page language="java"
	import="java.util.*,com.gs.jdbc.entity.*,com.gs.jdbc.dao.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="stuheader.jsp"></jsp:include>
<body>
	<jsp:include page="stusidenav.jsp"></jsp:include>
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
			<!-- Start Page Content -->
			<!-- ============================================================== -->
			<%
				GrievencesDao obj = new GrievencesDao();
				String id = (String) session.getAttribute("id");
				System.out.println(id);
				ArrayList<Grievences> al = obj.findAllGrevienceByCno(id,request.getParameter("gid"));
                  System.out.println(al);
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
											<td><%=gri.getReply()%></td>
											<%-- 	<td>
													<%
														if (gri.getReply() == "NULL") {
													%> Not Yet Replied<%
														} else {
													%> <%gri.getReply(); %> <%
														}
													%>
												</td> --%>
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