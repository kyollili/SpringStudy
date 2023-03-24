package com.sist.web.entity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class GangnamFindVO {
	private int no;
	private String title,poster,author,category;
	private int curpage,totalpage;
}
