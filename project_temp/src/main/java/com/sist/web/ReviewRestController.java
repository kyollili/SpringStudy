package com.sist.web;


import java.util.*;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sist.vo.*;
import com.sist.dao.*;

@RestController //VueJS와 연동 
public class ReviewRestController {
   @Autowired
   private ReviewDAO dao;
   // 수정 / 삭제 ==> 본인 
   // v-if=""
   public String review_json_data(List<ReviewVO> list,String id)
   {
	   /*
	    *   private int rno,cno,type;
	        private String id,name,msg,dbday;
	    */
	   JSONArray arr=new JSONArray();
	   int k=0;
	   for(ReviewVO rvo:list)
	   {
		   JSONObject obj=new JSONObject();
		   obj.put("rno", rvo.getRno());
		   obj.put("cno", rvo.getCno());
		   obj.put("id", rvo.getId());
		   obj.put("content", rvo.getContent());
		   obj.put("dbday", rvo.getDbday());
		   if(k==0)
		   {
			   obj.put("sessionId", id);
		   }
		   k++;
		   arr.add(obj);
	   }
	   return arr.toJSONString();
   }
   
   @GetMapping(value="class/review_list.do",produces = "text/plain;charset=utf-8")
   public String review_list(int cno,String id)
   {
	   String result="";
	   ReviewVO vo=new ReviewVO();
	   Map map=new HashMap();
	   map.put("cno", vo.getCno());
	   List<ReviewVO> list=dao.reviewListData(null);
	   result=review_json_data(list,id);
	   return result;//JSON
   }
   @GetMapping(value="class/review_insert.do",produces = "text/plain;charset=utf-8")
   public String review_insert(String id,int cno,String content)
   {
	   ReviewVO vo=new ReviewVO();
	   Map map=new HashMap();
	   map.put("cno", vo.getCno());
	   map.put("content", vo.getContent());
	   dao.reviewInsert(map);
	   
	   List<ReviewVO> list=dao.reviewListData(map);
	   String result=review_json_data(list, id);
	   return result;
	   
   }
   @GetMapping(value="class/review_delete.do",produces = "text/plain;charset=utf-8")
   public String review_delete(String id,int rno)
   {
	   String result="";
	   ReviewVO vo=new ReviewVO();
	   // 삭제 
	   Map map=new HashMap();
	   map.put("rno", vo.getRno());
	   dao.reviewDelete(map);
	   // 삭제후 목록
	   List<ReviewVO> list=dao.reviewListData(map);
	   result=review_json_data(list, id);
	   return result;
   }
   // ********************* 수정 예정 
//   @PostMapping(value="class/review_update.do",produces = "text/html;charset=utf-8")
//   public String review_update(Map map)
//   {
//	   ReviewVO vo=new ReviewVO();
//	   String result="<script>location.href=\"../seoul/detail.do?no="+vo.getCno()+"\";</script>";
//	   dao.reviewUpdate(map);
//	   return result;
//   }
}