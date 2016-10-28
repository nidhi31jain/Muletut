<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div id="main" class="container-fluid">
		<!-- 		HEADER -->
		<header>
			<nav id="navbar-header" class="navbar navbar-default">
				<div class="container-fluid">
					<div class="navbar-header">
						<a class="navbar-brand" href="#">WebSiteName</a>
					</div>
					<ul id="nav-menu" class="nav navbar-nav navbar-right">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#">References</a></li>
						<li><a href="#">Blog</a></li>
						<li><a href="#">About me</a></li>
					</ul>
				</div>
			</nav>
		</header>
		<div id="main-content" class="container-fluid row">
			<aside class="col-sm-3 container sidebar">
				<div>
					<ul>
						<li>Basics</li>
						<li>Basics</li>
						<li>Basics</li>
					</ul>
				</div>
			</aside>
			<div class="col-sm-9" id="post">
			<div id = "post-area">Mule</div>
				<hr>
				<ul class="pager">
					<li class="previous"><a href="#">Previous</a></li>
					<li class="next"><a href="#">Next</a></li>
				</ul>

			</div>

		</div>

	</div>

</body>
</html>
