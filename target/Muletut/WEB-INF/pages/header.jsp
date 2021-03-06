
<!-- 		HEADER -->
<header class="col-xs-12">
	<nav id="navbar-header" class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#nav-menu-div">
					<span>Menu</span>
				</button>
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#mule-menu" id = "mule-menu-button">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span><span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html"><img
					src="images/logo.png" class="brand-logo img-responsive"></a>
			</div>
			<div class="collapse navbar-collapse top-navbar" id="nav-menu-div">
				<ul id="nav-menu" class="nav navbar-nav navbar-right">
					<li class="active"><a href="index.html">Home</a></li>
					<li><a href="cloudhub.html">Cloudhub</a></li>
<!-- 					<li><a href="references.html">References</a></li> -->
					<li><a href="blog.html">Blog</a></li>
					<li><a href="about.html">About me</a></li>
					<li><form:form commandName="search" action="search.html"
							method="post" class="navbar-form" role="search">
							<div class="input-group">
								<form:input path="searchString" name="searchString"
									placeholder="Search" class="form-control" required="required" />
								<div class="input-group-btn">
									<button class="btn btn-default" type="submit">
										<i class="glyphicon glyphicon-search"></i>
									</button>
								</div>
							</div>
						</form:form></li>
				</ul>
			</div>
		</div>
	</nav>
</header>
