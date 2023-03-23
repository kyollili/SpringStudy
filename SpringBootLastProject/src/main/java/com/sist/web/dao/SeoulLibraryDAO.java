package com.sist.web.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import java.util.*;
import com.sist.web.entity.*;
@Repository
public interface SeoulLibraryDAO extends JpaRepository<seoulLibraryEntity, Integer>{
	@Query(value="SELECT * FROM seoul_library limit 0,20",nativeQuery = true)
	public List<seoulLibraryEntity> LibraryList(@Param("lno") Integer lno);
	
	public seoulLibraryEntity findByLno(@Param("lno") Integer lno);
	
	@Query(value = "select ceil(count(*)/20.0) from seoul_library",nativeQuery = true)
	public int libraryTotalPage();
}
