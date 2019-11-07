package org.zerock.service;

import java.util.List;

import org.zerock.domain.EntrantVO;


public interface EntrantService {
	
	public void register(EntrantVO entrant);
	
	public EntrantVO get(Long seq_e);
	
	public boolean modify(EntrantVO entrant);
	
	public boolean remove(Long seq_e);
	
	public List<EntrantVO> getList();
	

}
