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

<head>
<title>Vision Medicare - Welcome Admin</title>
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
<!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
</head>
<% 
HttpSession ses=request.getSession(false);
String use=(String)ses.getAttribute("login");
if(use!=null)
{
	request.getRequestDispatcher("/index.jsp").forward(request,response);
}

%>
<!-- end: HEAD -->
<!-- start: BODY -->
<body class="login example1">
	<div
		class="main-login col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
		<div class="logo">
			<img style="height: 200px; width: 300px; margin-top: -25px"
				src="assets/images/Visionlogo.png" />
		</div>
		<!-- start: LOGIN BOX -->
		<div class="box-login" style="margin-top: -50px;">
			<h3>Sign in to your account</h3>
			<p>Please enter your name and password to log in.</p>
			<form class="form-login" action="forLogin" method="get">
				<div class="errorHandler alert alert-danger no-display">
					<i class="fa fa-remove-sign"></i> You have some form errors. Please
					check below.
				</div>
				<fieldset>
					<div class="form-group">
						<span class="input-icon"> <input type="text"
							class="form-control" name="username"
							placeholder="Username"> <i class="fa fa-user"></i> </span>
						<!-- To mark the incorrectly filled input, you must add the class "error" to the input -->
						<!-- example: <input type="text" class="login error" name="login" value="Username" /> -->
					</div>
					<div class="form-group form-actions">
						<span class="input-icon"> <input type="password"
							class="form-control" name="password"
							placeholder="Password"> <i class="fa fa-lock"></i> <a
							class="forgot" href="#"> I forgot my password </a> </span>
					</div>
					<div class="form-actions">
						<label for="remember" class="checkbox-inline"> <input
							type="checkbox" class="green remember" id="remember"
							name="remember"> Keep me signed in </label>
						<button type="submit" class="btn btn-bricky btn-lg pull-right">
							Login <i class="fa fa-arrow-circle-right"></i>
						</button>
					</div>
					<div class="new-account">
						Don't have an account yet? <a href="#" class="register">
							Create an account </a>
					</div>
				</fieldset>
			</form>
		</div>
		<!-- end: LOGIN BOX -->
		<!-- start: COPYRIGHT -->
		<div class="copyright">2014 &copy; Vision Medicare by Advait
			Patel.</div>
		<!-- end: COPYRIGHT -->
	</div>
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
	<script src="assets/js/login.js"></script>
	<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<script>
			jQuery(document).ready(function() {
				Main.init();
				Login.init();
			});
		</script>
</body>
<!-- end: BODY -->
`
</html>