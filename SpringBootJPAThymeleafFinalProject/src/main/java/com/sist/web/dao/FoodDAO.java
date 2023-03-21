package com.sist.web.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import java.util.*;
import com.sist.web.entity.*;
import com.sist.web.dao.*;
@Repository
public interface FoodDAO extends JpaRepository<FoodEntity,Integer>{
	public List<FoodEntity> findByCno(@Param("cno") Integer cno);
	
	public FoodEntity findByFno(@Param("fno") Integer fno);
	
	
}
