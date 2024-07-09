package com.jsp.Dto;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class Admin 
{
	@Id
	private String id;
	private String name;
	private String email ;
	private String password;
	
	
}
