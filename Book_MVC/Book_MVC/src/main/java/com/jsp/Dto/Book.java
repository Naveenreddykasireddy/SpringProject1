package com.jsp.Dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class Book 
{
	@Id
	private String id;
	private String name;
	private double price;
	private String author;
	private String description;
}
