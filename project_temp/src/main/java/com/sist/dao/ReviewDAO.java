package com.sist.dao;
import com.sist.vo.*;
import com.sist.mapper.*;
import java.util.*;

import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.mapping.StatementType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class ReviewDAO {
	@Autowired
	private ReviewMapper mapper;
	
//	@Select(value="{CALL ch_reviewList(#{pCno,mode=IN,javaType=java.lang.Integer},"
//			+"#{pResult,mode=OUT,jdbcType=CURSOR,resultMap=replyMap})}")
//	@Options(statementType=StatementType.CALLABLE)
	public List<ReviewVO> reviewListData(Map map)
	{
		mapper.reviewListData(map);
		return (List<ReviewVO>)map.get("pResult");
	}
	
//	@Select(value="{CALL ch_reviewInsert(#{pCno,mode=IN,javaType=java.lang.Integer},"
//			+"#{pId,mode=IN,javaType=java.lang.IntegerString}"
//			+"#{pContent,mode=IN,javaType=java.lang.String})}")
//	@Options(statementType=StatementType.CALLABLE)
	public void reviewInsert(Map map)
	{
		mapper.reviewInsert(map);
	}
	
//	@Select(value="{CALL ch_reviewUpdate(#{pRno,mode=IN,javaType=java.lang.Integer},"
//			+ "#{pContent,mode=IN,javaType=java.lang.String})}")
//	@Options(statementType = StatementType.CALLABLE)
	public void reviewUpdate(Map map)
	{
		mapper.reviewUpdate(map);
	}
	
//	@Select(value="CALL ch_reviewDelete(#{pRno,mode=IN,javaType=java.lang.Integer})}")
//	@Options(statementType = StatementType.CALLABLE)
	public void reviewDelete(Map map)
	{
		mapper.reviewDelete(map);
	}
}
