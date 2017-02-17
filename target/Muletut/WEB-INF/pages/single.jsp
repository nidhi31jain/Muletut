<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="shortcut icon" type="image/png" href="images/logo.png" />
<meta charset="UTF-8">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="prism/prism.css">
</head>
<body>
	<div id="main" class="container-fluid">
		<%@ include file="header.jsp"%>
		<div id="main-content-single">
			<div class="col-md-1" id="right-sidebar-single"></div>
			<div class="col-md-10 col-sm-12" id="post">
				<div id="post-area">
					<h2 class="title"></h2>
					<hr class="dotted-line">
					<div id="post-content"></div>
				</div>
				<hr>
				<ul class="pager">
					<li class="previous"><a href="#">Previous</a></li>
					<li class="next"><a href="#">Next</a></li>
				</ul>
			</div>
			<div class="col-md-1" id="left-sidebar-single"></div>
		</div>
		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>
