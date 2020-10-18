package it.beije.oort.corsa.girardi.controller;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.ArrayList;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import it.beije.oort.corsa.girardi.entity.Utente;
import it.beije.oort.corsa.girardi.service.UtenteService;
import it.beije.oort.corsa.girardi.entity.Mezzo;
import it.beije.oort.corsa.girardi.service.MezzoService;
import it.beije.oort.corsa.girardi.entity.Percorso;
import it.beije.oort.corsa.girardi.service.PercorsoService;

//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;


@Controller
public class MyHomeController {
	
//	private Logger log = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private UtenteService utenteService;
	
	@Autowired
	private MezzoService mezzoService;
	
	@Autowired
	private PercorsoService percorsoService;
	

	

	@RequestMapping(value = "/girardi/passaggio", method = RequestMethod.POST)
	public String utente(HttpServletRequest request, Utente u, Model model) {
		Utente utente = null;
		try {
		Optional<Utente> user = utenteService.findByEmailAndPassword(u.getEmail(), u.getPassword());
		
		utente = user.get();
		} catch (NoSuchElementException nsee) {
			model.addAttribute("errore", "CREDENZIALI ERRATE");	
			return "girardi/my_login";
		}
		if (utente == null) {
			model.addAttribute("errore", "CREDENZIALI ERRATE");	
			return "girardi/my_login";
		} else {			
			List<Mezzo> mezzi = new ArrayList<>();
			mezzi = mezzoService.listaMezzi();
			model.addAttribute("mezzi", mezzi);
			
			request.getSession().setAttribute("utente", utente);
			model.addAttribute("utente", utente);	
			return "girardi/passaggio";
		}
	}
	
	
//-------------------------------------------------------------------------------
	@RequestMapping(value = "/girardi/homepage", method = RequestMethod.GET)
	public String utente(HttpServletRequest request, Model model) {
		if (utenteService.isThereUtenteSession(request)) {
			
			List<Mezzo> mezzi = new ArrayList<>();
			mezzi = mezzoService.listaMezzi();
			model.addAttribute("mezzi", mezzi);
		
			model.addAttribute("errore", "");

			return "girardi/homepage";
		} else
			return "girardi/my_login";
	}

	
	@RequestMapping(value = "/girardi/homepage", method = RequestMethod.POST)
	public String percorso(HttpServletRequest request, Percorso p, Model model) {
		if (utenteService.isThereUtenteSession(request)) {
			List<Mezzo> mezzi = new ArrayList<>();
			mezzi = mezzoService.listaMezzi();
			model.addAttribute("mezzi", mezzi);
			
			try {
				percorsoService.insert(p);
				model.addAttribute("errore", "Percorso registrato correttamente!");
			} catch (IllegalArgumentException iae) {
				model.addAttribute("errore", "ALERT: percorso non valido.");
			}
			
			return "girardi/homepage";
		} else
			return "girardi/my_login";
	}
	

//-------------------------------------------------------------------------------

}