package com.sist.mapper;
import java.util.*;

import com.sist.dao.SeoulLocationVO;
public interface SeoulMapper {
	// �Ű������� �� �� �̻� ����ϸ� ���� �߻�
	/*
	 * 	1. ~VO
	 * 	2. MAP
	 */
	public List<SeoulLocationVO> seoulListData(Map map);
	public SeoulLocationVO seoulDetailData(Map map);
		//		resultType		id			parameterType
}
