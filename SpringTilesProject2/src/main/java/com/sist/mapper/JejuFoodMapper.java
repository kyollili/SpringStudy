package com.sist.mapper;
import java.util.*;

import org.apache.ibatis.annotations.Select;

import com.sist.vo.*;
public interface JejuFoodMapper {
	@Select("SELECT no,title,poster,num "
			+"FROM (SELECT no,title,poster, rownum as num "
			+"FROM (SELECT no,title,poster "
			+"FROM jejuLocation ORDER BY no ASC)) "
			+"WHERE num BETWEEN #{start} AND #{end}")
	public List<JejuLocationVO> jejuLocationListData(Map map);
	
	@Select("SELECT CEIL(COUNT(*)/20.0) FROM jejuLocation")
	public int jejuTotalPage();
	
	@Select("SELECT no,title,poster,num "
			+"FROM (SELECT no,title,poster, rownum as num "
			+"FROM (SELECT no,title,poster "
			+"FROM jejuFood ORDER BY no ASC)) "
			+"WHERE num BETWEEN #{start} AND #{end}")
	public List<JejuFoodVO> jejuFoodListData(Map map);
	
	@Select("SELECT CEIL(COUNT(*)/20.0) FROM jejuFood")
	public int jejuFoodTotalPage();
	
	@Select("SELECT * FROM jejuFood "
			+"WHERE no=#{no}")
	public JejuFoodVO jejuDetailData(int no);
	

}
