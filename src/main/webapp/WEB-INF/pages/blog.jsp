
<%@ include file="header.jsp"%>
<div id="main-content-blog" class="container-fluid row col-xs-12">
	<div class="col-md-10 col-sm-12 col-md-offset-1" id="posts-container">
		<div id="post-area">
			<ul id="blog-posts">
				<c:forEach items="${posts}" var="post" varStatus="status">
					<a href="${post}.htm"><li id="posts" class="col-xs-12 col-sm-4">${post}</li></a>
				</c:forEach>
			</ul>
		</div>
	</div>
</div>
<%@ include file="footer.jsp"%>
</div>
</body>
</html>
