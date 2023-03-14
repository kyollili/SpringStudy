package com.sist.web;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.util.*;
import com.sist.dao.*;
import com.sist.vo.*;
@RestController
public class ClassRestController {
	@Autowired
	private ClassService service;
	
	@GetMapping(value="class/cookie_data_vue.do",produces = "text/plain;charset=UTF-8")
	public String class_cookie_data(HttpServletRequest request)
	{
		Cookie[] cookies=request.getCookies();
		List<ClassDetailVO> list=new ArrayList<ClassDetailVO>();
		if(cookies!=null)
		{
			for(int i=cookies.length-1;i>=0;i--)
			{
				if(cookies[i].getName().startsWith("classHaru"))
				{
					String cno=cookies[i].getValue();
					ClassDetailVO vo=service.classDetailData(Integer.parseInt(cno));
					list.add(vo);
				}
			}
		}
		JSONArray arr=new JSONArray();
		int i=0;
		for(ClassDetailVO vo:list)
		{
			if(i>5) break;
			JSONObject obj=new JSONObject();
			obj.put("cno", vo.getCno());
			obj.put("cateno", vo.getCateno());
			obj.put("detail_cateno", vo.getDetail_cateno());
			obj.put("title", vo.getTitle());
			obj.put("image", vo.getImage());

			arr.add(obj);
			i++;
		}
		return arr.toJSONString();
	}
	
	@GetMapping(value="class/class_detail_vue.do",produces = "text/plain;charset=UTF-8")
	public String class_detail_vue(int cno)
	{
		ClassDetailVO vo=service.classDetailData(cno);
		
		JSONObject obj=new JSONObject();
		obj.put("cno", vo.getCno());
		obj.put("cateno", vo.getCateno());
		obj.put("detail_cateno", vo.getDetail_cateno());
		obj.put("title", vo.getTitle());
		obj.put("image", vo.getImage());
		obj.put("tno", vo.getTno());
		obj.put("place", vo.getPlace());
		obj.put("location", vo.getLocation());
		obj.put("schedule", vo.getSchedule());
		obj.put("notice", vo.getNotice());
		obj.put("time", vo.getTime());
		obj.put("perprice", vo.getPerprice());
		obj.put("totalprice", vo.getTotalprice());
		obj.put("summary", vo.getSummary());
		obj.put("target", vo.getTarget());
		obj.put("tutor_intro", vo.getTutor_intro());
		obj.put("class_intro", vo.getClass_intro());
		obj.put("class_curri", vo.getClass_curri());
		obj.put("class_video", vo.getClass_video());
		obj.put("onoff", vo.getOnoff());
		obj.put("inwon", vo.getInwon());
		obj.put("tutor_info_nickname", vo.getTutor_info_nickname());
		obj.put("tutor_info_img", vo.getTutor_info_img());
		obj.put("tutor_info_grade_total", vo.getTutor_info_grade_total());
		obj.put("jjim_count", vo.getJjim_count());
		
		return obj.toJSONString();
	}
}
