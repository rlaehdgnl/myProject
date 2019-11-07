package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.zerock.domain.DaejinpyoVO;

public interface DaejinpyoMapper {
	
	//@Select("select * from tbl_daejinpyo where seq_d > 0")
	public List<DaejinpyoVO> getList();
	
	public void insert(DaejinpyoVO daejinpyo);
	
	public void insertSelectKey(DaejinpyoVO daejinpyo);
	
	public DaejinpyoVO read(Long seq_d);
	
	public int delete(Long seq_d);
	
	public int update(DaejinpyoVO daejinpyo);
}
