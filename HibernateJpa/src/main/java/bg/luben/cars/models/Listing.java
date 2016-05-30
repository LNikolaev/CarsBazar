package bg.luben.cars.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "LISTINGS")
public class Listing {

	@Id
	@GeneratedValue
	@Column(unique = true, nullable = false)
	private Integer id;

	@Column(nullable = true)
	private Integer cubicCapacity;

	@Column(length = 25, nullable = true)
	private String fuelType;

	@Column(length = 50, nullable = true)
	private String vehicleType;

	@Column(nullable = true)
	private Integer power;

	@Column(nullable = true)
	private Integer km;

	@Column(nullable = true)
	private String doorsNumber;

	@Column(length = 45, nullable = true)
	private String colour;

	@Column(length = 45, nullable = true)
	private String transmission;

	@Column(nullable = true)
	@DateTimeFormat(pattern = "YYYY")
	private Short year;

	@Column(length = 20, nullable = true)
	private String carCondition;

	@Column(nullable = true)
	private Integer price;

	@Column(nullable = true)
	private String dateListing;

	@Column(nullable = true)
	private String features;

	@Column(length = 1800, nullable = true)
	private String moreInformation;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "userId", nullable = true)
	private User user;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "carId", nullable = true)
	private Car car;

	public Listing() {
		super();
	}

	public Listing(Integer id, Integer cubicCapacity, String fuelType, String vehicleType, Integer power, Integer km,
			String doorsNumber, String colour, Short year, String carCondition, Integer price, String dateListing,
			String transmission, String features, String moreInformation) {
		super();
		this.id = id;
		this.cubicCapacity = cubicCapacity;
		this.fuelType = fuelType;
		this.vehicleType = vehicleType;
		this.power = power;
		this.km = km;
		this.doorsNumber = doorsNumber;
		this.colour = colour;
		this.year = year;
		this.carCondition = carCondition;
		this.price = price;
		this.dateListing = dateListing;
		this.transmission = transmission;
		this.features = features;
		this.moreInformation = moreInformation;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
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

	public Car getCar() {
		return car;
	}

	public void setCar(Car car) {
		this.car = car;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getTransmission() {
		return transmission;
	}

	public void setTransmission(String transmission) {
		this.transmission = transmission;
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
