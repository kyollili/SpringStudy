package com.sist.dao;

import org.mybatis.spring.support.SqlSessionDaoSupport;
/*
 *  <select id="recipeListData" resultType="RecipeVO">
	  	SELECT no,title,chef,rownum
	  	FROM (SELECT no,title,chef FROM recipe ORDER BY no ASC)
	  	WHRER rownum&lt;=30
	  </select>
 */
import java.util.*;
import com.sist.vo.*;
public class RecipeDAO extends SqlSessionDaoSupport{
	public List<RecipeVO> recipeListData()
	{
		return getSqlSession().selectList("recipeListData");
		//resultType="RecipeVO"
		//List<RecipeVO> => selectList
		//RecipeVO => selectOne
	}
}
