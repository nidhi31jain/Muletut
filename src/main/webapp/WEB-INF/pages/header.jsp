		<!-- 		HEADER -->
		<header>
			<nav id="navbar-header" class="navbar navbar-default navbar-fixed-top">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#mule-menu">
							<span class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#loader"><img src="images/logo.png"
							class="brand-logo img-responsive"></a>
					</div>
					<div class="collapse navbar-collapse top-navbar">
						<ul id="nav-menu" class="nav navbar-nav navbar-right">
							<li class="active"><a href="#">Home</a></li>
							<li><a href="references.html">References</a></li>
							<li><a href="#">Blog</a></li>
							<li><a href="#">About me</a></li>
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
