package com.sist.mapper;
import java.util.*;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.mapping.StatementType;

import com.sist.vo.*;
public interface ReplyMapper {
	/*
	 * CREATE OR REPLACE PROCEDURE replyList(
	    pRno spring_reply.rno%Type,
	    pType spring_reply.type%TYPE,
	    pResult OUT SYS_REFCURSOR
		)
		IS
		BEGIN
		    OPEN pResult FOR
		      SELECT no,rno,type,id,name,msg,regdate,TO_CHAR(regdate,'YYYY-MM-DD HH24:MI:SS') as dbday
		      FROM spring_reply
		      WHERE rno=pRno AND type=pType
		      ORDER BY no DESC;
		END;
		/
	 */
	// 목록 출력
	@Select(value="{CALL replyList(#{pRno,mode=IN,javaType=java.lang.Integer},"
			+ "#{pType,mode=IN,javaType=java.lang.Integer},"
			+ "#{pResult,mode=OUT,jdbcType=CURSOR,resultMap=replyMap})}")
	@Options(statementType=StatementType.CALLABLE)
	public List<ReplyVO> replyListData(Map map);
	
	/*
	 * CREATE OR REPLACE PROCEDURE replyInsert(
	    pRno spring_reply.rno%TYPE,
	    pType spring_reply.type%TYPE,
	    pId spring_reply.id%TYPE,
	    pName spring_reply.name%Type,
	    pMsg spring_reply.msg%Type
		)
		IS 
		BEGIN
		    INSERT INTO spring_reply VALUES(sr_no_seq.nextval,pRno,pType,pId,pName,pMsg,SYSDATE);
		    COMMIT;
		END;
		/
	 */
	//값을 첨부하는건 mode=IN, 값을 가져오는건 mode=OUT
	@Select(value="{CALL replyInsert(#{pRno,mode=IN,javaType=java.lang.Integer},"
			+ "#{pType,mode=IN,javaType=java.lang.Integer},"
			+ "#{pId,mode=IN,javaType=java.lang.String},"
			+ "#{pName,mode=IN,javaType=java.lang.String},"
			+ "#{pMsg,mode=IN,javaType=java.lang.String})}")
	@Options(statementType = StatementType.CALLABLE)
	public void replyInsert(Map map);
	
	/*
	 * CREATE OR REPLACE PROCEDURE replyUpdate(
	    pNo spring_reply.no%TYPE,
	    pMsg spring_reply.msg%Type
		)
		IS
		BEGIN
		    UPDATE spring_reply SET
		    msg=pMsg
		    WHERE no=pNo;
		    COMMIT;
		END;
		/
	 */
	// 수정
	@Select(value="{CALL replyUpdate(#{pNo,mode=IN,javaType=java.lang.Integer},"
			+ "#{pMsg,mode=IN,javaType=java.lang.String})}")
	@Options(statementType = StatementType.CALLABLE)
	public void replyUpdate(Map map);
	
	/*
	CREATE OR REPLACE PROCEDURE replyDelete(
	    pNo spring_reply.no%TYPE
	)
	IS
	BEGIN
	    DELETE FROM spring_reply
	    WHERE no=pNo;
	    COMMIT;
	END;
	/
	 */
	//삭제
	@Select(value="CALL replyDelete(#{pNo,mode=IN,javaType=java.lang.Integer})}")
	@Options(statementType = StatementType.CALLABLE)
	public void replyDelete(Map map);
}
