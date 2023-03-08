package com.sist.web;

import java.util.*;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sist.dao.JejuFoodDAO;
import com.sist.vo.JejuFoodVO;

@RestController
public class JejuFoodRestController {
	@Autowired
	private JejuFoodDAO dao;
	
	@GetMapping(value="jeju/food_list_vue.do",produces = "text/plain;charset=UTF-8")
	public String food_list_vue(String page)
	{
		if(page==null)
	         page="1";
	    int curpage=Integer.parseInt(page);
	    Map map=new HashMap();
	    map.put("start", (curpage*20)-19);
	    map.put("end", curpage*20);

		List<JejuFoodVO> list=dao.jejuFoodListData(map);
	    int totalpage=dao.jejuFoodTotalPage();
		JSONArray arr=new JSONArray();
		for(JejuFoodVO vo:list)
		{
			JSONObject obj=new JSONObject();
			obj.put("no", vo.getNo());
			obj.put("title", vo.getTitle());
			obj.put("poster",vo.getPoster());
			arr.add(obj);
		}
		return arr.toJSONString();
	}
	
	 @GetMapping(value="jeju/food_detail_vue.do",produces = "text/plain;charset=UTF-8")
	 public String food_detail_vue(int no)
	 {
		 JejuFoodVO vo=dao.jejuDetailData(no);
		 JSONObject obj=new JSONObject();
		 obj.put("no", vo.getNo());
		 obj.put("title", vo.getTitle());
		 obj.put("poster", vo.getPoster());
		 obj.put("image", vo.getImage());
		 obj.put("addr", vo.getAddr());
		 obj.put("addr2", vo.getAddr2());
		 obj.put("tel", vo.getTel());
		 obj.put("type", vo.getType());
		 obj.put("parking", vo.getParking());
		 obj.put("time", vo.getTime());
		 obj.put("menu", vo.getMenu());
		 obj.put("Score", vo.getScore());
		 
		 return obj.toJSONString();
	 }
}
