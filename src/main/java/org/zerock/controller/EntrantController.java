package org.zerock.controller;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.EntrantVO;

import org.zerock.service.EntrantService;


import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/entrant/*")
@AllArgsConstructor
public class EntrantController {
	
	private EntrantService service;
	
	
	@GetMapping("/list")
	public void list(Model model) {
		
		log.info("list");
		
		model.addAttribute("list", service.getList());
	}

	
	@PostMapping("/register")
	public String register(EntrantVO entrant, RedirectAttributes rttr) {
		
		log.info("register: " + entrant);
		
		service.register(entrant);
		
		rttr.addFlashAttribute("result", entrant.getSeq_e());
		
		return "redirect:/entrant/list";
	}
	
	@GetMapping({"/get","/modify"})
	public void get(@RequestParam("seq_e") Long seq_e, Model model) {
		
		log.info("/get or modify");
		model.addAttribute("entrant", service.get(seq_e));
	}
	
	@PostMapping("/modify")
	public String modify(EntrantVO entrant, RedirectAttributes rttr) {
		log.info("modify:" + entrant);
		
		if (service.modify(entrant)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/entrant/list";
		}
	
	@PostMapping("/remove")
	public String remove(@RequestParam("seq_e") Long seq_e, RedirectAttributes rttr) {
		
		log.info("remove........." + seq_e);
		if(service.remove(seq_e)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/entrant/list";
	}
	
	@GetMapping("/register")
	public void register() {
		
	}

}

