<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql_rt" %>

<!DOCTYPE html>
<!--[if IE 8]><html class="ie8 no-js" lang="en"><![endif]-->
<!--[if IE 9]><html class="ie9 no-js" lang="en"><![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- start: HEAD -->

<!-- Mirrored from www.cliptheme.com/preview/admin/clip-one/form_validation.html by HTTrack Website Copier/3.x [XR&CO'2010], Sat, 09 Aug 2014 11:33:14 GMT -->
<head>
<title>Delete Staff :: Vision Medicare</title>
<!-- start: META -->
<meta charset="utf-8" />
<!--[if IE]><meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1" /><![endif]-->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta content="" name="description" />
<meta content="" name="author" />
<!-- end: META -->
<!-- start: MAIN CSS -->
<link rel="stylesheet"
	href="assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="assets/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/fonts/style.css">
<link rel="stylesheet" href="assets/css/main.css">
<link rel="stylesheet" href="assets/css/main-responsive.css">
<link rel="stylesheet" href="assets/plugins/iCheck/skins/all.css">
<link rel="stylesheet"
	href="assets/plugins/bootstrap-colorpalette/css/bootstrap-colorpalette.css">
<link rel="stylesheet"
	href="assets/plugins/perfect-scrollbar/src/perfect-scrollbar.css">
<link rel="stylesheet" href="assets/css/theme_light.css" type="text/css"
	id="skin_color">
<link rel="stylesheet" href="assets/css/print.css" type="text/css"
	media="print" />
<!--[if IE 7]>
		<link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome-ie7.min.css">
		<![endif]-->
<!-- end: MAIN CSS -->
<!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
<link rel="stylesheet"
	href="assets/plugins/summernote/build/summernote.css">
<!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
<link rel="shortcut icon" href="favicon.ico" />
</head>
<% 
HttpSession ses=request.getSession(false);
String use=(String)ses.getAttribute("login");
if(use==null)
{
	request.getRequestDispatcher("/AdminLogin.jsp").forward(request,response);
}

%>
<sql:setDataSource var="ad_log" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/admin_hospital"
     user="root"  password="haresh" />

<sql:query dataSource="${ad_log}" var="result">
		select * from admin_dt where user='<%=use %>';
</sql:query>


<!-- end: HEAD -->
<!-- start: BODY -->
<body>
	<!-- start: HEADER -->
	<div class="navbar navbar-inverse navbar-fixed-top">
		<!-- start: TOP NAVIGATION CONTAINER -->
		<div class="container">
			<div class="navbar-header">
				<!-- start: RESPONSIVE MENU TOGGLER -->
				<button data-target=".navbar-collapse" data-toggle="collapse"
					class="navbar-toggle" type="button">
					<span class="clip-list-2"></span>
				</button>
				<!-- end: RESPONSIVE MENU TOGGLER -->
				<!-- start: LOGO -->
				<a class="navbar-brand" href="index.jsp"> <img
					style="height: 100px; width: 200px; margin-top: -25px"
					src="assets/images/Visionlogo.png" /> </a>
				<!-- end: LOGO -->
			</div>
			<div class="navbar-tools">
				<!-- start: TOP NAVIGATION MENU -->
				<ul class="nav navbar-right">
					<!-- start: USER DROPDOWN -->
					<li class="dropdown current-user"><a data-toggle="dropdown"
						data-hover="dropdown" class="dropdown-toggle"
						data-close-others="true" href="#"> <img
							src="assets/images/new_<%= use %>_1.jpg" class="circle-img"
							alt=""> <span class="username">
											<c:forEach var="row" items="${result.rows}">
												<c:out value="${row.Name}"></c:out>
											</c:forEach>

									</span>
									<i
							class="clip-chevron-down"></i> </a>
						<ul class="dropdown-menu">
							<li><a href="pages_user_profile.jsp"> <i
									class="clip-user-2"></i> &nbsp;My Profile </a></li>

							<li><a href="pages_messages.jsp"> <i
									class="clip-bubble-4"></i> &nbsp;My Messages (3) </a></li>
							<li class="divider"></li>
							<li><a href="Lock_Screen.jsp"><i class="clip-locked"></i>
									&nbsp;Lock Screen </a></li>
							<li><a href="AdminLoginConf.jsp"> <i class="clip-exit"></i>
									&nbsp;Log Out </a></li>
						</ul></li>
					<!-- end: USER DROPDOWN -->
					<!-- start: PAGE SIDEBAR TOGGLE -->

					<!-- end: PAGE SIDEBAR TOGGLE -->
				</ul>
				<!-- end: TOP NAVIGATION MENU -->
			</div>
		</div>
		<!-- end: TOP NAVIGATION CONTAINER -->
	</div>
	<!-- end: HEADER -->
	<!-- start: MAIN CONTAINER -->
	<div class="main-container">
		<div class="navbar-content">
			<!-- start: SIDEBAR -->
			<div class="main-navigation navbar-collapse collapse">
				<!-- start: MAIN MENU TOGGLER BUTTON -->

				<!-- end: MAIN MENU TOGGLER BUTTON -->
				<!-- start: MAIN NAVIGATION MENU -->
				<ul class="main-navigation-menu" style="margin-top: 20px;">
					<li><a href="index.jsp"><i class="clip-home-3"></i> <span
							class="title"> Home  </span><span class="selected"></span> </a></li>
					<li><a href="#"><i class="clip-home-3"></i> <span
							class="title"> Go to Client Side </span><span class="selected"></span>
					</a></li>
					<li><a href="javascript:void(0)"><i class="clip-screen"></i>
							<span class="title"> View Records </span><i class="icon-arrow"></i>
							<span class="selected"></span> </a>
						<ul class="sub-menu">
							<li><a href="ViewStaff.jsp"> <span
									class="title"> Staff Record </span></a></li>
							<li><a href="ViewDoctor.jsp"> <span
									class="title"> Doctor Record </span></a></li>
							<li><a href="ViewPatient.jsp"> <span
									class="title"> Patient Record </span></a></li>
							<li><a href="ViewMwdicine.jsp"> <span
									class="title"> Medicine Record </span> </a></li>
							<li><a href="ViewMedicalStore.jsp"> <span
									class="title"> Medical Store Record</span> </a></li>
							
						</ul></li>
					<li><a href="TrackAppointMent.jsp" target=""><i class="clip-cursor"></i> <span
							class="title"> Track Appointment </span><span class="selected"></span>
					</a></li>
					<li><a href="Schedule.jsp" target=""><i class="clip-cursor"></i> <span
							class="title"> Manage Scheduling </span><span class="selected"></span>
					</a></li>
					<li><a href="javascript:void(0)"><i class="clip-cog-2"></i>
							<span class="title"> Insert Entry </span><i class="icon-arrow"></i>
							<span class="selected"></span> </a>
						<ul class="sub-menu">
							<li><a href="NewDoctor.jsp"> <span class="title">
										Doctor </span> </a></li>
							<li><a href="NewStaff.jsp"> <span class="title">
										Staff </span> </a></li>
							<li><a href="NewMedicine.jsp"> <span class="title">
										Medicine </span> </a></li>
							<li><a href="NewMedicalStore.jsp"> <span class="title">
										Medical Store </span> </a></li>
							<li><a href="NewPatient.jsp"> <span class="title">
										Patient </span> </a></li>

						</ul></li>
					<li><a href="javascript:void(0)"><i class="clip-cog-2"></i>
							<span class="title"> Delete Entry </span><i class="icon-arrow"></i>
							<span class="selected"></span> </a>
						<ul class="sub-menu">
							<li><a href="DeleteDoctor.jsp"> <span class="title">
										Doctor </span> </a></li>
							<li><a href="DeleteStaff.jsp"> <span class="title">
										Staff </span> </a></li>
							<li><a href="DeleteMedicine.jsp"> <span class="title">
										Medicine </span> </a></li>
							<li><a href="DeleteMedicalStore.jsp"> <span class="title">
										Medical Store </span> </a></li>
							<li><a href="DeletePatient.jsp"> <span class="title">
										Patient </span> </a></li>

						</ul></li>
					<li><a href="javascript:void(0)"><i class="clip-cog-2"></i>
							<span class="title"> Update Entry </span><i class="icon-arrow"></i>
							<span class="selected"></span> </a>
						<ul class="sub-menu">
							<li><a href="UpdateDoctor.jsp"> <span class="title">
										Doctor </span> </a></li>
							<li><a href="UpdateStaff.jsp"> <span class="title">
										Staff </span> </a></li>
							<li><a href="UpdateMedicine.jsp"> <span class="title">
										Medicine </span> </a></li>
							<li><a href="UpdateMedicalStore.jsp"> <span class="title">
										Medical Store </span> </a></li>
							<li><a href="UpdatePatient.jsp"> <span class="title">
										Patient </span> </a></li>

						</ul></li>
<li><a href="summery.jsp" ><i class="clip-cog-2"></i>
							<span class="title"> Analytics </span><i class="icon-arrow"></i>
							</a></li>

					<li><a href="Visitor.jsp"><i class="clip-location"></i> <span
							class="title"> Number of Visitors </span> <span class="selected"></span>
					</a></li>
					<li><a href="ContactUs.jsp"><i class="clip-bars"></i> <span
							class="title">Contact Us</span> <span class="selected"></span> </a></li>
				</ul>
				<!-- end: MAIN NAVIGATION MENU -->
			</div>
			<!-- end: SIDEBAR -->
		</div>
		<!-- start: PAGE -->
		<div class="main-content">
			<div class="container">
				<!-- start: PAGE HEADER -->
				<div class="row">
					<div class="col-sm-12">

						<!-- start: PAGE TITLE & BREADCRUMB -->

						<div class="page-header">
							<h1>
								Delete Patient Records <small>to your database</small>
							</h1>
						</div>
						<!-- end: PAGE TITLE & BREADCRUMB -->
					</div>
				</div>
				<!-- end: PAGE HEADER -->
				<!-- start: PAGE CONTENT -->
				<div class="row">
					<div class="col-md-12">
						<!-- start: FORM VALIDATION 1 PANEL -->
						<div class="panel panel-default">
							<div class="panel-heading">
								<i class="fa fa-external-link-square"></i> Fill Here

							</div>
							<div class="panel-body">
								<h2>
									<i class="fa fa-pencil-square teal"></i> DELETION
								</h2>
								<p>Insert User Name to Delete Doctor's account from Vision
									Medicare.</p>
								<hr>
								<form action="Delete_Patient.jsp" role="form" id="form">
									<div class="row">
										<div class="col-md-2"></div>
										<div class="col-md-4">
											<div class="form-group">
												<label class="control-label"> User Name <span
													class="symbol required"></span> </label> <input type="text"
													placeholder="Insert User Name" class="form-control"
													id="usertname" name="User_name">
											</div>
										</div>
									</div>




									<div class="row">
										<div class="col-md-12">

											<div class="row">
												<div class="col-md-2"></div>

												<div class="col-md-4">
													<input type="submit" class="btn btn-orange btn-lg"
														value="&nbsp;&nbsp;Delete&nbsp;&nbsp;">
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="reset"
														class="btn btn-yellow btn-lg" value="Try Again">
												</div>
											</div>
								</form>
							</div>
						</div>
						<!-- end: FORM VALIDATION 1 PANEL -->
					</div>
				</div>
				<div class="row">
					<div class="col-md-12"></div>
				</div>
				<!-- end: PAGE CONTENT-->
			</div>
		</div>
		<!-- end: PAGE -->
	</div>
	<!-- end: MAIN CONTAINER -->
	<!-- start: FOOTER -->
	<div class="footer clearfix">
		<div class="footer-inner">2014 &copy; Vision Medicare by Advait
			Patel.</div>
		<div class="footer-items">
			<span class="go-top"><i class="clip-chevron-up"></i>
			</span>
		</div>
	</div>
	<!-- end: FOOTER -->
	<!-- start: RIGHT SIDEBAR -->

	<!-- end: RIGHT SIDEBAR -->
	<!-- start: MAIN JAVASCRIPTS -->
	<!--[if lt IE 9]>
		<script src="assets/plugins/respond.min.js"></script>
		<script src="assets/plugins/excanvas.min.js"></script>
		<script type="text/javascript" src="assets/plugins/jQuery-lib/1.10.2/jquery.min.js"></script>
		<![endif]-->
	<!--[if gte IE 9]><!-->
	<script src="assets/plugins/jQuery-lib/2.0.3/jquery.min.js"></script>
	<!--<![endif]-->
	<script src="assets/plugins/jquery-ui/jquery-ui-1.10.2.custom.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="assets/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"></script>
	<script src="assets/plugins/blockUI/jquery.blockUI.js"></script>
	<script src="assets/plugins/iCheck/jquery.icheck.min.js"></script>
	<script src="assets/plugins/perfect-scrollbar/src/jquery.mousewheel.js"></script>
	<script src="assets/plugins/perfect-scrollbar/src/perfect-scrollbar.js"></script>
	<script src="assets/plugins/less/less-1.5.0.min.js"></script>
	<script src="assets/plugins/jquery-cookie/jquery.cookie.js"></script>
	<script
		src="assets/plugins/bootstrap-colorpalette/js/bootstrap-colorpalette.js"></script>
	<script src="assets/js/main.js"></script>
	<!-- end: MAIN JAVASCRIPTS -->
	<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<script
		src="assets/plugins/jquery-validation/dist/jquery.validate.min.js"></script>
	<script src="assets/plugins/summernote/build/summernote.min.js"></script>
	<script src="assets/plugins/ckeditor/ckeditor.js"></script>
	<script src="assets/plugins/ckeditor/adapters/jquery.js"></script>
	<script src="assets/js/form-validation.js"></script>
	<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<script>
			jQuery(document).ready(function() {
				Main.init();
				FormValidator.init();
			});
		</script>
</body>
<!-- end: BODY -->
</html>