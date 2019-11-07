package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.DaejinpyoVO;
import org.zerock.mapper.DaejinpyoMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class DaejinpyoServiceImpl implements DaejinpyoService{
	
	@Setter(onMethod_ = @Autowired)
	private DaejinpyoMapper mapper;
	
	@Override
	public void register(DaejinpyoVO daejinpyo) { 
		
		log.info("register......" + daejinpyo);
		
		mapper.insertSelectKey(daejinpyo);
	}

	@Override
	public DaejinpyoVO get(Long seq_d) {

		log.info("get......" + seq_d);
		
		return mapper.read(seq_d);
	}

	@Override
	public boolean modify(DaejinpyoVO daejinpyo) {
		
		log.info("modify......." + daejinpyo);
		
		return mapper.update(daejinpyo) == 1;
	}

	@Override
	public boolean remove(Long seq_d) {
		
		log.info("remove.........." + seq_d);
		return mapper.delete(seq_d) == 1;
	}

	@Override
	public List<DaejinpyoVO> getList() {
		
		log.info("getList.......");
		
		return mapper.getList();
	}


	

}
