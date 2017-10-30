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
					<h3 class="text-themecolor m-b-0 m-t-0">All Grievances</h3>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
						<li class="breadcrumb-item active">Table</li>
					</ol>
				</div>







				<!-- Start Page Content -->
				<!-- ============================================================== -->
				<%
					StudentDetailsDao obj = new StudentDetailsDao();

					ArrayList<StudentDetails> al = obj.findAllByN();

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
								<h4 class="card-title">Studennt Lists</h4>
								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th>Enroll No</th>
												<th>Name</th>
												<th>Branch</th>
												<th>Sem</th>
												<th>Mobile</th>
												<th>Email</th>
												<th>Status</th>
											</tr>
										</thead>
										<tbody>
											<%
												for (StudentDetails gri : al) {
											%>

											<tr>
												<td><%=gri.getEnroll_no()%></td>
												<td><%=gri.getStu_name()%></td>
												<td><%=gri.getBranch()%></td>
												<td><%=gri.getSem()%></td>
												<td><%=gri.getStu_mobileno()%></td>
												<td><%=gri.getStu_email()%></td>

												<form action="verifystu.jsp">

													<input type="hidden" name="compi"
														value="<%=gri.getEnroll_no()%>">
													<td><input type="submit" value="Verify"></td>

												</form>

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

				<jsp:include page="adminfooter.jsp"></jsp:include>
			
</body>

</body>
</html>