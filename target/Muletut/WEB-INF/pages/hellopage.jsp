<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
<body>${message}
	Server Version:
	<%=application.getServerInfo()%><br> Servlet Version:
	<%=application.getMajorVersion()%>.<%=application.getMinorVersion()%>
	<br>
</body>
</html>