package com.jsp.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jsp.Dto.Admin;
import com.jsp.Dto.User;

@Component
public class UserDao 
{
	@Autowired
	EntityManager entityManager;
	
	@Autowired
	EntityTransaction entityTransaction;
	
	//To save User
	public void saveUser(User user)
	{
		entityTransaction.begin();
		entityManager.persist(user);
		entityTransaction.commit();
	}
	
	//Find user By using id,email,password
		public User findUserByEmailAndPassword(String email,String password)
		{
			Query q=entityManager.createQuery("select u from User u where u.email=?1 and u.password=?2");
			q.setParameter(1,email);
			q.setParameter(2,password);
			List<User> rs=q.getResultList();
			return rs.get(0);
		}
		
		public User findUserById(int id)
		{
			Query q=entityManager.createQuery("select u from User u");
			List<User> rs=q.getResultList();
			User u= rs.get(0);
			if(u!=null)
				return u;
			return null;
		}
		
		//Updating user details
		public void updateUser(User user)
		{
			entityTransaction.begin();
			entityManager.merge(user);
			entityTransaction.commit();
		}
		
		//Deleting User +
		public void deleteUser(User user)
		{
			entityTransaction.begin();
			entityManager.remove(user);
			entityTransaction.commit();
		}
		
		public List<User> getAllUsers()
		{
			Query q=entityManager.createQuery("select u from User u");
			List<User> li=q.getResultList();
			return li;
		}
}
