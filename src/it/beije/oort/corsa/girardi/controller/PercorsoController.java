package it.beije.oort.corsa.girardi.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import it.beije.oort.corsa.girardi.entity.Percorso;
import it.beije.oort.corsa.girardi.service.PercorsoService;
import it.beije.oort.corsa.girardi.entity.Utente;
import it.beije.oort.corsa.girardi.service.UtenteService;


@Controller
public class PercorsoController {
	
	@Autowired
	private PercorsoService percorsoService;
	
	@Autowired
	private UtenteService utenteService;
	
	
	
	@RequestMapping(value = "/girardi/storico", method = RequestMethod.GET)
	public String storico( HttpServletRequest request, Model model) {
		Integer idUtente = 0;
		List<Percorso> percorsi = new ArrayList<>();
		if (utenteService.isThereUtenteSession(request)) {
			Utente utenteSession = (Utente)request.getSession().getAttribute("utente");
			
			percorsi = percorsoService.findByIdUtente(utenteSession.getId()); 
			
			model.addAttribute("percorsi", percorsi);
			return "girardi/storico";
		} else {
			 
			model.addAttribute("errore", "Occore fare il login");
			return "girardi/my_login";
		}
	}
	

}
