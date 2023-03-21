package com.sist.web.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.sist.web.entity.*;
@Repository
public interface LibraryDAO extends JpaRepository<seoulLibraryEntity, Integer>{
	@Query(value="SELECT no,title,poster FROM gangnam_library",nativeQuery = true)
	public List<LibraryDataMapping> bookListData();
	
}
