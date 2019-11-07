package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.DaejinpyoVO;
import org.zerock.service.DaejinpyoService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/daejinpyo/*")
@AllArgsConstructor
public class DaejinpyoController {
	
	private DaejinpyoService service;
	
	
	@GetMapping("/list")
	public void list(Model model) {
		
		log.info("list");
		
		model.addAttribute("list", service.getList());
	}

	
	@PostMapping("/register")
	public String register(DaejinpyoVO daejinpyo, RedirectAttributes rttr) {
		
		log.info("register: " + daejinpyo);
		
		service.register(daejinpyo);
		
		rttr.addFlashAttribute("result", daejinpyo.getSeq_d());
		
		return "redirect:/daejinpyo/list";
	}
	
	@GetMapping({"/get","/modify"})
	public void get(@RequestParam("seq_d") Long seq_d, Model model) {
		
		log.info("/get or modify");
		model.addAttribute("daejinpyo", service.get(seq_d));
	}
	
	@PostMapping("/modify")
	public String modify(DaejinpyoVO daejinpyo, RedirectAttributes rttr) {
		log.info("modify:" + daejinpyo);
		
		if (service.modify(daejinpyo)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/daejinpyo/list";
		}
	
	@PostMapping("/remove")
	public String remove(@RequestParam("seq_d") Long seq_d, RedirectAttributes rttr) {
		
		log.info("remove........." + seq_d);
		if(service.remove(seq_d)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/daejinpyo/list";
	}
	
	@GetMapping("/register")
	public void register() {
		
	}
	
	
}

