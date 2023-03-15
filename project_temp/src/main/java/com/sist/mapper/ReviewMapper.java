package com.sist.mapper;
import java.util.*;

import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.mapping.StatementType;

/* spring:no => ch:rno  spring:rno => ch:cno*/
import com.sist.vo.*;
public interface ReviewMapper {
	/*
	 * create or replace NONEDITIONABLE PROCEDURE ch_reviewList(
		    pCno ch_review_2_3.cno%Type,
		    pResult OUT SYS_REFCURSOR
		)
		IS
		BEGIN
		    OPEN pResult FOR
		      SELECT rno,cno,id,content,regdate,TO_CHAR(regdate,'YYYY-MM-DD') as dbday
		      FROM ch_review_2_3
		      WHERE cno=pCno
		      ORDER BY rno DESC;
		END;
	 */
	@Select(value="{CALL ch_reviewList(#{pCno,mode=IN,javaType=java.lang.Integer},"
			+"#{pResult,mode=OUT,jdbcType=CURSOR,resultMap=replyMap})}")
	@Options(statementType=StatementType.CALLABLE)
	public List<ReviewVO> reviewListData(Map map);
	
	/*
	 * create or replace NONEDITIONABLE PROCEDURE ch_reviewInsert(
		    pCno ch_review_2_3.cno%TYPE,
		    pId ch_review_2_3.id%TYPE,
		    pContent ch_review_2_3.content%Type
		)
		IS 
		BEGIN
		    INSERT INTO ch_review_2_3 VALUES(ch_review_rno_seq.nextval,SYSDATE,pContent,pId,pCno);
		    COMMIT;
		END;
	 */
	@Select(value="{CALL ch_reviewInsert(#{pCno,mode=IN,javaType=java.lang.Integer},"
			+"#{pId,mode=IN,javaType=java.lang.String},"
			+"#{pContent,mode=IN,javaType=java.lang.String})}")
	@Options(statementType=StatementType.CALLABLE)
	public void reviewInsert(Map map);
	
	/*
	 * create or replace NONEDITIONABLE PROCEDURE ch_reviewUpdate(
		    pRno ch_review_2_3.rno%TYPE,
		    pContent ch_review_2_3.content%Type
		)
		IS
		BEGIN
		    UPDATE ch_review_2_3 SET
		    content=pContent
		    WHERE rno=pRno;
		    COMMIT;
		END;
	 */
	@Select(value="{CALL ch_reviewUpdate(#{pRno,mode=IN,javaType=java.lang.Integer},"
			+ "#{pContent,mode=IN,javaType=java.lang.String})}")
	@Options(statementType = StatementType.CALLABLE)
	public void reviewUpdate(Map map);
	
	/*
	 * create or replace NONEDITIONABLE PROCEDURE ch_reviewDelete(
		    pRno ch_review_2_3.rno%TYPE
		)
		IS
		BEGIN
		    DELETE FROM ch_review_2_3
		    WHERE rno=pRno;
		    COMMIT;
		END;
	 */
	@Select(value="CALL ch_reviewDelete(#{pRno,mode=IN,javaType=java.lang.Integer})")
	@Options(statementType = StatementType.CALLABLE)
	public void reviewDelete(Map map);
}
