package bg.luben.cars.forms;

public class ListingRegisterForm {

	private Integer id;
	private Integer cubicCapacity;
	private String fuelType;
	private String vehicleType;
	private Integer power;
	private Integer km;
	private String doorsNumber;
	private String colour;
	private String transmission;
	private Short year;
	private String carCondition;
	private Integer price;
	private String dateListing;
	private String features;
	private String moreInformation;

	public ListingRegisterForm(Integer id, Integer cubicCapacity, String fuelType, String vehicleType, Integer power,
			Integer km, String doorsNumber, String colour, String transmission, Short year, String carCondition,
			Integer price, String dateListing, String features, String moreInformation) {
		super();
		this.id = id;
		this.cubicCapacity = cubicCapacity;
		this.fuelType = fuelType;
		this.vehicleType = vehicleType;
		this.power = power;
		this.km = km;
		this.doorsNumber = doorsNumber;
		this.colour = colour;
		this.transmission = transmission;
		this.year = year;
		this.carCondition = carCondition;
		this.price = price;
		this.dateListing = dateListing;
		this.features = features;
		this.moreInformation = moreInformation;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public ListingRegisterForm() {

	}

	public Integer getCubicCapacity() {
		return cubicCapacity;
	}

	public void setCubicCapacity(Integer cubicCapacity) {
		this.cubicCapacity = cubicCapacity;
	}

	public String getFuelType() {
		return fuelType;
	}

	public void setFuelType(String fuelType) {
		this.fuelType = fuelType;
	}

	public String getVehicleType() {
		return vehicleType;
	}

	public void setVehicleType(String vehicleType) {
		this.vehicleType = vehicleType;
	}

	public Integer getPower() {
		return power;
	}

	public void setPower(Integer power) {
		this.power = power;
	}

	public Integer getKm() {
		return km;
	}

	public void setKm(Integer km) {
		this.km = km;
	}

	public String getDoorsNumber() {
		return doorsNumber;
	}

	public void setDoorsNumber(String doorsNumber) {
		this.doorsNumber = doorsNumber;
	}

	public String getColour() {
		return colour;
	}

	public void setColour(String colour) {
		this.colour = colour;
	}

	public String getTransmission() {
		return transmission;
	}

	public void setTransmission(String transmission) {
		this.transmission = transmission;
	}

	public Short getYear() {
		return year;
	}

	public void setYear(Short year) {
		this.year = year;
	}

	public String getCarCondition() {
		return carCondition;
	}

	public void setCarCondition(String carCondition) {
		this.carCondition = carCondition;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public String getDateListing() {
		return dateListing;
	}

	public void setDateListing(String dateListing) {
		this.dateListing = dateListing;
	}

	public String getFeatures() {
		return features;
	}

	public void setFeatures(String features) {
		this.features = features;
	}

	public String getMoreInformation() {
		return moreInformation;
	}

	public void setMoreInformation(String moreInformation) {
		this.moreInformation = moreInformation;
	}
}
