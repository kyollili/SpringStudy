package com.sist.web.entity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class LibraryFindVO {
	private int lno;
	private String gu,address,library;
	private int curpage,totalpage;
}
