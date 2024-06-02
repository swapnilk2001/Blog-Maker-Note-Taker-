package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.Blog;
import com.sessionfactory.FactoryProvider;

public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			int BlogId = Integer.parseInt(req.getParameter("blog_id").trim());
			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();

			Blog blog = (Blog) s.get(Blog.class, BlogId);
			s.delete(blog);

			tx.commit();
			s.close();

			resp.sendRedirect("show_blogs.jsp");

		} catch (Exception e) {

			e.printStackTrace();
		}

	}

}
