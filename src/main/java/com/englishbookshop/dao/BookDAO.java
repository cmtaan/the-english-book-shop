package com.englishbookshop.dao;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import com.englishbookshop.entity.Book;

public class BookDAO extends JpaDAO<Book> implements IGenericDAO<Book> {
	public static final String BOOK_LIST_ALL = "Book.listAll";
	public static final String BOOK_FIND_BY_TITLE = "Book.findByTitle";
	public static final String BOOK_COUNT = "Book.count";
	public static final String BOOK_FIND_BY_CATEGORY = "Book.findByCategory";
	public static final String BOOK_LIST_NEW_BOOKS = "Book.listNewBooks";
	public static final String BOOK_SEARCH = "Book.search";
	
	public BookDAO(EntityManager entityManager) {
		super(entityManager);
	}

	@Override
	public Book get(Object id) {
		return super.find(Book.class, id);
	}

	@Override
	public void delete(Object id) {
		super.delete(Book.class, id);
	}

	@Override
	public List<Book> listAll() {
		return super.findWithNamedQuery(BOOK_LIST_ALL);
	}

	@Override
	public long count() {
		return super.countWithNamedQuery(BOOK_COUNT);
	}
	
	@Override
	public Book update(Book book) {
		book.setLastUpdateTime(new Date());
		return super.update(book);
	}
	
	@Override
	public Book create(Book book) {
		book.setLastUpdateTime(new Date());
		return super.create(book);
	}
	
	public Book findByTitle(String title) {
		
		Map<String, Object> parameters = new HashMap<>();
		parameters.put("title", title);
		List<Book> listBooks =  super.findWithNamedQuery(BOOK_FIND_BY_TITLE, parameters);
		
		if (listBooks.size() > 0) {
			return listBooks.get(0);
		}
		
		return null;
	}
	
	public List<Book> findByCategory(int categoryId) {
		Map<String, Object> parameters = new HashMap<>();
		parameters.put("categoryId", categoryId);
		
		return super.findWithNamedQuery(BOOK_FIND_BY_CATEGORY, parameters);
	}
	
	public List<Book> listNewBooks(){
		Query query = entityManager.createNamedQuery(BOOK_LIST_NEW_BOOKS);
		query.setFirstResult(0);
		query.setMaxResults(4);
		
		return query.getResultList();
	}
	
	public List<Book> search(String keyword) {
		Map<String, Object> parameters = new HashMap<>();
		parameters.put("keyword", keyword);
		return super.findWithNamedQuery(BOOK_SEARCH, parameters);
		
	}

}
