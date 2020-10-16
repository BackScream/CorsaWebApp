package it.beije.oort.corsa.girardi.repository;


import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import it.beije.oort.corsa.girardi.entity.Utente;


@Repository
public interface UtenteRepository extends JpaRepository<Utente, Integer> {

	List<Utente> findByNome(String nome);
	
	Optional<Utente> findByEmail(String email);
	
	Optional<Utente> findByEmailAndPassword(String email, String password);
	
}