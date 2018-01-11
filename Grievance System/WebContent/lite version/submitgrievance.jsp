<%@ page language="java"
	import="java.util.*,com.gs.jdbc.entity.*,com.gs.jdbc.dao.*,java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="stuheader.jsp"></jsp:include>
<body>
<jsp:include page="stusidenav.jsp"></jsp:include>
				<!-- ============================================================== -->
				<!-- Start Page Content -->
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
				<form action="postGrievance.jsp" method="post">
					<input name="__RequestVerificationToken" type="hidden" value="" />
					<div class="form-horizontal">

						



						<div class="form-group">
							<label class="control-label col-md-2" for="GrievanceTypeID">Subject</label>
							<div class="col-md-10">
								<select class="form-control select" data-val="true"
									data-val-required="The Grievance Type field is required."
									id="GrievanceTypeID" name="Subject">
									<option value="grievance regarding college transportation">grievance regarding college transportation</option>
									<option value="Grievance related to Admission">Grievance related to Admission</option>
									<option value="Grievance related to Victimization">Grievance related to Victimization</option>
									<option value="Grievance related to Attendance">Grievance related to Attendance</option>
									<option value="Grievance related to charging of fees">Grievance related to charging of fees</option>
									<option value="Grievance regarding non-transparent or unfair evaluation process">Grievance regarding non-transparent or unfair evaluation process</option>
									<option value="Non-observation of AICTE norms and standards">Non-observation of AICTE norms and standards</option>
									<option value="Refusal to return documents such as certificates">Refusal to return documents such as certificates</option>
									<option value="Grievance related to harassment by students or teachers">Grievance related to harassment by students or teachers</option>
									<option value="Grievance related to provision of student amenities and quality education as promised or required to be provided">Grievance related to provision of student amenities and quality education as promised or required to be provided</option>
									<option value="Non-payment or Delay in payment of scholarships">Non-payment or Delay in payment of scholarships</option>
									<option value="Grievance on discrimination by students from SC/ST/Minority/Women/Disabled Categories">Grievance on discrimination by students from SC/ST/Minority/Women/Disabled Categories</option>
									<option value="college timing">college timing</option>
								  <option value="Other">Other</option>
								
								</select> <span class="field-validation-valid"
									data-valmsg-for="GrievanceTypeID" data-valmsg-replace="true"
									style="color: red"></span>
							</div>
						</div>

						<!--  <div class="form-group">
            <label class="control-label col-md-2" for="Subject">Subject</label>
            <div class="col-md-10">
                <input class="form-control" data-val="true" data-val-required="The Subject field is required." id="Subject" maxlength="250" name="Subject" type="text" value="" /> (Max 200 characters)
                <span class="field-validation-valid" data-valmsg-for="Subject" data-valmsg-replace="true" style="color:red"></span>
            </div>
        </div> -->

						<div class="form-group">
							<label class="control-label col-md-2" for="PostedDetails">Posted
								Details</label>
							<div class="col-md-10">
								<textarea class="form-control" cols="20" data-val="true"
									data-val-required="The Posted Details field is required."
									id="PostedDetails" name="PostedDetails" rows="2">
</textarea>
								<span class="field-validation-valid"
									data-valmsg-for="PostedDetails" data-valmsg-replace="true"
									style="color: red"></span>
							</div>
						</div>



						<div class="form-group">
							<div class="col-md-offset-2 col-md-10">
								<input type="submit" value="Create" class="btn btn-default" />
							</div>
						</div>
					</div>
				</form>
				<!-- ============================================================== -->
				<!-- End PAge Content -->
				<!-- ============================================================== -->
			</div>
			</div>
			<!-- ============================================================== -->
			<!-- End Container fluid  -->
			<!-- ============================================================== -->
			<!-- ============================================================== -->
	<jsp:include page="stufooter.jsp"></jsp:include>