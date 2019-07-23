<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.bean.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=devicÂ­Â­e-width, initial-scale=1">
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
<link type="text/css" href="<c:url value='/resources/style1.css' />"
	rel="stylesheet" />
</head>
<%
	User user = null;
	if (session.getAttribute("user") != null) {
		user = (User) session.getAttribute("user");
	}else{
		response.sendRedirect("");
	}
%>
<body>
<nav class="navbar">
	<ul class="nav-icons">

		<li><a href="#"><i class="fa fa-home"></i></a></li>
		<li><a href="#"><i class="fa fa-list-ul"></i></a></li>
		<li><a href="#"><i class="fa fa-envelope"></i></li>
		<li><a href="#"><i class="fa fa-gamepad"></i></a></li>

	</ul>

</nav>
</body>
</html>