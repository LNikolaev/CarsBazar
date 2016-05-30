package bg.luben.cars.models;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "CARS")
public class Car {
	@Id
	@GeneratedValue
	@Column(unique = true, nullable = false)
	private Integer id;

	@Column(length = 30, nullable = false)
	private String producer;

	@Column(length = 45, nullable = false)
	private String[] model;

	@OneToMany(targetEntity = Listing.class, cascade = CascadeType.ALL, mappedBy = "car", fetch = FetchType.EAGER)
	private List<Listing> listings;

	public Car(Integer id, String producer, String[] model) {
		super();
		this.id = id;
		this.producer = producer;
		this.model = model;
	}

	public Car() {
		super();
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getProducer() {
		return producer;
	}

	public void setProducer(String producer) {
		this.producer = producer;
	}

	public String[] getModel() {
		return model;
	}

	public void setModel(String[] model) {
		this.model = model;
	}
}
