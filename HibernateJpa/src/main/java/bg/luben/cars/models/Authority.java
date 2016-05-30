package bg.luben.cars.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.security.core.GrantedAuthority;

@Entity
@Table(name = "AUTHORITIES")
public class Authority implements Serializable, GrantedAuthority {

	private static final long serialVersionUID = 8333255245456570089L;
	/**
	 * 
	 */

	@Id
	@GeneratedValue
	@Column(unique = true, nullable = false)
	private Integer id;

	@Column(length = 45, nullable = false)
	private String authority;

	@ManyToOne
	@JoinColumn(name = "userId", nullable = false)	
	private User user;

	public Authority() {
		super();
	}

	public Authority(Integer id, String authority) {
		super();
		this.id = id;
		this.authority = authority;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}
}
