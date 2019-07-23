
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>
<title>WD Assignment 2</title>
<link type="text/css" href="<c:url value='/resources/style.css' />"
	rel="stylesheet" />
<script src="<c:url value='/resourcse/script.js' />"
	type="text/javascript"></script>
</head>
<%
	String s = "";
	if (request.getAttribute("s") != null) {
		s = (String) request.getAttribute("s");
	}
%>
<body>
	<div class="container">
		<div class="lbg"></div>
		<div class="lbg2"></div>
		<div class="lO"></div>
		<div class="lC">
			<h1>Sign Up</h1>
			<h3><%=s%></h3>
			<h5>Lets take the first step.</h5>
			<div class="logo">
				<img
					src="http://i203.photobucket.com/albums/aa55/blackcat_070/logo-01_zps10zmysak.png">
			</div>
		</div>
		<form action="register" method="post">
			<div class="rightSec" id="first">
				<ul>
					<li><label> User name </label> <input type="text" name="name"
						autocomplete="off" required /></li>

					<li><label> Password </label> <input type="text"
						name="password" autocomplete="off" required /></li>
					<li><label> Confirm Password </label> <input type="text"
						name="password1" autocomplete="off" required /></li>
				</ul>
				<button type="submit" value="submit">Finish</button>
			</div>
		</form>		
	</div>
	<div class="progress_state">
		<div class="dot" id="dot1"></div>
		<div class="dot" id="dot2"></div>
		<div class="dot" id="dot3"></div>
		<div class="dot" id="dot4"></div>
		<div class="dot" id="dot5"></div>
	</div>

</body>

</html>