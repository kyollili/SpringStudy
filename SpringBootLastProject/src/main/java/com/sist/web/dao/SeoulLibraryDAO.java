package com.sist.web.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import java.util.*;
import com.sist.web.entity.*;
@Repository
public interface SeoulLibraryDAO extends JpaRepository<seoulLibraryEntity, Integer>{
	
	public seoulLibraryEntity findByLno(@Param("lno") Integer lno);
	
	@Query(value = "select * from seoul_library "
			+ "WHERE gu like concat('%',:gu,'%')"
			+ "limit :start,20",nativeQuery = true)
	public List<seoulLibraryEntity> libraryFindData(@Param("gu") String gu,@Param("start") Integer start);
	
	@Query(value = "select ceil(count(*)/20.0) from seoul_library "
			+ "where gu like concat('%',:gu,'%')",nativeQuery = true)
	public int libraryFindTotal(@Param("gu") String gu);
}
