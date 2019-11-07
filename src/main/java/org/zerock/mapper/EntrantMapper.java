package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.zerock.domain.EntrantVO;

public interface EntrantMapper {
	
	//@Select("select * from tbl_Entrant where seq_d > 0")
	public List<EntrantVO> getList();
	
	public void insert(EntrantVO Entrant);
	
	public void insertSelectKey(EntrantVO Entrant);
	
	public EntrantVO read(Long seq_d);
	
	public int delete(Long seq_d);
	
	public int update(EntrantVO Entrant);
}
