package bg.luben.cars.daos;

import java.text.ParseException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import bg.luben.cars.models.User;

@Repository
@Transactional
public class UserDao implements CRUDDao<User, Integer> {

	@PersistenceContext(unitName = "persistenceUnit")
	private EntityManager entityManager;
	private static final String SELECT_QUERY = "SELECT u FROM User u";
	
	@Override
	public User create(User user) throws ParseException {
		entityManager.persist(user);
		return user;
	}

	@Override
	public User find(Integer id) {
		return entityManager.find(User.class, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<User> findAll() {
		Query query = entityManager.createQuery(SELECT_QUERY);
		List<User> users = query.getResultList();
		return users;
	}

	@Override
	public User update(User user) {
		entityManager.merge(user);
		return user;
	}

	@Override
	public void delete(User user) {	
		entityManager.remove(user);
	}

	@Transactional
	@Override
	public void deleteById(Integer id) {
		entityManager.remove(find(id));
	}
}
