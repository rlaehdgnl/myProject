package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.D_EntrantVO;

public interface D_EntrantMapper {
	
	public int insert(D_EntrantVO vo);
	
	public D_EntrantVO read(Long seq_d);
	
	public int delete(Long seq_d);
	
	public int update(D_EntrantVO e_name);

	public List<D_EntrantVO> getList(
			@Param("seq_d") Long seq_d);
}
