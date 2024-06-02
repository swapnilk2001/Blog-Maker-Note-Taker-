<%@page import="com.entity.Blog"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.sessionfactory.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>


	<div class="container fluid ">
		<%@include file="navbar.jsp"%>

	</div>
	<%
	int BlogId = Integer.parseInt(request.getParameter("blog_id").trim());

	Session s = FactoryProvider.getFactory().openSession();
	Transaction tx = s.beginTransaction();

	Blog blog = (Blog) s.get(Blog.class, BlogId);
	tx.commit();
	s.close();
	%>
	
	



	<h1>Update your Blog</h1>


	<form action="updateServlet" method="post">
		<input value="<%=blog.getId()%>" name="blog_id" type="hidden" />


		<div class="mb-3">
			<label for="title" class="form-label">Title</label> <input
				name="title" required="required" type="text" class="form-control"
				id="title" placeholder="Enter your Title"
				value="<%=blog.getTitle()%>" />

		</div>


		<div class="mb-3">
			<label for="author" class="form-label">Author</label> <input
				name="author" required="required" type="text" class="form-control"
				id="author" placeholder="Enter Author" value="<%=blog.getAuthor()%>" />

		</div>


		<div class="mb-3">
			<label for="content" class="form-label">Content</label>
			<textarea name="content" required="required" id="content"
				placeholder="Enter your content" class="form-control"
				style="height: 200px" <%=blog.getContent()%>></textarea>
		</div>

		<div class="container text-center">

			<button type="submit" class="btn btn-success">Save your
				update</button>

		</div>


	</form>


	</div>




</body>
</html>