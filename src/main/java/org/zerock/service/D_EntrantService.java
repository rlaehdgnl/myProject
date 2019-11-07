package org.zerock.service;

import java.util.List;

import org.zerock.domain.D_EntrantVO;


public interface D_EntrantService {
	
	public int register(D_EntrantVO vo);
	
	public D_EntrantVO get(Long seq_e);
	
	public boolean modify(D_EntrantVO vo);
	
	public boolean remove(Long seq_e);
	
	public List<D_EntrantVO> getList(Long seq_d);
	
}
