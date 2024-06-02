<%@page import="com.entity.Blog"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Results</title>
    <%@ include file="all_js_css.jsp" %>
</head>
<body>
    <div class="container-fluid">
        <%@ include file="navbar.jsp" %>
        <br><br>
        
        <form action="Search" method="get">
        <div class="container-fluid">
            <h1 class="text-uppercase"><b>Search Results</b></h1>
            <div class="row">
                <% List<Blog> searchResults = (List<Blog>) request.getAttribute("searchResults");
                if (searchResults != null && !searchResults.isEmpty()) {
                    for (Blog b : searchResults) { %>
                    <div class="card mt-3">
                        <img class="card-img-top mx-auto d-block" style="width: 0px; height: auto; margin: 0 auto;" src="images/blog.png" alt="Card image cap">
                        <div class="card-body px-5" style="background-color: rgba(255, 255, 255, .4);">
                            <h5 class="card-title"><%= b.getTitle() %></h5>
                            <h6 class="card-author"><%= b.getAuthor() %></h6>
                            <p class="card-text"><%= b.getContent() %></p>
                            <p><b class="text-primary"><%= b.getTodayDate() %></b></p>
                            <div class="container text-center mt-3">
                                <a href="DeleteServlet?blog_id=<%= b.getId() %>" class="btn btn-danger">Delete</a>
                                <a href="update.jsp?blog_id=<%= b.getId() %>" class="btn btn-primary">Update</a>
                            </div>
                        </div>
                    </div>
                    <% }
                } else { %>
                <p>No results found.</p>
                <% } %>
            </div>
        </div>
        </form>
    </div>
</body>
</html>
