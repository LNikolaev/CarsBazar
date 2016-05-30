package bg.luben.cars.models;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "USERS")
public class User {

	@Id
	@SequenceGenerator(name = "seq", initialValue = 1, allocationSize = 100)
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "seq")
	@Column(unique = true, nullable = false)
	private Integer id;

	@Column(length = 60, unique = true, nullable = false)
	private String username;

	@Column(length = 120, nullable = false)
	private String password;

	@Column(length = 120, nullable = true)
	private String firstName;

	@Column(length = 120, nullable = true)
	private String lastName;

	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern = "dd/MM/YYYY")
	@Column(nullable = true)
	private Date registred;

	@Column(length = 45, nullable = true)
	private String salt;

	@Column(nullable = true, length = 1)
	private boolean enabled;

	@Column(length = 45, nullable = true)
	private String confirmationCode;

	@Column(nullable = true)
	private String email;

	@Column(nullable = true)
	private String phoneNumber;

	@Column(nullable = true)
	private String homePage;

	@OneToMany(targetEntity = Authority.class, cascade = CascadeType.ALL, mappedBy = "user", fetch = FetchType.EAGER)
	private List<Authority> authorities;

	@OneToMany(targetEntity = Listing.class, cascade = CascadeType.ALL, mappedBy = "user", fetch = FetchType.EAGER)
	private List<Listing> listings;

	public User() {
		super();
	}

	public User(Integer id, String username, String password, String firstName, String lastName, Date registred,
			String salt, boolean enabled, String confirmationCode, String email, String phoneNumber, String homePage) {
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

	public User(String username, String password, String firstName, String lastName, Date registred, String salt,
			boolean enabled, String confirmationCode) {
		this.username = username;
		this.password = password;
		this.firstName = firstName;
		this.lastName = lastName;
		this.registred = registred;
		this.salt = salt;
		this.enabled = enabled;
		this.confirmationCode = confirmationCode;
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

	public boolean getEnabled() {
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

	public List<Authority> getAuthorities() {
		return authorities;
	}

	public void setAuthorities(List<Authority> authorities) {
		this.authorities = authorities;
	}

}
