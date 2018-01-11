<%@ page language="java"
	import="java.util.*,com.gs.jdbc.entity.*,com.gs.jdbc.dao.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="stuheader.jsp"></jsp:include>
<body>
	<jsp:include page="stusidenav.jsp"></jsp:include>
	<style>
	element.style {
    position: relative;
    overflow: visible;
}
@media (max-width: 1280px)
app.bundle.css:1
#content_type.boxed-leftnav .content-body .card .card-body {
    padding: 0 20px;
}
@media (max-width: 992px)
app.bundle.css:1
#content_type.boxed-leftnav .content-body .card-body {
    padding: 20px 20px 0;
}
app.bundle.css:1
#content_type.boxed-leftnav .content-body .card-body {
    padding: 50px 25px 0;
    height: calc(100vh - 260px);
    overflow-x: hidden;
}
@media (max-width: 767px)
app.bundle.css:6
.card .card-body {
    padding: 15px;
}
app.bundle.css:6
.card .card-body {
    padding: 15px 20px;
}
app.bundle.css:1
.mw-lightGray {
    background: #EEF5F9!important;
    color: #6f829c!important;
}
	
	@media (max-width: 768px)
app.bundle.css:6
.app-chat #content_outer_wrapper #content_wrapper #content #content_type.boxed-leftnav #chat-wrapper {
    padding-left: 0!important;
}
@media (max-width: 1280px)
app.bundle.css:6
.app-chat #content_outer_wrapper #content_wrapper #content #content_type.boxed-leftnav #chat-wrapper {
    position: relative;
    bottom: initial;
    padding-left: 50px;
}

#chat-wrapper .chat-row.first {
    margin-top: 15px;
}
app.bundle.css:6
#chat-wrapper .chat-row {
    padding: 12px 0;
    margin: 65px 0;
}
app.bundle.css:1
*, :active, :focus {
    outline: 0;
}
.card-title{
padding:10px;
border-bottom:2px #d7e4f4 solid;
}
#chat-wrapper .chat-row .bubble {
    max-width:60%;
    display: inline;
    background: #28bebd;
    float: right;
    color: #fff;
    border-radius: 5px;
    padding: 10px;
    margin: 0 10px 5px 0;
    font-size: 14px;
    position: relative;
    top: -5px;
}
app.bundle.css:1
*, :active, :focus {
    outline: 0;
}

#chat-wrapper .chat-row.response .bubble_response {
    max-width: 60%;
    display: inline;
    background: #d7e4f4;
    float: left;
    color: #607188;
    border-radius: 5px;
    padding: 10px;
    margin: 0 0 5px 10px;
    font-size: 14px;
    position: relative;
    top: -5px;
}
app.bundle.css:1
*, :active, :focus {
    outline: 0;
}
	</style>
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
			<%-- <%
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
			%> --%>
			<!-- <div class="row">
				column
				
					<div class="card">
						
							<h4 class="card-title" >Grievances</h4>
								<div class="card">
							<section id="chat-wrapper">
											<div class="chat-row first col-sm-12">
												<img src="assets/img/backgrounds/18.jpg" alt="" class="img-circle img-sm pull-right mCS_img_loaded">
												<div class="bubble">
													<div class="message">
														<p>Hey, I'm back in town...you wanna meet-up for coffee?</p>
													</div>
													<div class="date">
													</div>
												</div>
											</div>
											<div class="chat-row response col-sm-12">
												<img src="assets/img/profiles/07.jpg" alt="" class="img-circle img-sm pull-left mCS_img_loaded">
												<div class="bubble_response">
													<div class="message">
														<p>Yeah that sounds great! Have a new project to run by you.</p>
													</div>
													<div class="date">
													</div>
												</div>
											</div>
											<div class="chat-row col-sm-12">
												<img src="assets/img/profiles/18.jpg" alt="" class="img-circle img-sm pull-right mCS_img_loaded">
												<div class="bubble">
													<div class="message">
														<p>Awesome, let's meet at the coffee shop on South Brodway. What time works best for you?</p>
													</div>
													<div class="date">
													</div>
												</div>
											</div>
											<div class="chat-row response col-sm-12">
												<img src="assets/img/profiles/07.jpg" alt="" class="img-circle img-sm pull-left mCS_img_loaded">
												<div class="bubble_response">
													<div class="message">
														<p>Have a meeting today, but I'll be free around 4pm.</p>
													</div>
													<div class="date">
													</div>
												</div>
											</div>
											
											
											
											
											<div class="chat-row col-sm-12">
												<img src="assets/img/profiles/18.jpg" alt="" class="img-circle img-sm pull-right mCS_img_loaded">
												<div class="bubble">
													<div class="message">
														<p>Perfect, see ya then.</p>
													</div>
													<div class="date">
													</div>
												</div>
											</div>
											
											
										</section>
						
						</div>
				</div>
			</div>
 -->
			<%
					/* Grievences gri = new Grievences(); */
					GrievencesDao gd = new GrievencesDao();
					Grievences gri =gd.findByComplaintno(request.getParameter("gid"));
					
					GChatDAO gcd= new GChatDAO();
					List<GChat> g=null;
					 g =gcd.getAllChatByComplaintId(request.getParameter("gid"));
					 
					
					
					int [] a={0,1};
				%>
			
			<div class="card">
				<h4 class="card-title"><%=gri.getEnroll_no() %></h4>
				<h4 class="card-title"><%=gri.getSubject()%></h4>
				<div class="card">
					<section id="chat-wrapper">
					<div class="row">

						<div class="col-sm-12">
						<div class="chat-row response ">
							<div class="bubble">
								<div class="message">
									<p><%=gri.getGrievdetails()%><%System.out.println(gri.getGrievdetails()); %></p>
								</div>
								<div class="date"></div>
							</div>
						</div>
						</div>


