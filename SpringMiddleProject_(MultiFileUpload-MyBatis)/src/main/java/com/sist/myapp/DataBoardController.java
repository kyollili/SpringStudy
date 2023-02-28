package com.sist.myapp;

import org.springframework.beans.factory.annotation.Autowired;import org.springframework.beans.propertyeditors.URLEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.multipart;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.net.URLEncoder;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mongodb.io.ByteBufferOutputStream;
import com.sist.dao.*;
@Controller
public class DataBoardController {
	//����Ŭ ���� => DAO
	@Autowired
	private DataBoardDAO dao;
	
	//1.��� ���
	@GetMapping("databoard/list.do")
	public String databoard_list(String page, Model model) //Model => request�� ��ü
	{
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		int rowSize=10;
		int start=(rowSize*curpage)-(rowSize-1);
		int end=rowSize*curpage;
		Map map=new HashMap();
		map.put("start", start);
		map.put("end", end);
		List<DataBoardVO> list=dao.databoardListData(map);
		int totalpage=dao.databoardTotalPage();
		model.addAttribute("list",list);
		model.addAttribute("curpage",curpage);
		model.addAttribute("totalpage",totalpage);
		return "databoard/list"; //forward => request,model�� JSP�� ����
	}
	@GetMapping("databoard/insert.do")
	   public String databoard_insert() //��
	   {
		   return "databoard/insert";
	   }
	   @PostMapping("databoard/insert_ok.do")
	   public String databoard_insert_ok(DataBoardVO vo)
	   {
		   List<MultipartFile> list=vo.getFiles();
		   if(list==null)//���ε尡 �ȵ� ����
		   {
			   vo.setFilename("");
			   vo.setFilesize("");
			   vo.setFilecount(0);
		   }
		   else// ���ε尡 �� ���� a.jpg,b.jpg,c.jpg
		   {
			   String fn="";
			   String fs="";
			   for(MultipartFile mf:list)
			   {
				   String of=mf.getOriginalFilename();
				   fn+=of+","; // �����ͺ��̽� ÷��
				   File file=new File("c:\\download\\"+of);//���ε�
				   fs+=mf.getSize()+",";
				   try
				   {
				      mf.transferTo(file);
				   }catch(Exception ex) {}
			   }
			   vo.setFilename(fn.substring(0,fn.lastIndexOf(",")));
			   vo.setFilesize(fs.substring(0,fs.lastIndexOf(",")));
			   vo.setFilecount(list.size());
		   }
		   dao.databoardInsert(vo);
		   return "redirect:list.do";//sendRedirect => request�� �ʱ�ȭ => ȭ�� �̵� 
	   }
	//RedirectAttributes => redirect => ������ ����
	//detail.do?no=${vo.no}
	@GetMapping("databoard/detail.do")
	public String databoard_detail(int no, Model model)
	{
		DataBoardVO vo=dao.databoardDetailData(no);
		if(vo.getFilecount()>0)
		{
			String[] fn=vo.getFilename().split(",");
			String[] fs=vo.getFilesize().split(",");
			List<String> nList=Arrays.asList(fn);
			List<String> sList=Arrays.asList(fs);
			
			model.addAttribute("nList",nList);
			model.addAttribute("sList",sList);
		}
		model.addAttribute("vo",vo);
		return "databoard/detail";
	}
	//download.do?fn=${fn }
	@GetMapping("databoard/download.do")
	public void databoard_download(String fn,HttpServletResponse response)
	{
		try
		{
			File file=new File("c:\\download\\"+fn);
			
			response.setHeader("Content-Disposition", "attachment;filename="+URLEncoder.encode(fn,"UTF-8"));
			//�ٿ�ε� �˾�â ����
			response.setContentLength((int)file.length());
			
			//���� �ٿ�ε�
			BufferedInputStream bis=new BufferedInputStream(new FileInputStream(file));//������ �����ϴ� ���� ��ġ
			BufferedOutputStream bos=new BufferedOutputStream(response.getOutputStream());//����� �ٿ� �޴� ��ġ
			int i=0;
			byte[] buffer=new byte[1024];
			
			while((i=bis.read(buffer,0,1024))!=-1)
			{
				bos.write(buffer,0,i);
			}
			bis.close();
			bos.close();
		}catch(Exception ex) {}
	}
	//update.do?no=${vo.no }
	@GetMapping("databoard/update.do") //form�±� ������ �� getMapping!
	public String databoard_update(int no,Model model)
	{
		DataBoardVO vo=dao.databoardUpdateData(no);
		model.addAttribute("vo",vo);
		return "databoard/update";
	}
	//���� ����
	@PostMapping("databoard/update_ok.do")//���±� �����ϱ� postMapping!
	public String databoard_update_ok(DataBoardVO vo,RedirectAttributes ra)
	{
		dao.databoardUpdate(vo);
		ra.addAttribute("no",vo.getNo());
		return "redirect:detail.do?no="+vo.getNo();
	}
	
	@PostMapping("databoard/find.do")
	public String databoard_find(String[] fs, String ss, Model model)
	{
		Map map=new HashMap();
		map.put("fsArr",fs);
		map.put("ss",ss);
		//DAO ���� = �˻� ������ �б�
		List<DataBoardVO> list=dao.databoardFindData(map);
		int count=dao.FindCount(map);
		model.addAttribute("count",count);
		model.addAttribute("list",list);
		return "databoard/find";
	}
	
}
