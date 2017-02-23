<%@ include file="header.jsp"%>
<div id="main-content-single" class="col-xs-12 row">
	<nav class="col-md-3 hidden-xs hidden-sm">
		<ul id="blog-posts" class="col-sm-12">
			<c:forEach items="${posts}" var="post" varStatus="status">
				<a href="${post}.htm"><li id="posts" class="col-md-12">${post}</li></a>
			</c:forEach>
		</ul>
	</nav>
	<div class="col-md-9 col-xs-12" id="post-container">
		<article id="post-area" class="row">
			<div id="heading" class="col-xs-12">
				<h2 class="title">${postName}</h2>
			</div>
			<article id="post-content" class="col-xs-12"></article>
		</article>
		<ul class="pager col-xs-12">
			<li class="previous"><a href="#">Previous</a></li>
			<li class="next"><a href="#">Next</a></li>
		</ul>
		<nav id="share-icons">
			<a class="share-buttons share linkedin"
				href="https://www.linkedin.com/shareArticle?mini=true&url=${url}&title=ABHAY&summary=&source="
				target="_blank"><i class="fa fa-linkedin"></i> LinkedIn</a>
			<a class="share-buttons share twitter" href="#" target="_blank"><i
				class="fa fa-twitter"></i> Tweet</a>
			<a class="share-buttons share facebook" href="#" target="_blank"><i
				class="fa fa-facebook"></i> Share</a>
			<a class="share-buttons share gplus" href="#" target="_blank"><i
				class="fa fa-google-plus"></i> Share</a>
			<a class="share-buttons share stumbleupon" href="#" target="_blank"><i
				class="fa fa-stumbleupon"></i> Stumble</a>
		</nav>
		<div id="comments" class="col-xs-12"></div>
	</div>
</div>
<%@ include file="footer.jsp"%>
</div>
</body>
</html>