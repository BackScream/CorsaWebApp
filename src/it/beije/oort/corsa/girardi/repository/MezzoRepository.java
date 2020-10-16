package it.beije.oort.corsa.girardi.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import it.beije.oort.corsa.girardi.entity.Mezzo;


@Repository
public interface MezzoRepository extends JpaRepository<Mezzo, Integer> {

//	List<Mezzo> findByNome(Integer idUtente);
	
	List<Mezzo> findByIdAfter(Integer idAfter); //tutti i mezzi con id > idAfter

}