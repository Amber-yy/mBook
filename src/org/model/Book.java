package org.model;
// Generated 2016-10-27 11:35:58 by Hibernate Tools 4.3.1.Final

/**
 * Book generated by hbm2java
 */
public class Book implements java.io.Serializable {

	private Integer bookId;
	private String bookName;
	private String isbn;
	private String author;
	private String publisher;
	private Double price;
	private Integer snum;
	private String summary;
	private String photo;
	private Integer categoryId;

	public Book() {
	}

	public Book(String bookName, String isbn, String author, String publisher, Double price, Integer snum,
			String summary, String photo, Integer categoryId) {
		this.bookName = bookName;
		this.isbn = isbn;
		this.author = author;
		this.publisher = publisher;
		this.price = price;
		this.snum = snum;
		this.summary = summary;
		this.photo = photo;
		this.categoryId = categoryId;
	}

	public Integer getBookId() {
		return this.bookId;
	}

	public void setBookId(Integer bookId) {
		this.bookId = bookId;
	}

	public String getBookName() {
		return this.bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getIsbn() {
		return this.isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public String getAuthor() {
		return this.author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPublisher() {
		return this.publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Integer getSnum() {
		return this.snum;
	}

	public void setSnum(Integer snum) {
		this.snum = snum;
	}

	public String getSummary() {
		return this.summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getPhoto() {
		return this.photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public Integer getCategoryId() {
		return this.categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}

}
