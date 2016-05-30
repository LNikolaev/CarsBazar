package bg.luben.cars.forms;

public class CarRegisterForm {

	private Integer id;
	private String producer;
	private String[] model;

	public CarRegisterForm() {
		super();
	}

	public CarRegisterForm(Integer id, String producer, String[] model) {
		super();
		this.id = id;
		this.producer = producer;
		this.model = model;

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
