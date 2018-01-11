<%@ page language="java"
	import="java.util.*,com.gs.jdbc.entity.*,com.gs.jdbc.dao.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="adminheader.jsp"></jsp:include>
<body>
<jsp:include page="adminsidenav.jsp"></jsp:include>

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
						<h3 class="text-themecolor m-b-0 m-t-0">Adminstrator Profile</h3>
						<ol class="breadcrumb">
							<!-- <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
							<li class="breadcrumb-item active">Table</li> -->
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
		 <!-- ============================================================== -->



<!-- Start Page Content -->
				<!-- ============================================================== -->
				<%
		
				String obj1 = (String) session.getAttribute("id");
					AdminDetailsDao obj = new AdminDetailsDao();

					ArrayList<AdminDetails> al = obj.findAll();

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
								<h4 class="card-title">Profile</h4>
								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th>Name</th>
												<th>Designation</th>
												<th>Mobile</th>
												<th>Email</th>
											
											</tr>
										</thead>
										<tbody>
											<%
												for (AdminDetails gri : al) {
											%>

											<tr>
												
												<td><%=gri.getAd_name()%></td>
												<td><%=gri.getDesign()%></td>
												<td><%=gri.getAd_mobileno()%></td>
												<td><%=gri.getAd_email()%></td>

												

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
				</div></div>
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
		<jsp:include page="adminfooter.jsp"></jsp:include>
</body>

</body>
</html>