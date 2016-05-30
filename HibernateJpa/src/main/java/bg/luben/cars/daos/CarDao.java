package bg.luben.cars.daos;

import java.text.ParseException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import bg.luben.cars.models.Car;

@Repository
public class CarDao implements CRUDDao<Car, Integer>{

	@PersistenceContext(unitName = "persistenceUnit")
	private EntityManager entityManager;
	private static final String SELECT_QUERY = "SELECT c FROM Car c";
	
	@Override
	public Car create(Car car) throws ParseException {
		entityManager.persist(car);
		return car;
	}

	@Override
	public Car find(Integer id) {		
		return entityManager.find(Car.class, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Car> findAll() {
		Query query = entityManager.createQuery(SELECT_QUERY);
		List<Car> cars = query.getResultList();
		return cars;
	}

	@Override
	public Car update(Car t) {
		entityManager.merge(t);
		return t;
	}

	@Override
	public void delete(Car car) {		
		entityManager.remove(car);		
	}

	@Override
	public void deleteById(Integer id) {
		entityManager.remove(find(id));		
	}
}
