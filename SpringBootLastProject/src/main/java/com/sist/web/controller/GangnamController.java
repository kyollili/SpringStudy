package com.sist.web.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sist.web.dao.GangnamDAO;
import com.sist.web.entity.GangnamFindVO;
import com.sist.web.entity.JejuFoodEntity;
import com.sist.web.entity.LibraryFindVO;
import com.sist.web.entity.gangnamEntity;
import com.sist.web.entity.seoulLibraryEntity;

@RestController
@CrossOrigin("http://localhost:3000")
public class GangnamController {
	@Autowired
	private GangnamDAO dao;
	
	@GetMapping("gangnam/book_top6")
	public List<gangnamEntity> gangnam_book_top6()
	{
		List<gangnamEntity> list=dao.bookTop6List();
		return list;
	}
	
	@GetMapping("gangnam/book_find_react")
	public List<GangnamFindVO> book_find(String page,String category)
	{
		List<GangnamFindVO> list=new ArrayList<GangnamFindVO>();
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		int start=(curpage-1)*12;
		List<gangnamEntity> gList=dao.bookFindData(category, start);
		int totalpage=dao.bookfindTotalPage(category);
		int i=0;
		for(gangnamEntity gvo:gList)
		{
			GangnamFindVO vo=new GangnamFindVO();
			vo.setNo(gvo.getNo());
			vo.setTitle(gvo.getTitle());
			vo.setPoster(gvo.getPoster());
			vo.setAuthor(gvo.getAuthor());
			vo.setCategory(gvo.getCategory());
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
	@GetMapping("gangnam/book_detail_react")
	public gangnamEntity book_detail(int no)
	{
		gangnamEntity vo=dao.findByNo(no);
		return vo;
	}
}
