package com.sist.dao;
import com.sist.mapper.*;
import java.util.*;

import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sist.vo.*;
@Repository
public class MusicDAO {
	@Autowired
	private MusicMapper mapper;
	
//	@Select("SELECT no,title,singer,poster,album "
//			+"FROM melon_cjw ORDER BY no ASC")
	public List<MusicVO> musicAllData()
	{
		return mapper.musicAllData();
	}
	
//	@Select("SELECT * FROM melon_cjw "
//			+"WEHRE no=#{no}")
	public MusicVO musicDetailData(int no)
	{
		return mapper.musicDetailData(no);
	}
}
