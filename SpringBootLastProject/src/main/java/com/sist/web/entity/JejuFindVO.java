package com.sist.web.entity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class JejuFindVO {
	private int no;
	private String addr,poster,title;
	private int curpage,totalpage;
}
