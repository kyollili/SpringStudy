package com.sist.dao;
import java.util.*;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sist.mapper.MemberMapper;
import com.sist.vo.MemberVO;
@Repository
public class MemberDAO {
	@Autowired
	private MemberMapper mapper;
	
	//@Insert("INSERT INTO spring_member VALUES(#{id},#{pwd},#{name})")
	public void memberInsert(MemberVO vo)
	{
		mapper.memberInsert(vo);
	}
	
	/*@Select("SELECT COUNT(*) FROM spring_member "
			+"WHERE id=#{id}")*/
	public int memberIdCheck(String id)
	{
		return mapper.memberIdCheck(id);
	}
	
	/*@Select("SELECT id,pwd,name FROM spring_member "
			+"WHERE id=#{id}")*/
	public MemberVO memberPwdCheck(String id)
	{
		return mapper.memberPwdCheck(id);
	}
}
