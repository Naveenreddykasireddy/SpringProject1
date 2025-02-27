package com.jsp;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan("com.jsp")
public class ConfigurationClass 
{
	@Bean
	public EntityManager getEntityManager()
	{
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("vikas");
		
		return emf.createEntityManager();	
	}
	
	@Bean
	public EntityTransaction getEntityTransaction()
	{
		return getEntityManager().getTransaction();
	}
}
