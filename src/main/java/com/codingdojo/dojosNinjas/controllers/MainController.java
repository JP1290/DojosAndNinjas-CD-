package com.codingdojo.dojosNinjas.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.dojosNinjas.models.Dojo;
import com.codingdojo.dojosNinjas.models.Ninja;
import com.codingdojo.dojosNinjas.services.DojoService;
import com.codingdojo.dojosNinjas.services.NinjaService;

@Controller
public class MainController {
	
	@Autowired
	private NinjaService ninjas;
	
	@Autowired
	private DojoService dojos;

	@GetMapping("/dojo/new")
	public String newDojo(@ModelAttribute("dojo") Dojo dojo) {
		return "index.jsp";
	}
	
	@GetMapping("/ninjas")
	public String newNinja(@ModelAttribute("ninja") Ninja ninja, Model model) {
		model.addAttribute("dojo", dojos.findAllDojos());
		return "ninjas.jsp";
	}
	
	@GetMapping("/dojo/{id}")
	public String ninjasInDojos(@PathVariable("id") Long id, Model model) {
		Dojo dojo = dojos.find(id);
		model.addAttribute("dojo", dojo);
		return "ninjasInDojos.jsp";
	}
	
	@PostMapping("/submitDojo")
	public String createNewDojo(@ModelAttribute("dojo") Dojo dojo) {
		Dojo newDojo = dojos.create(dojo);
		return String.format("redirect:/dojos/%s", newDojo.getId());
	}
	
	@PostMapping("/submitNinja")
	public String createNewNinja(@ModelAttribute("ninja") Ninja ninja) {
		ninja = ninjas.create(ninja);
		return "redirect:/dojo/" + ninja.getDojo().getId();
	}
	
	
	
}
