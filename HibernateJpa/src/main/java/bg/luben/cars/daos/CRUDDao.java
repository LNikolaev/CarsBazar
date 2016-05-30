package bg.luben.cars.daos;

import java.text.ParseException;
import java.util.List;

public interface CRUDDao<T, ID> {

	public T create(T t) throws ParseException;

	public T find(ID id);

	public List<T> findAll();

	public T update(T t);

	public void delete(T t);
	
	public void deleteById(ID id);
}
