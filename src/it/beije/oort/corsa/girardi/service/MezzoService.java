package it.beije.oort.corsa.girardi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.beije.oort.corsa.girardi.repository.MezzoRepository;
import it.beije.oort.corsa.girardi.entity.Mezzo;


@Service
public class MezzoService {
	
	@Autowired
	private MezzoRepository mezzoRepository;

	public List<Mezzo> listaMezzi() {
		List<Mezzo> mezzi = mezzoRepository.findByIdAfter(0);
		return mezzi;
	}
}
