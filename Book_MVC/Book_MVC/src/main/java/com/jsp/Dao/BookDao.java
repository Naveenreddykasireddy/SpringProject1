package com.jsp.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jsp.Dto.Admin;
import com.jsp.Dto.Book;

@Component
public class BookDao 
{
	@Autowired
	EntityManager entityManager;
	
	@Autowired
	EntityTransaction entityTransaction;
	
	//To save Book
		public void saveBook(Book book)
		{
			entityTransaction.begin();
			entityManager.persist(book);
			entityTransaction.commit();
		}
	
	//Find book by id
		public Book findBookById(String id)
		{
			Query q=entityManager.createQuery("select b from Book b where b.id=?1 ");
			q.setParameter(1, id);
			List<Book> li=q.getResultList();
			return li.get(0);
		}
			
	//To display All books
		public List<Book> displayAllBooks()
		{
			Query q=entityManager.createQuery("select b from Book b");
			return q.getResultList();
		}
	//To delete book  by id
		public void deleteBookById(String id)
		{
			Query q=entityManager.createQuery("select b from Book b where b.id=?1 ");
			q.setParameter(1, id);
			List<Book> li=q.getResultList();
			entityTransaction.begin();
			entityManager.remove(li.get(0));
			entityTransaction.commit();
		}
		
		//update book 
		public void updateBook( Book b)
		{
			entityTransaction.begin();
			entityManager.merge(b);
			entityTransaction.commit();
		}
}
