package org.zerock.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.D_EntrantVO;

import org.zerock.service.D_EntrantService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@RequestMapping("/d_entrant/*")
@AllArgsConstructor
public class D_EntrantController {
	
	private D_EntrantService service;
	
	@GetMapping(value= "/list/{seq_d}",
	produces = {
			MediaType.APPLICATION_XML_VALUE,
			MediaType.APPLICATION_JSON_UTF8_VALUE })
public ResponseEntity<List<D_EntrantVO>> getList(
		@PathVariable("seq_d") Long seq_d) {
	
	log.info("getList................");
	
	
	return new ResponseEntity<>(service.getList(seq_d), HttpStatus.OK);

	}
	
	@PostMapping(value = "/new", consumes = "application/json", produces = { MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> create(@RequestBody D_EntrantVO vo) {

		log.info("D_EntrantVO: " + vo);

		int insertCount = service.register(vo);

		log.info("Reply INSERT COUNT: " + insertCount);

		return insertCount == 1  
				?  new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
}
