package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.D_EntrantVO;
import org.zerock.mapper.D_EntrantMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class D_EntrantServiceImpl implements D_EntrantService{
	
	@Setter(onMethod_ = @Autowired)
	private D_EntrantMapper mapper;
	
	@Override
	public int register(D_EntrantVO vo) { 
		
		log.info("register......" + vo);
		
		return mapper.insert(vo);
	}

	@Override
	public D_EntrantVO get(Long seq_e) {

		log.info("get......" + seq_e);
		
		return mapper.read(seq_e);
	}

	@Override
	public boolean modify(D_EntrantVO vo) {
		
		log.info("modify......." + vo);
		
		return mapper.update(vo) == 1;
	}

	@Override
	public boolean remove(Long seq_e) {
		
		log.info("remove.........." + seq_e);
		return mapper.delete(seq_e) == 1;
	}

	@Override
	public List<D_EntrantVO> getList(Long seq_d) {
		
		log.info("getList......." + seq_d);
		
		return mapper.getList(seq_d);
	}

}
