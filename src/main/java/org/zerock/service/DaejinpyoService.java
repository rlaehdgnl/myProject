package org.zerock.service;

import java.util.List;

import org.zerock.domain.DaejinpyoVO;

public interface DaejinpyoService {
	
	public void register(DaejinpyoVO daejinpyo);
	
	public DaejinpyoVO get(Long seq_d);
	
	public boolean modify(DaejinpyoVO daejinpyo);
	
	public boolean remove(Long seq_d);
	
	public List<DaejinpyoVO> getList();
	

}
