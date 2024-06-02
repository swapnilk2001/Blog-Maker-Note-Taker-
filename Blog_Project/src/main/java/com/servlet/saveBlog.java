package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.Blog;
import com.sessionfactory.FactoryProvider;

//@WebServlet("/saveBlog")
public class saveBlog extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		try {
			response.setContentType("text/html");
			String title = request.getParameter("title");
			String author = request.getParameter("author");
			String content = request.getParameter("content");

			Blog blog = new Blog(title, author, content, new Date());
			Session session = FactoryProvider.getFactory().openSession();
			Transaction tx = session.beginTransaction();
			session.save(blog);
			tx.commit();
			session.close();

			RequestDispatcher rd = request.getRequestDispatcher("/add_blogs.jsp");
			rd.include(request, response);
			PrintWriter out = response.getWriter();
			out.println("<h3 style='text-align:center'> Blog is added successfully</h3>");
			out.println("<h3 style='text-align:center'> <a href='show_blogs.jsp'>View All Blogs </a></h3>");

		} catch (Exception e) {

			e.printStackTrace();
		}

	}

}
