package bg.luben.cars.forms;

public class CarRegisterForm {

	private Integer id;
	private String producer;
	private String model;
	private String carType;

	public CarRegisterForm() {
		super();
	}

	public CarRegisterForm(Integer id, String producer, String model, String carType) {
		super();
		this.id = id;
		this.producer = producer;
		this.model = model;
		this.carType = carType;
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

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getCarType() {
		return carType;
	}

	public void setCarType(String carType) {
		this.carType = carType;
	}

}
