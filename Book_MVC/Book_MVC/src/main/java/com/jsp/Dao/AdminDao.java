package com.jsp.Dao;

import java.sql.ResultSet;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jsp.Dto.Admin;

@Component
public class AdminDao 
{
	@Autowired
	EntityManager entityManager;
	
	@Autowired
	EntityTransaction entityTransaction;
	
	//To save Admin
	public void saveAdmin(Admin admin)
	{
		entityTransaction.begin();
		entityManager.persist(admin);
		entityTransaction.commit();
	}
	//Find Admin By using id,email,password
	public Admin findAdminByEmailAndPassword(String email,String password)
	{
		Query q=entityManager.createQuery("select a from Admin a where a.email=?1 and a.password=?2 ");
		q.setParameter(1,email);
		q.setParameter(2,password);
		List<Admin> rs=q.getResultList();
		Admin a= rs.get(0);
		if(a!=null)
			return a;
		return null;
	}
	
}
