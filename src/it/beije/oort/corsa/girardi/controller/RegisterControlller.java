package it.beije.oort.corsa.girardi.controller;

import java.util.NoSuchElementException;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import it.beije.oort.corsa.girardi.entity.Utente;
import it.beije.oort.corsa.girardi.service.UtenteService;

@Controller
public class RegisterControlller {
	
	@Autowired
	private UtenteService utenteService;
	
	
	@RequestMapping(value = "/girardi/register", method = RequestMethod.GET)
	public String register( Model model) {
		model.addAttribute("errore", "");
		model.addAttribute("registrato", "");
		
		return "/girardi/register";
	}
	
	
	@RequestMapping(value = "/girardi/register", method = RequestMethod.POST)
	public String register(Utente u, Model model) {
		model.addAttribute("errore", "");
		model.addAttribute("registrato", "");

		Utente utente = null;
		try {
			Optional<Utente> user = utenteService.findByEmail(u.getEmail());
			
			utente = user.get();

			model.addAttribute("errore", "ACCOUNT NON CREATO: un altro account ha "
								+ "questa email.");	
		} catch (NoSuchElementException nsee) {
			model.addAttribute("registrato", "Ti sei registrato correttamente!");
			String email = u.getEmail().toLowerCase();
			u.setEmail(email);
			utenteService.insert(u);
		} finally {
			return "/girardi/register";
		}
	}

}
