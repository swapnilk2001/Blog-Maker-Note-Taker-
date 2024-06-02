<nav class="navbar navbar-expand-lg navbar-light purple">


	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp" style="font-size: 28px;"><b>MyBlogs</b></a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		
		
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="index.jsp" style="font-size: 22px;"><b>Home</b></a>
				</li>
				<li class="nav-item"><a class="nav-link" href="add_blogs.jsp"
					style="font-size: 22px;"><b>Add Blog</b></a></li>

				<li class="nav-item"><a class="nav-link " href="show_blogs.jsp"
					tabindex="-1" style="font-size: 22px;"><b>Show Blogs</b></a></li>
			</ul>
			<form class="d-flex" action="Search" method="get">
				<input name="searchQuery" class="form-control me-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-primary" type="submit">Search</button>
			</form>
		</div>
	</div>
	
	


</nav>