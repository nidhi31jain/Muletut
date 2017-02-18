<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="shortcut icon" type="image/png" href="images/logo.png" />
<meta charset="UTF-8">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="prism/prism.css">
</head>
<body>
	<div id="main" class="container-fluid">
		<%@ include file="header.jsp"%>
		<div id="main-content" class="container-fluid row">
			<aside class="col-sm-3 container sidebar">
				<div>
					<ul id="mule-menu">
						<c:forEach items="${menuItems}" var="item" varStatus="status">
							<li ${status.first ? 'class="active first"' : '' }><a
								href="#${item}">Mule - ${fn:replace(item,"-", " ")}</a></li>
						</c:forEach>
					</ul>
				</div>
			</aside>
			<div class="col-sm-9" id="post">
<!-- 				<div class="col-sm-9 loader"> -->
<!-- 					<div class = "col-sm-offset-3 col-sm-9 "> -->
<!-- 						<p id="loading-msg"> -->
<!-- 							Loading<br>Please Wait -->
<!-- 						</p> -->
<!-- 					</div> -->
<!-- 				</div> -->
				<div id="post-area" class = "col-xs-12">
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
		</div>
		<!-- 		<a href="#page" id="scroll-up"><span -->
		<!-- 			class="glyphicon glyphicon-chevron-up"></span></a> -->

		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>
