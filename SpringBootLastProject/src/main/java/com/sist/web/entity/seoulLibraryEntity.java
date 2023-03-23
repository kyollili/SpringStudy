package com.sist.web.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name="seoul_library")
@Getter
@Setter
public class seoulLibraryEntity {
	@Id
	private int lno;
	
	private String library,gu,address,tel,homepage,time,holiday;

	
}
