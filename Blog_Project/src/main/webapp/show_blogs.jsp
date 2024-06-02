<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
<%@page import="com.sessionfactory.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entity.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show All Blogs</title>
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
		<br> <br>

		<h1 class="text-uppercase">
			<b>All Blogs</b>
		</h1>
	</div>
	<div>

		<div class="row">
			<div class="col-12">


				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query query = s.createQuery("from Blog");
				List<Blog> list = query.list();
				for (Blog b : list) {
					// 					out.print("<table>");
					// 					out.println("<tr>");
					// 					out.println("<td>" + b.getId() + "</td ><td>&nbsp;&nbsp;&nbsp;</td>");
					// 					out.println("<td>" + b.getTitle() + "</td><td>&nbsp;&nbsp;&nbsp;</td>");
					// 					out.println("<td>" + b.getAuthor() + "</td><td>&nbsp;&nbsp;&nbsp;</td>");
					// 					out.println("<td>" + b.getContent() + "</td><td>&nbsp;&nbsp;&nbsp;</td>");
					// 					out.println("</tr>");
					// 					out.print("</table>");
				%>

				<div class="card mt-3">
					<img class="card-img-top mx-auto d-block"
						style="width: 0px; height: auto; margin: 0 auto;"
						src="images/blog.png" alt="Card image cap">
					<div class="card-body px-5"
						style="background-color: rgba(255, 255, 255, .4);">
						<h5 class="card-title"><%=b.getTitle()%></h5>
						<h6 class="card-author"><%=b.getAuthor()%></h6>
						<p class="card-text"><%=b.getContent()%></p>
						<p>
							<b class="text-primary"><%=b.getTodayDate()%></b>
						</p>
						<div class="container text-center mt-3">
							<a href="DeleteServlet?blog_id=<%=b.getId()%>"
								class="btn btn-danger">Delete</a> <a
								href="update.jsp?blog_id=<%=b.getId()%>"
								class="btn btn-primary">Update</a>
						</div>

					</div>
				</div>

				<%
				}
				s.close();
				%>

			</div>
		</div>




	</div>



</body>
</html>