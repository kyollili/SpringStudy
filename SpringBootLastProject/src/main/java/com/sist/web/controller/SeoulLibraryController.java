package com.sist.web.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sist.web.dao.SeoulLibraryDAO;
import com.sist.web.entity.LibraryFindVO;
import com.sist.web.entity.gangnamEntity;
import com.sist.web.entity.seoulLibraryEntity;

@RestController
@CrossOrigin("http://localhost:3000")
public class SeoulLibraryController {
	@Autowired
	private SeoulLibraryDAO dao;
	
	@GetMapping("seoul/library_find_react")
	public List<LibraryFindVO> library_find(String page,String gu)
	{
		List<LibraryFindVO> list=new ArrayList<LibraryFindVO>();
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		int start=(curpage-1)*12;
		List<seoulLibraryEntity> lList=dao.libraryFindData(gu, start);
		int totalpage=dao.libraryFindTotal(gu);
		int i=0;
		for(seoulLibraryEntity lvo:lList)
		{
			LibraryFindVO vo=new LibraryFindVO();
			vo.setLno(lvo.getLno());
			vo.setGu(lvo.getGu());
			vo.setLibrary(lvo.getLibrary());
			vo.setAddress(lvo.getAddress());
			if(i==0)
			{
				vo.setCurpage(curpage);
				vo.setTotalpage(totalpage);
			}
			list.add(vo);
			i++;
		}
		return list;
	}
	@GetMapping("seoul/library_detail_react")
	public seoulLibraryEntity library_detail(int lno)
	{
		seoulLibraryEntity vo=dao.findByLno(lno);
		return vo;
	}
}
