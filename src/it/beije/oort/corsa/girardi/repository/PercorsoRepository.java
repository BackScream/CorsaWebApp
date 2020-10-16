package it.beije.oort.corsa.girardi.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import it.beije.oort.corsa.girardi.entity.Percorso;

@Repository
public interface PercorsoRepository extends JpaRepository<Percorso, Integer> {

	List<Percorso> findByIdUtente(Integer idUtente);

}