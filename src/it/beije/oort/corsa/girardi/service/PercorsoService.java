package it.beije.oort.corsa.girardi.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import it.beije.oort.corsa.girardi.entity.Percorso;
import it.beije.oort.corsa.girardi.repository.PercorsoRepository;


@Service
public class PercorsoService {
	
	@Autowired
	private PercorsoRepository percorsoRepository;

	public List<Percorso> findByIdUtente(Integer id) {
		List<Percorso> percorsi = percorsoRepository.findByIdUtente(id);
	return percorsi;
	}
	
	
	@Transactional
	public void insert(Percorso percorso) {
		if (percorso == null) {
			throw new IllegalArgumentException("bean percorso null");
		}
		if (!"".equals(percorso.getPartenzaGps()) || !"".equals(percorso.getArrivoGps()) ||
			!"".equals(percorso.getPartenzaDateTime()) || !"".equals(percorso.getArrivoDateTime()) ||
			!"".equals(percorso.getIdUtente()) || !"".equals(percorso.getIdMezzo())) {
					System.out.println(percorso);
			percorsoRepository.save(percorso);
		} else throw new IllegalArgumentException("dati percorso non presenti");
	}
}
