<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Login - Pugb</title>
<meta name="viewport" content="width=devic­­e-width, initial-scale=1">
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
<link type="text/css" href="<c:url value='/resources/style1.css' />"
	rel="stylesheet" />
</head>
<body>


<nav class="navbar">

	<form class="search-bar">
		<i class="fa fa-search"></i>
		<input type ="search" name="search" placeholder="Search PUGB">
		<button type="submit">Search</button>
	</form>

	<ul class="nav-icons">

		<li><a href="#"><i class="fa fa-home"></i></a></li>
		<li><a href="#"><i class="fa fa-list-ul"></i></a></li>
		<li><a href="#"><i class="fa fa-envelope"></i></li>
		<li><a href="#"><i class="fa fa-gamepad"></i></a></li>

	</ul>

</nav>

<form class="login" action="login" method="post">
	
	<div class="logo">
		<img src="https://gamepedia.cursecdn.com/pubg_esports_gamepedia_en/thumb/f/fe/Imba_PUBG_Super_League_logo.png/220px-Imba_PUBG_Super_League_logo.png?version=68966c167a829149a315139cf2dc837d">
	</div>

	<div class="inputs">
		<input type="text" name="name" placeholder="Your user name">
		<input type="password" name="password" placeholder="Your secret password">
		<button>Continue</button>
		<p>Dont have an account? <a href="gotoreg">Sign up</a></p>
	</div>

</form>

</body>

</html>