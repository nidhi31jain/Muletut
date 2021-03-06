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
		<div id="main-content-blog" class = "container-fluid row col-xs-12">
			<div class="col-md-10 col-sm-12 col-md-offset-1" id="posts-container">
				<div id="post-area">
					<ul id="blog-posts">
						<c:forEach items="${posts}" var="post" varStatus="status">
							<a href = "${post}.htm"><li id="posts" class="col-xs-12 col-sm-4">${post}</li></a>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>
