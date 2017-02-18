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
		<div id="main-content-about" class = "col-xs-12">
			<div class="col-sm-1" id="right-sidebar-single"></div>
			<div class="col-sm-10" id="post">
				<div id="post-area" class="col-sm-12">
					<div id="post-content" class="col-sm-12">
						<img src="images/bfma-1.JPG"
							class="col-xs-6 col-sm-4 col-xs-offset-3 col-sm-offset-0 img-responsive img-circle img-thumbnail"
							id="about-img">
						<div id="about-container"
							class="col-xs-12 col-sm-6 col-sm-offset-1">sad</div>
						<div class="col-sm-1"></div>
					</div>
				</div>
			</div>
			<div class="col-sm-1" id="left-sidebar-single"></div>
		</div>
		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>
