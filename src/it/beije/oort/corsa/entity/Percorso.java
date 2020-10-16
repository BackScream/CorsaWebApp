package it.beije.oort.corsa.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "percorso")
public class Percorso {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private Integer id;
	
	@Column(name="partenzaGps")
	private String partenzaGps;
	
	@Column(name="arrivoGps")
	private String arrivoGps;
	
	@Column(name="partenzaDateTime")
	private String partenzaDateTime;
	
	@Column(name="arrivoDateTime")
	private String arrivoDateTime;

	@Column(name="idUtente")
	private Integer idUtente;
	
	@Column(name="idMezzo")
	private Integer idMezzo;
	
	
	public Percorso() {}
	
	public Percorso(String partenzaGps, String arrivoGps, String partenzaDateTime, 
					String arrivoDateTime, Integer idUtente, Integer idMezzo) {
		this.partenzaGps = partenzaGps;
		this.arrivoGps = arrivoGps;
		this.partenzaDateTime = partenzaDateTime;
		this.arrivoDateTime = arrivoDateTime;
		this.idUtente = idUtente;
		this.idMezzo = idMezzo;
	}
	
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPartenzaGps() {
		return partenzaGps;
	}
	public void setPartenzaGps(String partenzaGps) {
		this.partenzaGps = partenzaGps;
	}
	
	public String getArrivoGps() {
		return arrivoGps;
	}
	public void setArrivoGps(String arrivoGps) {
		this.arrivoGps = arrivoGps;
	}
	
	public String getPartenzaDateTime() {
		return partenzaDateTime;
	}
	public void setPartenzaDateTime(String partenzaDateTime) {
		this.partenzaDateTime = partenzaDateTime;
	}
	
	public String getArrivoDateTime() {
		return arrivoDateTime;
	}
	public void setArrivoDateTime(String arrivoDateTime) {
		this.arrivoDateTime = arrivoDateTime;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	
	public String toString() {
		StringBuilder builder = new StringBuilder("percorso [");
		builder.append("partenzaGps : ").append(this.partenzaGps)
			.append(" - arrivoGps : ").append(this.arrivoGps)
			.append(" - partenzaDateTime : ").append(this.partenzaDateTime)
			.append(" - arrivoDateTime : ").append(this.arrivoDateTime)
			.append(" - idMezzo : ").append(this.idMezzo)
			.append(" - idMezzo : ").append(this.idMezzo)
			.append("]");
		
		return builder.toString();
	}
	
}
