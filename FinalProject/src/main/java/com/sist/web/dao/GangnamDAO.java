package com.sist.web.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.sist.web.entity.*;
@Repository
public interface GangnamDAO extends JpaRepository<seoulLibraryEntity, Integer>{
	@Query(value="SELECT no,title,poster FROM gangnam_library",nativeQuery = true)
	public List<LibraryDataMapping> bookListData();

	@Query(value="SELECT * FROM gangnam_library",nativeQuery = true)
	public List<gangnamEntity> bookList(@Param("no") Integer no);
	
	public gangnamEntity findByNo(@Param("no") Integer no);
	
	@Query(value="select * from gangnam_library "
			+ "where category LIKE concat('%',:category,'%') order by no limit :start,20",nativeQuery = true)
	public List<gangnamEntity> bookFindData(@Param("category") String category,@Param("start") Integer start );
	
	@Query(value="select ceil(count(*)/20.0) from gangnam_library "
			+ "where category LIKE concat('%',:category,'%')",nativeQuery = true)
	public int bookfindTotalPage(String category);
}