<% 	for(GChat g1:g){ 
											if(g1.getChatBY().equals("s")){
											%>
											<!-- post from admin -->
											
						<div class="col-sm-12">
						<div class="chat-row ">
							<div class="bubble ">
								<div class="message">
									<p>Me: <%=g1.getCReply() %> </p>
								</div>
								<div class="date"></div>
							</div>
						</div>
						</div>
						<%}else{ %>
			<!-- post from Student -->
						<div class="col-sm-12">
						<div class="chat-row response ">
							<div class="bubble_response ">
								<div class="message">
									<p><%=g1.getCReply() %> </p>
								</div>
								<div class="date"></div>
							</div>
						</div>
						
						</div>
						<%}} %>
						
						
					</div>
					
				<%-- <form action="postmidreply.jsp" method="post">
					<input name="__RequestVerificationToken" type="hidden" value="" />
					<div class="form-horizontal">
						
       
        
        <input type="hidden" name="comp" value="<%=request.getParameter("gid")%>" >
        <input type="hidden" name="status" value="s" >

						<div clas.ges="form-group">
							<label class="control-label col-md-2" for="PostedReply">Post
								Reply</label>
							<div class="col-md-10">
								<textarea class="form-control" cols="20" data-val="true"
									data-val-required="The Posted Details field is required."
									id="PostedDetails" name="postreply" rows="2">
</textarea>
								<span class="field-validation-valid"
									data-valmsg-for="PostedDetails" data-valmsg-replace="true"
									style="color: red"></span>
							</div>
						</div>



						<div class="form-group">
							<div class="col-md-offset-2 col-md-10">
								<input type="submit" value="Submit Reply" class="btn btn-default" />
							</div>
						</div>
					</div>
				</form> --%>		  <%if(gri.getStatus()=='c')
                {%>
                	<span class="field-validation-valid"
							data-valmsg-for="PostedDetails" data-valmsg-replace="true"
							style="color: red">Grievance Closed</span>
               <%}
                else{ %>
				<form action="postmidreply.jsp" method="post">
					<input name="__RequestVerificationToken" type="hidden" value="" />
					<div class="form-horizontal">
						
       
        
        <input type="hidden" name="comp" value="<%=request.getParameter("gid")%>" >
        <input type="hidden" name="status" value="s" >

						<div clas.ges="form-group">
							<label class="control-label col-md-2" for="PostedReply">Post
								Reply</label>
							<div class="col-md-10">
								<textarea class="form-control" cols="20" data-val="true"
									data-val-required="The Posted Details field is required."
									id="PostedDetails" name="postreply" rows="2">
</textarea>
								<span class="field-validation-valid"
									data-valmsg-for="PostedDetails" data-valmsg-replace="true"
									style="color: red"></span>
							</div>
						</div>

             
						<div class="form-group">
							<div class="col-md-offset-2 col-md-10">
								<input type="submit" value="Submit Reply" class="btn btn-default" />
							</div>
						</div>
					</div>
				</form>
				<%} %>
					</section>
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