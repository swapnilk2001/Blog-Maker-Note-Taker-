package com.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.Blog;
import com.sessionfactory.FactoryProvider;

/**
 * Servlet implementation class updateServlet
 */
public class updateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			String title = request.getParameter("title");
			String author = request.getParameter("author");
			String content = request.getParameter("content");
			int id = Integer.parseInt(request.getParameter("blog_id").trim());

			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();

			Blog blog = s.get(Blog.class, id);
			blog.setTitle(title);
			blog.setAuthor(author);
			blog.setContent(content);
			blog.setTodayDate(new Date());

			tx.commit();
			s.close();

			response.sendRedirect("show_blogs.jsp");

		} catch (Exception e) {

		}

	}

}
