package com.sist.mapper;
import java.util.*;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

import com.sist.dao.*;
/*
 * 	1. ��� => ����¡ (��������) => �ζ��κ�
 * 	2. ������ �߰� => ���� ���ε� => List
 * 	3. ������ ����
 * 	4. ������ ���� => ���� ����
 * 	5. ������ �󼼺��� => �ٿ�ε� => ������ void (Controller : String, void)
 * 	6. ������ �˻� => MyBatis (��������)
 * 					trim, forEach, choose, when ...
 */
public interface DataBoardMapper {
	//1. ���
	@Select("SELECT no,subject,name,TO_CHAR(regdate,'YYYY-MM-DD') as dbday,hit,filecount,num "
			+"FROM (SELECT no,subject,name,regdate,hit,filecount,rownum as num "
			+"FROM (SELECT /*+ INDEX_DESC(spring_databoard sd_no_pk)*/no,subject,name,regdate,hit,filecount "
			+"FROM spring_databoard)) "
			+"WHERE num BETWEEN #{start} AND #{end}")
	public List<DataBoardVO> databoardListData(Map map);
	
	@Select("SELECT CEIL(COUNT(*)/10.0) FROM spring_databoard")
	public int databoardTotalPage();
	
	//2. �߰� 
	@SelectKey(keyProperty = "no", resultType = int.class, before = true, 
			statement = "SELECT NVL(MAX(no)+1,1) as no FROM spring_databoard") //������
	
	@Insert("INSERT INTO spring_databoard(no,name,subject,content,pwd,filename,filesize,filecount) "
			+"VALUES(#{no},#{name},#{subject},#{content},#{pwd},#{filename},#{filesize},#{filecount})")
	public void databoardInsert(DataBoardVO vo);
	
	//3.�󼼺���
	@Update("UPDATE spring_databoard SET "
			+"hit=hit+1 "
			+"WHERE no=#{no}")
	public void hitIncrement(int no);
	
	@Select("SELECT no,name,subject,content,TO_CHAR(regdate, 'YYYY-MM-DD') as dbday,hit, "
			+"filename,filesize,filecount "
			+"FROM spring_databoard "
			+"WHERE no=#{no}")
	public DataBoardVO databoardDetailData(int no);
	
	//4. ����
	@Select("SELECT pwd FROM spring_databoard WHERE no=#{no}")
	public String databoardGetPassword(int no);
	
	@Select("SELECT filename,filesizze,filecount FROM spring_databoard WHERE no=#{no}")
	public DataBoardVO databoardFileinfoData(int no);
	
	@Delete("DELETE FROM spring_databoard WHERE no=#{no}")
	public void databoardDelete(int no);
	
	@Update("UPDATE spring_databoard SET "
			+"name=#{name},subject=#{subject},content=#{content} "
			+"WHERE no=#{no}")
	public void databoardUpdate(DataBoardVO vo);
	
	//<select id="databoardFindData" resultType="DataBoardVO" parameterType="hashmap">
	public List<DataBoardVO> databoardFindData(Map map);
	
	@Select({
			"<script>"
			+"SELECT COUNT(*) FROM spring_databoard "
			+"WHERE "
			+"<trim prefixOverrides==\"OR\">"
			+"<foreach collection=\"fsArr\" item=\"fd\">"
			+"<trim prefix=\"OR\">"
			+"<choose>"
			+"<when test=\"fd=='N'.toString()\">"
			+"name LIKE '%'||#{ss}||'%'"
			+"</when>"
			+"<when test=\"fd=='S'.toString()\">"
			+"subject LIKE '%'||#{ss}||'%'"
			+"</when>"
			+"<when test=\"fd=='C'.toString()\">"
			+"content LIKE '%'||#{ss}||'%'"
			+"</when>"
			+"</choose>"
			+"</trim>"
			+"</foreach>"
			+"</trim>"
			+"</script>"})
	public int FindCount(Map map);
}
