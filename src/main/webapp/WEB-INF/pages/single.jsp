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
		<div id="main-content-single" class="col-xs-12 row">
			<aside id="post-area" class="col-md-3 hidden-xs hidden-sm">
				<ul id="blog-posts" class="col-sm-12">
					<c:forEach items="${posts}" var="post" varStatus="status">
						<a href="${post}.htm"><li id="posts" class="col-md-12">${post}</li></a>
					</c:forEach>
				</ul>
			</aside>
			<div class="col-md-9 col-xs-12" id="post">
				<div id="post-area" class="row">
					<div id="heading" class="col-xs-12">
						<h2 class="title">${title}</h2>
					</div>
					<div id="post-content" class="col-xs-12"></div>
				</div>
				<ul class="pager col-xs-12">
					<li class="previous"><a href="#">Previous</a></li>
					<li class="next"><a href="#">Next</a></li>
				</ul>
				<div id="comments" class="col-xs-12"></div>
			</div>
		</div>
		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>
