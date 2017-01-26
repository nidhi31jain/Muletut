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
<script src="javascript/script.js"></script>
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
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#mule-menu">
							<span class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">WebSiteName</a>
					</div>
					<div class="collapse navbar-collapse">
						<ul id="nav-menu" class="nav navbar-nav navbar-right">
							<li class="active"><a href="#">Home</a></li>
							<li><a href="#">References</a></li>
							<li><a href="#">Blog</a></li>
							<li><a href="#">About me</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</header>
		<div id="main-content" class="container-fluid row">
			<aside class="col-sm-3 container sidebar">
				<div>
					<ul id="mule-menu">
						<li id="1" class="active first"><a href="#">Mule -
								Overview</a></li>
						<li id="1"><a href="#">Mule - Installation</a></li>
						<li id="1"><a href="#">Mule - Flows</a></li>
						<li id="1"><a href="#">Mule - HTTP</a></li>
						<li id="1"><a href="#">Mule - File</a></li>
						<li id="1"><a href="#">Mule - Database</a></li>
						<li id="1"><a href="#">Mule - Invoke</a></li>
						<li id="1"><a href="#">Mule - Java</a></li>
						<li id="1"><a href="#">Mule - Choice</a></li>
						<li id="1"><a href="#">Mule - Scatter-Gather</a></li>
						<li id="1"><a href="#">Mule - Splitter</a></li>
						<li id="1"><a href="#">Mule - Batch</a></li>
						<li id="1"><a href="#">Mule - Transform Message</a></li>
						<li id="1"><a href="#">Mule - Filter</a></li>
						<li id="1"><a href="#">Mule - Variable</a></li>
						<li id="1"><a href="#">Mule - Parse Template</a></li>
						<li id="1"><a href="#">Mule - Set Payload</a></li>
						<li id="1"><a href="#">Mule - MEL</a></li>
						<li id="1"><a href="#">Mule - Splitter</a></li>
						<li id="1"><a href="#">Mule - Splitter</a></li>
						<li id="1"><a href="#">Mule - Splitter</a></li>
						<li id="1"><a href="#">Mule - Splitter</a></li>
					</ul>
				</div>
			</aside>
			<div class="col-sm-9" id="post">
				<div id="post-area">
					<h2>Splitter</h2>
					<hr class="dotted-line">
					<div id="post-content">
						<section>Mule is the lightweight integration runtime
							engine that allows you to connect anything, anywhere. Rather than
							creating multiple point-to-point integrations between systems,
							services, APIs, and devices, use Mule to intelligently manage
							message routing, data mapping, orchestration, reliability,
							security, and scalability between nodes. Plug other systems and
							applications into Mule and let it handle communication between
							systems, allowing you to track and monitor your application
							ecosystem and external resources.</section>
						<section class="alert alert-info">
							<h2>What is ESB?</h2>
							<div>An Enterprise Service Bus (ESB) is fundamentally an
								architecture. It is a set of rules and principles for
								integrating numerous applications together over a bus-like
								infrastructure. ESB products enable users to build this type of
								architecture, but vary in the way that they do it and the
								capabilities that they offer. The core concept of the ESB
								architecture is that you integrate different applications by
								putting a communication bus between them and then enable each
								application to talk to the bus. This decouples systems from each
								other, allowing them to communicate without dependency on or
								knowledge of other systems on the bus.</div>
						</section>
						<section>
							<h2>Why Mule?</h2>
							<div>Mule is lightweight but highly scalable, allowing you
								to start small and connect more applications over time. The ESB
								manages all the interactions between applications and components
								transparently, regardless of whether they exist in the same
								virtual machine or over the Internet, and regardless of the
								underlying transport protocol used. There are currently several
								commercial ESB implementations on the market. However, many of
								these provide limited functionality or are built on top of an
								existing application server or messaging server, locking you
								into that specific vendor. Mule is vendor-neutral, so different
								vendor implementations can plug in to it. You are never locked
								in to a specific vendor when you use Mule.</div>
						</section>
					</div>
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

	</div>
</body>
</html>
