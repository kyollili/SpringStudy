package com.sist.web.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name="gangnam_library")
@Getter
@Setter
public class gangnamEntity {
	@Id
	private int no;
	
	private String title,author,category,publisher,poster,link,location;

	
	
}
