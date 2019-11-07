package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.EntrantVO;
import org.zerock.mapper.EntrantMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class EntrantServiceImpl implements EntrantService{
	
	@Setter(onMethod_ = @Autowired)
	private EntrantMapper mapper;
	
	@Override
	public void register(EntrantVO Entrant) { 
		
		log.info("register......" + Entrant);
		
		mapper.insertSelectKey(Entrant);
	}

	@Override
	public EntrantVO get(Long seq_e) {

		log.info("get......" + seq_e);
		
		return mapper.read(seq_e);
	}

	@Override
	public boolean modify(EntrantVO Entrant) {
		
		log.info("modify......." + Entrant);
		
		return mapper.update(Entrant) == 1;
	}

	@Override
	public boolean remove(Long seq_e) {
		
		log.info("remove.........." + seq_e);
		return mapper.delete(seq_e) == 1;
	}

	@Override
	public List<EntrantVO> getList() {
		
		log.info("getList.......");
		
		return mapper.getList();
	}

}
