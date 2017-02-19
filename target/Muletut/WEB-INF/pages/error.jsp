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
		<div id="main-content-error" class="container-fluid row">
			<div id="error" class="col-sm-8 col-xs-12 centered col-md-offset-2">
				<p id = "code" class = "col-xs-6 col-xs-offset-3">4041</p>
				<p id = "message" class = "col-xs-12">THE PAGE YOU ARE LOOKING FOR DOESN'T EXIST</p>
			</div>
		</div>
		<%@ include file="footer.jsp"%>
	</div>

</body>
</html>
