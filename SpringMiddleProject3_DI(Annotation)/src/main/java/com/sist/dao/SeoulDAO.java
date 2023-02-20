package com.sist.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sist.mapper.SeoulMapper;
//메모리 할당 
@Repository("dao")
public class SeoulDAO {
	@Autowired //자동 주입 => setter DI
	private SeoulMapper mapper;
	public List<SeoulVO> seoulListData()
	{
		return mapper.seoulListData();
	}
}
