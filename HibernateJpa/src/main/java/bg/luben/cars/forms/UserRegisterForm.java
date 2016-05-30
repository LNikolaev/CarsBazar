package bg.luben.cars.forms;

import java.util.Date;

public class UserRegisterForm {

	private Integer id;
	private String username;
	private String password;
	private String firstName;
	private String lastName;
	private Date registred;
	private String salt;
	private boolean enabled;
	private String confirmationCode;
	private String email;
	private String phoneNumber;
	private String homePage;

	public UserRegisterForm() {
		super();

	}

	public UserRegisterForm(Integer id, String username, String password, String firstName, String lastName,
			Date registred, String salt, boolean enabled, String confirmationCode, String email, String phoneNumber, String homePage) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.firstName = firstName;
		this.lastName = lastName;
		this.registred = registred;
		this.salt = salt;
		this.enabled = enabled;
		this.confirmationCode = confirmationCode;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.homePage = homePage;
	}

	public Integer getId() {
		return id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Date getRegistred() {
		return registred;
	}

	public void setRegistred(Date registred) {
		this.registred = registred;
	}

	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public String getConfirmationCode() {
		return confirmationCode;
	}

	public void setConfirmationCode(String confirmationCode) {
		this.confirmationCode = confirmationCode;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getHomePage() {
		return homePage;
	}

	public void setHomePage(String homePage) {
		this.homePage = homePage;
	}
}
