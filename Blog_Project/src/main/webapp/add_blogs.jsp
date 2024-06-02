<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<title>Add Blogs</title>
<%@include file="all_js_css.jsp"%>

<style>
body {
	background-image: url("images/i2.jpg");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100%;
}
</style>

</head>
<body>


	<div class="container fluid ">
		<%@include file="navbar.jsp"%>

		<h1>Please fill your details</h1>


		<form action="saveBlog" method="post">
			<div class="mb-3">
				<label for="title" class="form-label" style="font-size: 22px;"><b>Title</b></label>
				<input style="background-color: rgba(255, 255, 255, .4);"
					name="title" required="required" type="text" class="form-control"
					id="title" />

			</div>


			<div class="mb-3">
				<label for="author" class="form-label" style="font-size: 22px;"><b>Author</b></label>
				<input style="background-color: rgba(255, 255, 255, .4);"
					name="author" required="required" type="text" class="form-control"
					id="author" />

			</div>


			<div class="mb-3">
				<label for="content" class="form-label" style="font-size: 22px;"><b>Content</b></label>
				<textarea
					style="background-color: rgba(255, 255, 255, .4); height: 400px;"
					name="content" required="required" id="content"
					placeholder="Enter your content" class="form-control"></textarea>
			</div>

			<div class="container text-center">

				<button type="submit" class="btn btn-primary">Add</button>

			</div>


		</form>


	</div>


</body>
</html>