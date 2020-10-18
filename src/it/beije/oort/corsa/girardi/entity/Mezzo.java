package it.beije.oort.corsa.girardi.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "mezzo")
public class Mezzo {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private Integer id;
	
	@Column(name="nome")
	private String nome;
	
	@Column(name="descrizione")
	private String descrizione;
	
	
	public Mezzo() {}
	
	public Mezzo(String nome) {
		this(nome, "");
	}
	
	public Mezzo(String nome, String descrizione) {
		this.nome = nome;
		this.descrizione = descrizione;
	}
	
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getDescrizione() {
		return descrizione;
	}
	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}
	
	public String toString() {
		StringBuilder builder = new StringBuilder("mezzo [");
		builder.append("id : ").append(this.id)
			.append(" - nome : ").append(this.nome)
			.append(" - descrizione : ").append(this.descrizione)
			.append("]");
		
		return builder.toString();
	}
	
}
