package com.sist.dao;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import java.util.*;
import com.sist.vo.*;
/*
 * <select id="goodsListData" resultType="GoodsVO">
    SELECT no,name,price,rownum
    FROM (SELECT no,goods_name as name,goods_price as price FROM goods_all ORDER BY no ASC)
    WHERE rownum&lt;=30;
  </select>
 */
public class GoodsDAO extends SqlSessionDaoSupport{
	public List<GoodsVO> goodsListData()
	{
		return getSqlSession().selectList("goodsListData"); //no mappered 오류 => 아이디 틀림
	}
}
