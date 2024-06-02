package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.entity.Blog;
import com.sessionfactory.FactoryProvider;


//@WebServlet("/Search")
public class Search extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException ,IOException {
		
	
		try {
			
			String search = request.getParameter("searchQuery");
			
			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			 Criteria c=s.createCriteria(Blog.class);
	            c.add(Restrictions.ilike("Title", "%" + search + "%"));
	            
	            List<Blog>b=c.list();
//	            System.out.println("123");
//	            for (Blog blog : b) {
//					System.out.println(blog.getTitle());
//				}
			
			tx.commit();
			s.close();

			 request.setAttribute("searchResults", b);
	            request.getRequestDispatcher("search.jsp").forward(request, response);
			
			
			
		} catch (Exception e) {
			e.printStackTrace();

		
		
		
		}
	}
	
}
		
		
	

	