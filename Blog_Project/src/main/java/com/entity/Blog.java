package com.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Blogs")
public class Blog {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int Id;
	private String Title;
	private String Author;
	@Column(length = 10000)
	private String Content;
	private Date TodayDate;

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getTitle() {
		return Title;
	}

	public void setTitle(String title) {
		Title = title;
	}

	public String getAuthor() {
		return Author;
	}

	public void setAuthor(String author) {
		Author = author;
	}

	public String getContent() {
		return Content;
	}

	public void setContent(String content) {
		Content = content;
	}

	public Date getTodayDate() {
		return TodayDate;
	}

	public void setTodayDate(Date todayDate) {
		TodayDate = todayDate;
	}

	public Blog(String title, String author, String content, Date todayDate) {
		super();

		Title = title;
		Author = author;
		Content = content;
		TodayDate = todayDate;
	}

	public Blog() {
		super();
		// TODO Auto-generated constructor stub
	}

}
